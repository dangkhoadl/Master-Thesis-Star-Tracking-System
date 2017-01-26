


function [I, C, starID, Si_FOV,Sc_FOV,star_pos]=quaternion (RA,DEC,angle)

FOV=20;
img_height=300;
img_width=300;
pixel_size= 7e-3;
f= (img_height)*pixel_size /2 / tand(FOV/2);

%% Read star coordinates in Earth reference frame from star catalog
file_path='C:\Documents and Settings\z060021\Desktop\star_catalog_analys\SKY2000_Magnitude5a.txt';
%file_path='C:\Documents and Settings\z060021\Desktop\star_catalog_analys\SKY2000_Magnitude5a.txt';
[SKYMAP_No,star_RA,star_DEC,star_MAG]= textread(file_path,'%d %f %f %f');

I= zeros(img_height, img_width);

% Define rotation axis of camera
%RA=90;
%DEC=45;
% Connvert RA,DEC into direction vector:
axis =[cosd(DEC)* cosd(RA) cosd(DEC)* sind(RA)  sind(DEC)];

%for angle=1:0.1:90
%angle =10;
clc;


%Quaternion
x=axis(1)* sind(angle/2);
y=axis(2)* sind(angle/2);
z=axis(3)* sind(angle/2);
w=cosd(angle/2);
q=[x;y;z;x];
% Quaternion conjugate
xc=-x;
yc=-y;
zc=-z;
wc=w;
qc=[xc;yc;zc;wc];

 %Quaternion:
 q0=w;
 q1=x;
 q2=y;
 q3=z;
 
 M=[ (2*q0^2-1+ 2*q1^2) (2*q1*q2-2*q0*q3)  (2*q1*q3 + 2*q0*q2);
     (2*q1*q2 + 2*q0*q3) (2*q0^2-1+2*q2^2) (2*q2*q3 - 2*q0*q1);
     (2*q1*q3 - 2*q0*q2) (2*q2*q3+2*q0*q1) (2*q0^2-1+2*q3^2)];
 %Vector
i1 =[1 ;0 ;0];
i2 = [0;1;0];
i3= [0;0;1];
%Rotated vector
%vector1 = q * vector * qc;  
 c1=M*i1;
 c2=M*i2;
 c3=M*i3;
 C=[c1';c2';c3'];
 

% Display
display(RA);
display(DEC);
display(angle);
% Si is coordiante of star in Earth reference frame, 
% the 3 column are X, Y,and Z
Si = zeros(length(star_RA), 3);
for i=1: length(star_RA)
    % Convert RA, and DEC into ECI unit vector
    ECI_vector =[cosd(star_DEC(i))* cosd(star_RA(i)) cosd(star_DEC(i))* sind(star_RA(i))  sind(star_DEC(i))];
    Si(i,:)= ECI_vector;
end

% Sc = zeros(length(star_RA), 3);
% %Rotate star coordinates from Earth to Camera reference frame
% %Sc is star coordinate in Camera reference 
% for i=1: length(star_RA)
%     vector = R_earth_to_camera * Si(i,:)'  ;
%     Sc(i,:)= vector';
% end


%% Find stars within FOV of camera
Si_FOV=[];
starID=[];
star_matrix = [];% This star matrix store all stars that is within FOV of camera[SKYMAP_No  Xc  Yc  Zc]
for i=1: length(star_RA)
    if dot(Si(i,:), c3') > cosd(FOV/2)
        Si_FOV= [Si_FOV ; Si(i,:)];
        starID= [starID; SKYMAP_No(i)];
        star_matrix = [star_matrix ; SKYMAP_No(i) star_RA(i) star_DEC(i)  star_MAG(i)];
    end
end

%% Project star into camera frame:
Sc_FOV =[];
for i=1: size(star_matrix,1)
    Sc_FOV= [Sc_FOV; dot(Si_FOV(i,:),c1') dot(Si_FOV(i,:), c2') dot(Si_FOV(i,:), c3')];
end

x=[];
y=[];
% Project stars into image frame
for i=1: size(star_matrix, 1)
    x= [x; f* Sc_FOV(i,1)/Sc_FOV(i,3)/pixel_size  + img_height/2];
    y= [y; f* Sc_FOV(i,2)/Sc_FOV(i,3)/pixel_size + img_width/2];
end

star_matrix= [star_matrix Si_FOV Sc_FOV x y];

%% Create image and add stars into image
%star_coordinate_X= round(x);
%star_coordinate_Y= round(y);

I= zeros(img_height, img_width);

% for i=1:size(star_matrix,1);
%     if (star_coordinate_X(i)>6) && (star_coordinate_Y(i)>6)
%     I(star_coordinate_X(i)-3:star_coordinate_X(i)+3, star_coordinate_Y(i)-3:star_coordinate_Y(i)+3)=1;
%     end
% end

%imshow(I);
%% Create image and add stars into image
star_coordinate_Y= round(x);
star_coordinate_X= round(y);
star_pos=[star_coordinate_X star_coordinate_Y];
%I= zeros(img_height, img_width);

for i=1:size(star_matrix,1);
    PSF_im = PSF(star_matrix(i,4));
    centre = (size(PSF_im,1)-1)/2;
    if (star_coordinate_X(i)>centre) && (star_coordinate_Y(i)>centre)
    I(star_coordinate_X(i)-centre:star_coordinate_X(i)+centre, star_coordinate_Y(i)-centre:star_coordinate_Y(i)+centre)=PSF_im;
    end
end

%imshow(I);

%Create noise image N
I= imnoise(I, 'gaussian',0,0.021);
%figure(1);
%imshow(I);

%end