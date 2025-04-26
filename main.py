from Rhythm import Rhythm
from MusicManager import MusicManager

if __name__ == "__main__":
    notes = [
        [293, 4],
        [293, 4],
        [440, 4],
        [440, 4],
        [493, 4],
        [493, 4],
        [440, 2]
    ]
    tempo = 60
    key = r"g \major"

    music_manager = MusicManager(notes, tempo, key)
    music_manager.write_music()
    music_manager.play_music(44000)