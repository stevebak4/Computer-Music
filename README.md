# Sound Envelope Extraction and Frequency Categorization

## 1. Introduction
This project focuses on extracting sound envelopes and categorizing dominant frequencies within specific bands. A sound envelope consists of four stages: **Attack**, **Decay**, **Sustain**, and **Release** (ADSR). The input for the project is captured either from .wav files or live through a microphone, depending on a predefined decibel threshold that is dynamically adjusted in real-time based on amplitude variation. 

Using **Fourier Analysis** and algorithmic techniques, the system processes each sample to determine its envelope characteristics, average amplitude, and dominant frequencies in selected bands. The results are presented as envelope values in milliseconds and categorized frequency data.

## 2. Tools

### a. Pure Data (Pd)
The core functionality of the project was built using **Pure Data (Pd)**, a visual programming language for multimedia. Pd uses objects connected via patch cords to perform tasks like **FFT transformations**, audio processing, and more. In this project, Pure Data manages the sound envelope extraction and frequency analysis through algorithmic visual patching.

### b. Shell Scripting
A shell script is utilized to generate a text file containing the list of .wav files for analysis by the Pure Data patch. Shell scripts are common in Unix environments for automating tasks like file manipulation and program execution.

## 3. Terminology Explained

### 3.1 ADSR Envelope
- **Attack Time:** The time taken for a sound to reach its peak amplitude after being triggered.
- **Decay Time:** The time it takes for the sound to fall from its peak to the sustain level.
- **Sustain:** The stable amplitude level maintained as long as the sound is active.
- **Release Time:** The time taken for the sound to fade after the sustain ends.

### 3.2 Decibel (Db) Threshold
The threshold ensures that only sounds above a certain decibel level are recorded for analysis. The threshold is updated dynamically using the standard deviation of current and previous amplitude values.

### 3.3 Fourier Transform
A **Fourier Transform** decomposes a signal into its component frequencies. In this project, the **Fast Fourier Transform (FFT)** is used to categorize the dominant frequencies in different bands.

## 4. Explanation

### 4.1 ADSR Envelope Extraction
- **Attack:** The time until the first peak amplitude is reached.
- **Decay:** The time for amplitude to drop from the peak to a stable level.
- **Sustain:** The duration the amplitude remains stable.
- **Release:** The time from the end of sustain to the sound's complete fade-out.

### 4.2 Db Threshold
The threshold is configured based on the predefined level set by the user and is adjusted using the standard deviation of the current amplitude.

### 4.3 Frequency Analysis
Dominant frequencies are categorized into bands using **Fourier Analysis**. Each band’s dominant frequency is extracted based on the signal’s frequency content.

## 5. Conclusion
This project effectively extracts sound envelope characteristics (ADSR) and frequency data from audio samples. The accuracy of these calculations may depend on the signal's threshold settings and duration. Smaller sound samples yield more precise envelope extraction.

## 6. Sources
- [Pure Data Documentation](https://puredata.info/)
- [Envelope Parameters in Synthesis](https://theproaudiofiles.com/synthesis-101-envelope-parameters-uses/)
- [Standard Deviation Explained](https://www.investopedia.com/terms/s/standarddeviation.asp)
- [Fourier Transform on Wikipedia](https://en.wikipedia.org/wiki/Fourier_transform)
