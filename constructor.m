function M=constructor(radio,altura,n_puntos,tipoFig)
if (tipoFig == 'cone')
    t = 0:2*pi/100:2*pi;
    x = cos(t);
    x1 = radio*x;
    y = sin(t);
    y1 = altura*y;
    z = n_puntos*ones(1,length(t));
    z1 = 0*z;
    escala = ones(1,2*length(t));
    M = [x x1;y y1;z z1;escala];
elseif (tipoFig == 'base')
    t = 0:2*pi/100:2*pi;
    x = cos(t);
    x1 = radio*x;
    y = sin(t);
    y1 = altura*y;
    z = n_puntos*ones(1,length(t));
    z1 = 0*z;
    escala = ones(1,2*length(t));
    M = [x1 x1;y1 y1;z z1;escala];
else
    t = 0:2*pi/100:2*pi;
    x = cos(t);
    x1 = radio*x;
    y = sin(t);
    y1 = altura*y;
    z = n_puntos*ones(1,length(t));
    z1 = 0*z;
    escala = ones(1,2*length(t));
    M = [x x1;y y1;z z1;escala];
end
end