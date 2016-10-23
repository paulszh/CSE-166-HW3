function [result] = filterInFrequencyDomain( kernel, image)

    dft_image = double(image);
    dft_kernel = double(kernel);

    dim_image = size(dft_image);
    dim_kernel = size(dft_kernel);
    image_width = dim_image(2);
    image_height = dim_image(1);
    kernel_width = dim_kernel(2);
    kernel_height = dim_kernel(1);

    P = image_height + kernel_height - 1;
    Q = image_width + kernel_width - 1;

    padImage = double(zeros(P,Q));
    padKernel = double(zeros(P,Q));


    padImage(1: image_height, 1:image_width)=image;
    padKernel(1 : kernel_height, 1:kernel_width)= kernel;
    dft_padImage = fft2(padImage);
    dft_padKernel = fft2(padKernel);
    
    filteredImage = dft_padImage .* dft_padKernel;
    crop = ifft2(filteredImage);
    resize = crop(2:P-1,2:Q-1);

    
   % result = double(zeros(P-2,Q-2));
    result = image - uint8(resize);
    

end

