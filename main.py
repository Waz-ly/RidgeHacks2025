from Rhythm import Rhythm
from MusicManager import MusicManager
from MusicReader import MusicReader

def main():
    beat_tracker = Rhythm("twinkle")
    music_reader = MusicReader(beat_tracker.get_spectrogram(), beat_tracker.get_info(), beat_tracker.get_beats())
    notes = music_reader.get_notes()

    tempo = int(beat_tracker.get_info()[3])
    key = r"c \major"

    music_manager = MusicManager(notes, tempo, key)
    music_manager.write_music()
    music_manager.play_music(44000)