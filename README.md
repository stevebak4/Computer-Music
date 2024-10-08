# Sound Envelope Extraction (ADSR)

## Basic Contents

- **Computer music - Input Team.pdf**  
  Slides for presenting the project.

- **Extracting ADSR.pdf**  
  A technical document explaining the process of extracting ADSR envelopes from audio signals, including the algorithmic details and implementation.

- **input_team.pd**  
  A Pure Data patch file used to process and analyze the incoming sound data, implementing the core algorithms for envelope extraction and frequency analysis.

- **pd_script.sh**  
  A shell script that generates a list of .wav files to be analyzed by the Pure Data patches. This script automates the process of preparing audio files for analysis.

- **record_analyse.pd**  
  A Pure Data patch responsible for recording sound inputs (from .wav files or live microphone). This is a sub-patch called from input_team.pd.

- **sounds.txt**  
  A text file that lists the sound samples used in the project. These .wav files serve as inputs for the analysis and processing in Pure Data.

- **characteristics.txt**  
  A text file containing extracted sound characteristics, such as ADSR envelope values
 



## 1. Introduction
This project focuses on extracting sound envelopes from pre-recorder or live sound samples. A sound envelope consists of four stages: **Attack**, **Decay**, **Sustain**, and **Release** (ADSR). The input for the project is captured either from .wav files or live through a microphone, depending on a predefined decibel threshold that is dynamically adjusted in real-time based on amplitude variation. 

The system processes each sample to determine its envelope characteristics and average amplitude. The results are presented as envelope values in milliseconds.

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
