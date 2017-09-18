%% Comandos iniciales
clc
clear 
close all

%% Definición de variables del contexto
t=0:2*pi/100:2*pi;
c = [];
for i=1:length(t)-1
    c(i,:)=[i i+1 length(t)+i];
    c(i+length(t)-1,:)=[length(t)+i length(t)+i+1 i+1];
end

%% Creación de objetos

% Creación de base
M = constructor(8,8,5,'base');
hold on
patch('vertices',M(1:3,:)','faces',c);
% Superficie inferior
center = [0,0,0];
radius = 8;
NOP = 1000;
THETA=linspace(0,2*pi,NOP);
RHO=ones(1,NOP)*radius;
[X,Y] = pol2cart(THETA,RHO);
X=X+center(1);
Y=Y+center(2);
Z = center(3)*ones(1,length(X));
fill3(X,Y,Z,'k');
% Superficie superior
center = [0,0,1];
radius = 8;
NOP = 1000;
THETA=linspace(0,2*pi,NOP);
RHO=ones(1,NOP)*radius;
[X,Y] = pol2cart(THETA,RHO);
X=X+center(1);
Y=Y+center(2);
Z = center(3)*ones(1,length(X));
fill3(X,Y,Z,'k'); 

% Creación de conos
r_y=[1 0 0 0; 0 1 0 0; 0 0 1 5; 0 0 0 1]; 
M1 = constructor(4,4,12,'cone');
v_r1= r_y * M1;

hold on
patch('vertices',v_r1(1:3,:)','faces',c);

axis([-10 30 -10 30 -10 30])
view([135 25])
xlabel('eje x'); ylabel('eje y'); zlabel('eje z');
grid on

r_y=[1 0 0 0; 0 1 0 0; 0 0 1 15; 0 0 0 1]; 
M2 = constructor(2,2,6,'cone');
v_r2= r_y * M2;
patch('vertices',v_r2(1:3,:)','faces',c);

r_y=[1 0 0 0; 0 1 0 0; 0 0 1 20; 0 0 0 1]; 
M3 = constructor(1,1,6,'cone');
v_r3= r_y * M3;
patch('vertices',v_r3(1:3,:)','faces',c);
