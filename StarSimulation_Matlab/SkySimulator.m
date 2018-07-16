
%% Testing program for proposed algorithm
clear all;
clc;

%% Initialize camera parameter
img_height = 512;
img_width = 512;
pixelsize= 7e-3;
FOV =20;
% sensor magnitude threshold 5M

%% Initialize camera attitude 
RA=15;
DEC=45;
angle=450;

%% Testing variable
test = 100;

% Number of generated stars
star_generated=zeros(test,test);

%% Testing 
for RA = 1 :1: 360 
    for DEC = -89:1:89
        % Generate sky image at predetermined attitude
        cd('D:\\Dropbox\DangKhoa\\CEE_Cache\\GitHub\\StarTrackingProject\\StarSimulation_Matlab');
        C = Convert_Axis_2_AttitudeMatrix(RA,DEC,angle);
        [ R_camera_to_earth,star_matrix,I]= Plot_sky_images( C, FOV, img_height, img_width, pixelsize);
        %figure(1);
        %imshow(I);
        %Transpose I
        I = I';
        %convert I from float to 8bit(0-255)
        for i = 1:1: img_height
           for j = 1:1: img_width
               temp = I(i,j);
               I(i,j) =  round(temp * 255);
           end
        end
        baseFileName = sprintf('.\\TestPattern\\IMG_%d_%d.bin',RA,DEC+89);
        dlmwrite(baseFileName,I,'delimiter',' ');
        % Store number of star generated every test
        star_generated(RA,DEC+91) = size(star_matrix,1); 
    end
 end
