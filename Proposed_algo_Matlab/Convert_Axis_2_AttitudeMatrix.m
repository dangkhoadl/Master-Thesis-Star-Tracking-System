function C= Convert_Axis_2_AttitudeMatrix(RA,DEC,angle)
% Connvert RA,DEC into direction vector:
axis =[cosd(DEC)* cosd(RA) cosd(DEC)* sind(RA)  sind(DEC)];

% Calculate rotation matrix
% The z axis of camera
c3= axis;
% The x axis of camera
c1x=  c3(2)/sqrt((c3(1)^2)+(c3(2)^2));
c1y= -c3(1)/sqrt((c3(1)^2)+(c3(2)^2));
c1z=0;
c1= [c1x c1y c1z];
% The y axis of camera

c2= cross(c3,c1);

C= [c1;c2;c3];

% Connvert RA,DEC into direction vector:
% axis =[cosd(DEC)* cosd(RA) cosd(DEC)* sind(RA)  sind(DEC)];
% 
% %Quaternion
% x=axis(1)* sind(angle/2);
% y=axis(2)* sind(angle/2);
% z=axis(3)* sind(angle/2);
% w=cosd(angle/2);
% q=[x;y;z;w];
% % Quaternion conjugate
% xc=-x;
% yc=-y;
% zc=-z;
% wc=w;
% qc=[xc;yc;zc;wc];
% 
%  %Quaternion:
%  q0=w;
%  q1=x;
%  q2=y;
%  q3=z;
%  
%  C=[ (2*q0^2-1+ 2*q1^2) (2*q1*q2-2*q0*q3)  (2*q1*q3 + 2*q0*q2);
%      (2*q1*q2 + 2*q0*q3) (2*q0^2-1+2*q2^2) (2*q2*q3 - 2*q0*q1);
%      (2*q1*q3 - 2*q0*q2) (2*q2*q3+2*q0*q1) (2*q0^2-1+2*q3^2)];
%  
 