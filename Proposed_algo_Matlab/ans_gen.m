function [starID_a,d2r_a,d2c_m] = ans_gen (star_matrix,img_height,img_width)

no_star= size(star_matrix,1);

if ( no_star == 0 )
    starID_a=0;
    d2r_a = 0;
    d2c_m = 0;
    return
end
% choose a reference star that nearest the center
d2c_a =zeros(no_star,1); %distance to the centre of all stars in the images (pixel)
for i=1:no_star
    temp= star_matrix(i,[11 12])-[img_height/2 img_width/2];
    d2c_a(i)= sum(temp.*temp);    
end
k= find(d2c_a==min(d2c_a));
k=k(1);

%distance from the Sref to centre
starID_a = star_matrix(k,1);
d2c_m = floor(sqrt((star_matrix(k,11)-img_width/2)^2 + (star_matrix(k,12)-img_height/2)^2));

% Calculate the distance to the ref star of all stars in the images (pixel)
d2r_a=[]; %distance to the ref star of all stars in the images (pixel)
j=1;
for i=1:no_star
    temp = floor(sqrt((star_matrix(k,11)-star_matrix(i,11))^2 + (star_matrix(k,12)-star_matrix(i,12))^2)); % sqrt((x_r-x_i)^2 + (y_r-y_i)^2)) 
    if temp < 128.001
        d2r_a(j)= temp;
        j=j+1;
    end
end