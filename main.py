from Rhythm import Rhythm
from MusicManager import MusicManager
from Notes import Notes, YIN
from setup import setup

def main(input_folder, file_name, output_folder, plot):
    print()
    setup(input_folder)

    beat_tracker = Rhythm(input_folder, file_name, fmax=2000, plot=False)
    music_reader = Notes(beat_tracker.get_spectrogram(), beat_tracker.get_info(), beat_tracker.get_beats(), plot)

    f_gram = YIN().get_f_gram(
        beat_tracker.get_audio(), beat_tracker.windowLength, beat_tracker.interFrameTime, beat_tracker.sampleRate, beat_tracker.tempo,
        fmin=60, fmax=beat_tracker.fmax, plot=plot
    )
    yin_notes = YIN().get_notes(f_gram, beat_tracker.get_beats(), beat_tracker.interFrameTime, beat_tracker.tempo, plot=plot)
    notes = music_reader.get_notes()

    tempo = int(beat_tracker.get_info()[3])

    music_manager = MusicManager(output_folder, file_name, notes, yin_notes, tempo)
    music_manager.write_music()
    music_manager.play_music(beat_tracker.sampleRate)

if __name__ == "__main__":
    main('input', 'bach_prelude', 'output', True)