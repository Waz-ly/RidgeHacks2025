import os
from django.shortcuts import render
from django.http import FileResponse
from django.core.files.storage import FileSystemStorage
from django.conf import settings
from .forms import UploadFileForm
from .processing import process_file

def upload_file(request):
    if request.method == 'POST':
        form = UploadFileForm(request.POST, request.FILES)
        if form.is_valid():
            uploaded_file = request.FILES['file']
            
            # Save uploaded file temporarily
            fs = FileSystemStorage(location=os.path.join(settings.MEDIA_ROOT, 'uploads'))
            filename = fs.save(uploaded_file.name, uploaded_file)
            uploaded_file_path = fs.path(filename)
            
            # Process the saved file
            output_file_path = process_file(uploaded_file_path)

            # Create file response
            response = FileResponse(open(output_file_path, 'rb'), as_attachment=True, filename='processed_file.txt')

            # Define a cleanup function
            def cleanup():
                try:
                    os.remove(uploaded_file_path)
                    os.remove(output_file_path)
                except Exception as e:
                    print(f"Error cleaning up files: {e}")

            # Attach cleanup function to run when response closes
            old_close = response.close
            def custom_close():
                try:
                    cleanup()
                finally:
                    old_close()
            response.close = custom_close

            return response
    else:
        form = UploadFileForm()
    return render(request, 'upload.html', {'form': form})