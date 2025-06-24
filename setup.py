import os
import ffmpeg

def setup(folder: str) -> None:
    if not os.path.isdir(folder + '/wave_files'):
        os.mkdir(folder + '/wave_files')

    for root, dirs, files in os.walk(folder):
        for file in files:
            path = folder + '/' + file
            newPath = folder + '/' + file[:-4] + '.wav'
            if not file.startswith('.') and not os.path.isfile(newPath):
                try:
                    ffmpeg.input(path).output(newPath, loglevel='quiet', preset='ultrafast').run(overwrite_output=1)
                    os.remove(path)
                except ffmpeg.Error as e:
                    print(f"error converting file {path}: {e}")