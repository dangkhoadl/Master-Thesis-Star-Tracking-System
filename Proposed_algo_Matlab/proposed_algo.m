%% This file is to implment proposed_algo algorithm for star recognition
function [starID,N_algo,d2r,k,watcher] = proposed_algo (Sc,centroid,img_height,img_width,ID,N,D1,D2,D3)

watcher = [];
no_star= size(Sc,1);
starID = [];
N_algo = 0;

if ( no_star <= 1 )
    starID=0;
    k=0;
    d2r = 0;
    N_algo = 0;
    return
end

% choose a reference star that nearest the center
d2c =zeros(no_star,1); %distance to the centre of all stars in the images (pixel)
for i=1:no_star
    temp= centroid(i,:)-[img_height/2 img_width/2];
    d2c(i)= sum(temp.*temp);    
end
k= find(d2c==min(d2c));
k=k(1);
    
% Calculate the distance to the ref star of all stars in the images (pixel)
d2r=[]; %distance to the ref star of all stars in the images (pixel)
j=1;
for i=1:no_star
    temp = floor(sqrt((centroid(k,1)-centroid(i,1))^2 + (centroid(k,2)-centroid(i,2))^2)); % sqrt((x_r-x_i)^2 + (y_r-y_i)^2)) 
    watcher = [watcher;temp];
    if temp < 128.001
        d2r(j)= temp;
        j=j+1;
    end
end

%Sort and calculate N_algo
d2r(d2r==0) = []; %remove zero elements
d2r = sort(d2r); 
N_algo = size(d2r,2);

%preprocess
if N_algo < 3
    temp = zeros (3,1);
    temp (1:length(d2r)) = d2r;
    d2r = temp;
end

% Tolerance
e_n = 0;
e_d = 2;

u_n = N_algo + e_n;
l_n = N_algo - e_n;
u_D1 = d2r(1) + e_d;
l_D1 = d2r(1) - e_d;
u_D2 = d2r(2) + e_d;
l_D2 = d2r(2) - e_d;
u_D3 = d2r(3) + e_d;
l_D3 = d2r(3) - e_d;


%%Matching with pattern catalogue
for i= 1: length(N)
    if (N(i)<= u_n && N(i)>= l_n)
        if(D1(i)<u_D1 && D1(i)>l_D1)
            if (D2(i)<u_D2 && D2(i)>l_D2)
                if (D3(i)<u_D3 && D3(i)>l_D3)
                    starID = [starID;ID(i)];
                end
            end
        end
    end 
end






