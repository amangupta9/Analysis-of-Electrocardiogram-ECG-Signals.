% for clearing the workspace    
clear;
    


% loading sample 1
    plotname = 'Sample 1';
    load 100m;
    % taking fourier transform of sample 
    fresult=fft(val);
    % plotting input waveform in time domain 
    figure('Name','Abnormal waveform results.');
    subplot(2,2,1)
    plot(val), xlabel('Time'), ylabel('ECG Voltage'), title('Input waveform in time domain...')
    % plotting input waveform in frequency domain 
    subplot(2,2,2)
    plot(fresult), xlabel('Frequency'), ylabel('ECG Voltage'), title('Input waveform in frequency domain...')
    % filtering the low and high frequency part
    fresult(  1 : round (  length (fresult) *5/1000  )  ) = 0;
    fresult(end - round(length(fresult)*5/1000) : end)=0;
    corrected=real(ifft(fresult));
    % plotting filtered waveform in time domain 
    subplot(2,2,3)
    plot(corrected), xlabel('Time'), ylabel('ECG Voltage'), title('Filtered waveform in time domain...')
    % plotting filtered waveform in frequency domain 
    subplot(2,2,4)
    plot(fresult), xlabel('Frequency'), ylabel('ECG Voltage'), title('Filtered waveform in frequency domain...')
  
   
    
    
% loading sample 2
    plotname = 'Sample 2';
    load ecgdemodata1;
    % taking fourier transform of sample 
    fresult=fft(ecg);
    % plotting input waveform in time domain 
    figure('Name','Normal waveform results.');
    subplot(2,2,1)
    plot(ecg), xlabel('Time'), ylabel('ECG Voltage'), title('Input waveform in time domain...')
    % plotting input waveform in frequency domain 
    subplot(2,2,2)
    plot(fresult), xlabel('Frequency'), ylabel('ECG Voltage'), title('Input waveform in frequency domain...')
    % filtering the low and high frequency part
    fresult(  1 : round (  length (fresult) *5/1000  )  ) = 0;
    fresult(end - round(length(fresult)*5/1000) : end)=0;
    corrected=real(ifft(fresult));
    % plotting filtered waveform in time domain 
    subplot(2,2,3)
    plot(corrected), xlabel('Time'), ylabel('ECG Voltage'), title('Filtered waveform in time domain...')
    % plotting input waveform in frequency domain 
    subplot(2,2,4)
    plot(fresult), xlabel('Frequency'), ylabel('ECG Voltage'), title('Filtered waveform in frequency domain...')
    hold all