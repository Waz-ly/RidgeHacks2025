from Rhythm import Rhythm
from MusicManager import MusicManager
from MusicReader import MusicReader

if __name__ == "__main__":
    beat_tracker = Rhythm()
    music_reader = MusicReader(beat_tracker.get_spectrogram(), beat_tracker.get_info(), beat_tracker.get_beats())
    notes = music_reader.get_notes()

    # notes = [
    #     [293, 4],
    #     [293, 4],
    #     [440, 4],
    #     [440, 4],
    #     [493, 4],
    #     [493, 4],
    #     [440, 2]
    # ]

    tempo = int(beat_tracker.get_info()[3])
    key = r"c \major"

    music_manager = MusicManager(notes, tempo, key)
    music_manager.write_music()
    music_manager.play_music(44000)