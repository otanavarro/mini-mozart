import math
def hertz_to_samples(hertz):
    numSamples = round(8000 / hertz)
    print(numSamples)
    def func(x):
        return math.floor(1000000000 * math.sin(2 * math.pi * x/numSamples)) + 1
    #print("goal frequency: " + str(hertz))
    #print("real frequency: " + str(8000//numSamples))
   # print("percent error: " + str(round((hertz - 8000 // numSamples)/hertz * 100, 1)) + "%")
    return [func(x) for x in range(numSamples)][1:] + [0]


white_key_frequencies = [131, 147, 165, 175, 196, 220, \
                        246, 261, 293, 329, 349, 391, 440, 493, 523, 600]

black_key_frequencies = [139, 156, 185, 208, 233, 277, 311, 370, 415, 466, 554]

all_frequencies = white_key_frequencies + black_key_frequencies

file = open("frequencies.txt", "w")

for i in range(len(all_frequencies)):
    file.write("Note ID " + str(i) + ":\n")
    samples = hertz_to_samples(all_frequencies[i])
    str_samples = [str(x) + "\n" for x in samples]
    file.writelines(str_samples)

file.close()


