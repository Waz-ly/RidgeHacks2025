import os

def process_file(file_path):
    # Read the uploaded file from disk
    with open(file_path, 'r', encoding='utf-8') as f:
        content = f.read()

    # Process it (example: uppercase)
    processed_content = content.upper()

    # Save processed file to temp location
    processed_file_path = file_path.replace('uploads', 'processed')
    os.makedirs(os.path.dirname(processed_file_path), exist_ok=True)
    
    with open(processed_file_path, 'w', encoding='utf-8') as f:
        f.write(processed_content)
    
    return processed_file_path
