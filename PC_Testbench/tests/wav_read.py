from scipy.io import wavfile
from matplotlib import pyplot as plt
import numpy as np

samplingrate, data = wavfile.read("../test_data/Ensoniq_Dope_77.wav")
print(np.shape(data))

data_read = np.loadtxt("../build/Ensoniq_Dope_77.csv", dtype=int)
print(np.shape(data))

plt.figure()
plt.plot(data[..., 0])

plt.figure()
plt.plot(data_read)
plt.show()