from Rhythm import Rhythm
from MusicManager import MusicManager
from MusicReader import MusicReader

def main(input_folder, file_name, output_folder):
    beat_tracker = Rhythm(input_folder, file_name[:-4])
    music_reader = MusicReader(beat_tracker.get_spectrogram(), beat_tracker.get_info(), beat_tracker.get_beats())
    notes = music_reader.get_notes()

    tempo = int(beat_tracker.get_info()[3])
    key = r"c \major"

    music_manager = MusicManager(output_folder, notes, tempo, key)
    music_manager.write_music()
    music_manager.play_music(44000)

if __name__ == "__main__":
    # Example usage when you run from terminal
    main('convertFiles', 'twinkle.MOV', 'music')