
function PSF_im = PSF(magnitude)
if magnitude <= 1    
    centre=3;
    sigma=sqrt(5);
elseif magnitude<=2
    centre=3;
    sigma=sqrt(4);
elseif magnitude<=3
    centre=3;
    sigma=sqrt(3);
elseif magnitude<=4
    centre=3;
    sigma=sqrt(2);
elseif magnitude<=5
    centre=3;
    sigma=sqrt(2);
end
    
A=1;
height= 2*(centre-1)+1;
width= 2* (centre-1)+1;
PSF_im=zeros(height);

for x=1:height
    for y=1:width
        PSF_im(x,y)=  A *exp((-1)*((x-centre)^2+(y-centre)^2)/(2*sigma^2));
    end
end
%PSF_im= PSF_im./255;
%imview(PSF_im);