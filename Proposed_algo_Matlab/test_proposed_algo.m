
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
% Image processing time
centroider_time=zeros(test,test);
centroider_star=zeros(test,test);

% Star recognition time
starrecogniton_time=zeros(test,test);
% Number of recognized stars
starrecognition_starID=zeros(test,test);
% Percentage of corrected stars over total stars
starrecognition_starmatch=zeros(test,test);

count=1;
wrong=0;
accuracy=1;


file_path1='error.txt';
fid_master=fopen(file_path1,'wt');
%% Testing 
index = 1;
for RA = 1 :1: 360 
    for DEC = -89:1:89
        % Generate sky image at predetermined attitude
        cd('D:\Dropbox\DangKhoa\CEE_Cache\StarTracker\Proposed_algo_Matlab\sky simulator');
        C = Convert_Axis_2_AttitudeMatrix(RA,DEC,angle);
        [ R_camera_to_earth,star_matrix,I]= Plot_sky_images( C, FOV, img_height, img_width, pixelsize);
        %figure(1);
        %imshow(I);
        % Store number of star generated every test
        star_generated(RA,DEC+91) = size(star_matrix,1);    

        %% Calculate star centroid
        cd('D:\Dropbox\DangKhoa\CEE_Cache\StarTracker\Proposed_algo_Matlab');
        tic
        [Sc,centroid,magnitude] = centroider(I, FOV, img_height, img_width, pixelsize);
        centroider_time(RA,DEC+91)=toc;
        centroider_star(RA,DEC+91)=size(Sc,1);

        %% Load pattern catalog from database.
        file_path='D:\Dropbox\DangKhoa\CEE_Cache\StarTracker\Proposed_algo_Matlab\pattern_catalogue.txt';
        [ID,N,D1,D2,D3]= textread(file_path,'%d %d %f %f %f'); 

        %% Star recognition
        cd('D:\Dropbox\DangKhoa\CEE_Cache\StarTracker\Proposed_algo_Matlab');
        tic;
        [starID,N_algo,d2r,k,watcher] = proposed_algo (Sc,centroid,img_height,img_width,ID,N,D1,D2,D3);
        temp_t=toc;
        
        %% Correct answer generattion
        [starID_a,d2r_a,d2c_m] = ans_gen (star_matrix,img_height,img_width);
        d2r_a = d2r_a';
        
        %%statictis
        starrecogniton_time(RA,DEC+91)=temp_t;
		starrecognition_starID(RA,DEC+91)= length(starID);
		match=0;
	
		if size(star_matrix) == 0
            match = 0;
        else
            for i=1:size(starID,1)
			t= find(starID(i,1)== starID_a);
                if (t)  
                    match=match+1;
                end
            end
        end
        
		%star recognition_starmatch(count) = match;
		if (match==0)
			fprintf(fid_master,'%d',RA);
			fprintf(fid_master,'\t');
			fprintf(fid_master,'%d',DEC);
			fprintf(fid_master,'\n');
			wrong=wrong+1;
		end
		count=count+1;
		accuracy = 1-wrong/count
		t=toc;
    
     end
 end

fclose(fid_master);