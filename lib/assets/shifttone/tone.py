from pydub import AudioSegment
import numpy as np
from numpy.random import uniform
filename = 'in.wav'
sound = AudioSegment.from_file(filename, format=filename[-3:])

octaves = 0.5#octve
#octaves = -0.25#quarte
tones=["f","f#","g","g#","a","a#","b","c","c#","d","d#","e","f","f#","g","g#","a","a#","b","c","c#","d","d#","e","f"]
counter=0
for octaves in np.linspace(-1,1,25):
    print(octaves)
    new_sample_rate = int(sound.frame_rate * (2.0 ** octaves))
    hipitch_sound = sound._spawn(sound.raw_data, overrides={'frame_rate': new_sample_rate})
    hipitch_sound = hipitch_sound.set_frame_rate(44100)
#export / save pitch changed sound
    mynote=tones[counter]
    hipitch_sound.export(f"octave_{mynote}_{octaves}.wav", format="wav")
    counter+=1
