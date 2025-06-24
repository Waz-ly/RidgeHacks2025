from Rhythm import Rhythm
from MusicManager import MusicManager
from MusicReader import MusicReader
from setup import setup

def main(input_folder, file_name, output_folder):
    print()
    setup(input_folder)

    beat_tracker = Rhythm(input_folder, file_name)
    music_reader = MusicReader(beat_tracker.get_spectrogram(), beat_tracker.get_info(), beat_tracker.get_beats())
    notes = music_reader.get_notes()

    tempo = int(beat_tracker.get_info()[3])

    music_manager = MusicManager(output_folder, file_name, notes, tempo)
    music_manager.write_music()
    music_manager.play_music(44000)

if __name__ == "__main__":
    main('input', 'bach_prelude', 'output')