image=imread('moon.tif');

kernel = [1 1 1; 1 -8 1; 1 1 1];

output = filterInFrequencyDomain(kernel,image);
figure,imshow(output);
%Apply imfilter in spatial domain
I = imfilter(image,kernel);
B = image-I;
figure,imshow(B)