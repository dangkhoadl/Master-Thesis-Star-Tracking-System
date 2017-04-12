%% This script is to plot stars images on sky
%--------------------------------------------------------------------------
%--------------------------------------------------------------------------

function [ R_camera_to_earth, star_matrix, I]= Plot_sky_images(C, FOV, img_height, img_width, pixel_size)

f= (img_height)*pixel_size /2 / tand(FOV/2);

%% Rotation matrix from  Earth to camera reference frame
R_camera_to_earth = C;

% i1=[1 0 0]';
% i2=[0 1 0]';
% i3=[0 0 1]';
% 
% c1= R_earth_to_camera * i1;
% c2= R_earth_to_camera * i2;
% c3= R_earth_to_camera * i3;
% 
% c=[c1 c2 c3];

%R_camera_to_earth = [c1' ;c2'; c3'];

c1= R_camera_to_earth(1,:);
c2= R_camera_to_earth(2,:);
c3= R_camera_to_earth(3,:);

%% Read star coordinates in Earth reference frame from star catalog
file_path='D:\\Dropbox\\DangKhoa\\CEE_Cache\\StarTrackingProject\\StarSimulation_Matlab\\SKY2000_Magnitude5_doublestar.txt';
[SKYMAP_No,star_RA,star_DEC,star_MAG]= textread(file_path,'%d %f %f %f');

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
star_matrix = [];
for i=1: length(star_RA)
    if dot(Si(i,:), c3') > cosd(FOV/2)
        Si_FOV= [Si_FOV ; Si(i,:)];
        star_matrix = [star_matrix ; SKYMAP_No(i) star_RA(i) star_DEC(i)  star_MAG(i)];
    end
end

% Check if there are stars in frame
if (size(star_matrix,1)==0)
    I=0;
    return;
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
star_coordinate_X= round(x);
star_coordinate_Y= round(y);

I= zeros(img_height, img_width);

for i=1:size(star_matrix,1);
    if (star_coordinate_X(i)>6) && (star_coordinate_Y(i)>6)
    I(star_coordinate_X(i)-3:star_coordinate_X(i)+3, star_coordinate_Y(i)-3:star_coordinate_Y(i)+3)=1;
    end
end

%imshow(I);
% Create image and add stars into image
% Add random stars into image
no_ran_star=3;
ran_star_coor_X= random('norm', img_height/2, sqrt(img_height), 1,no_ran_star);
ran_star_coor_Y= random('norm', img_height/2, sqrt(img_height), 1,no_ran_star);
star_coordinate_X=[star_coordinate_X; ran_star_coor_X'];
star_coordinate_Y=[star_coordinate_Y; ran_star_coor_Y'];

variance=0;
Rx=random('norm', 0, sqrt(variance), 1,size(star_matrix, 1));
Ry=random('norm', 0, sqrt(variance), 1,size(star_matrix, 1));
star_coordinate_X= round(x+Rx');
star_coordinate_Y= round(y+Ry');

I= zeros(img_height, img_width);

for i=1:size(star_matrix,1);
    PSF_im = PSF(star_matrix(i,4));
    centre = (size(PSF_im,1)-1)/2;
    if (star_coordinate_X(i)>centre) && (star_coordinate_Y(i)>centre)
    I(star_coordinate_X(i)-centre:star_coordinate_X(i)+centre, star_coordinate_Y(i)-centre:star_coordinate_Y(i)+centre)=PSF_im;
    end
end


%imshow(I);

%Create noise image N
I= imnoise(I, 'gaussian',0,0.0021);

%imview(I);
