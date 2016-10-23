A=imread('cameraman.tif');
figure,imshow(A);
title('Image A - original image cameraman');

%convert the image to double before doing the discrete fourier transform
dftImageA = fft2(double(A));

%Magnitude
abs_dftImageA = abs(fftshift(dftImageA));
min(min(abs_dftImageA));
max(max(abs_dftImageA));
% log of F|u,v|
log_dftImageA = log(abs_dftImageA);


phase_dftImageA = angle(fftshift(dftImageA));

figure, imshow(abs_dftImageA,[24,100000]), colormap gray,title('Image A FFT2 Magnitude with display range');
figure, imshow(log_dftImageA,[]), colormap gray,title('Image A FFT2 Magnitude with logarithmic transformation');
figure, imshow(phase_dftImageA,[-pi pi]), colormap gray, title('Image A FFT2 Phase');

G = abs_dftImageA.*exp(1i*phase_dftImageA);

g = ifft(G);
%write image 
imwrite(real(g), 'cameraman_dft_ift.png');
