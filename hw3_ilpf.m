image = imread('testpat1.png');
imshow(image);

[height, width] = size(image);
F = fft2(double(image));

u = 0:(height-1);
v = 0:(width-1);

idx = find(u>height/2);
u(idx)=u(idx)-height;
idy=find(v>width/2);
v(idy)=v(idy)-width;
[V,U]=meshgrid(v,u);
D=sqrt(U.^2+V.^2);

%H = double(D<=50);
%H = double(D<=10);
H = double(D<=1000);
G = H.*F;
g = real(ifft2(double(G)));
figure,imshow(g,[]);
