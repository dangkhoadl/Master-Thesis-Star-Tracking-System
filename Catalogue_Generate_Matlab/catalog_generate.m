%% Grid algorithm
% This progarm is to generate star pattern for PMD algorithm

clear all;
clc;
%% Initialize camera parameter
img_height = 512;
img_width = 512;
pixelsize= 7e-3;
FOV = 20;
angle = 45;
Max_N = 15;
g=8;
%% Read star coordinates in Earth reference frame from star catalog
file_path='D:\Dropbox\DangKhoa\CEE_Cache\StarTracker\Catalogue_Generate_Matlab\SKY2000_Magnitude5_doublestar.txt';
[SKYMAP_No,star_RA,star_DEC,star_MAG]= textread(file_path,'%d %f %f %f');

% Si is coordiante of star in Earth reference frame, 
% the 3 column are X, Y,and Z
no_stars=length(star_RA);
P_d = zeros(no_stars, 2);
catalog = zeros(no_stars, 4);
catalog_ID = zeros(no_stars, 4);
for i=1: no_stars
    
    RA= star_RA(i);
    DEC= star_DEC(i);
    
    %% Generate sky image at predetermined attitude
    % The refernce star will be at the center of camera image
    %% Find all the neighbor stars to reference stars within the half FOV
    cd('D:\Dropbox\DangKhoa\CEE_Cache\StarTracker\Catalogue_Generate_Matlab');
    C= Convert_Axis_2_AttitudeMatrix(RA,DEC,angle);
    [R_camera_to_earth,star_matrix]= Find_neighbor_star_half_FOV(C,FOV, img_height, img_width, pixelsize);
    P_d = star_matrix(:,[11 12]);% Pixel distance
    %reference star
    no_stars_image=size(star_matrix,1);
    starID=star_matrix(1:no_stars_image,1);
    reference_star=find(starID==i);
    
    %Calculate the Pixel distance from Sref to neighboring stars within
    %half FOV
    d= [];
    ID_n = [];
    for j=1:no_stars_image
        temp = floor(sqrt((P_d(reference_star,1)-P_d(j,1))^2 + (P_d(reference_star,2)-P_d(j,2))^2));
        d = [d; star_matrix(j,1) temp];
    end
    
    %Sort distance ascending from left to right
    temp = sortrows(d,2);
    d = temp(:,2)';
    d = d (2:end);
    N = size (d,2);
    
    ID_n = temp(:,1)';
    ID_n = ID_n (2:end);
    
    catalog (i,1:(N+2)) = [i N d]; % store d
    catalog_ID (i,1:(N+2)) = [i N ID_n] ;  % store ID
    
end

%%Sort the catalog ascending followed by N,d1,d2,dn...
for i = Max_N:-1:2
        catalog = sortrows(catalog,i);
end
ID = catalog (:,1);
N = catalog  (:,2);
d = catalog (:,3:5); %%%%%%%%%%%%%%%%%%

% Write pattern catalog into text file
cd('D:\Dropbox\DangKhoa\CEE_Cache\StarTracker\Catalogue_Generate_Matlab');
file_path_1='D:\Dropbox\DangKhoa\CEE_Cache\StarTracker\Catalogue_Generate_Matlab\pattern_catalogue.txt';
file_path_2='D:\Dropbox\DangKhoa\CEE_Cache\StarTracker\Catalogue_Generate_Matlab\pattern_catalogue_ID.txt';

fid_master=fopen(file_path_1,'wt');
for i=1:no_stars
    fprintf(fid_master,'%d',N(i));
    fprintf(fid_master,' ');
    for j=1:length(d(i,:))
        %if d(i,j) > 0
            fprintf(fid_master,'%d',d(i,j));
            fprintf(fid_master,' ');
        %end
    end
    fprintf(fid_master,'%d',ID(i));
    fprintf(fid_master,'\n');
end
%Write EOF
fwrite(fid_master,4,'uint8');
fclose(fid_master);
