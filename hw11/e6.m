[t,y] = meshgrid(1:4,4:-1:1);
dt = ones(4,4);
dy = -t./y;
quiver(t,y,dt,dy);
hold on;
x = 0:0.01:4
z1 = (1-x.^2).^0.5
z2 = (2-x.^2).^0.5
z3 = (4-x.^2).^0.5
z4 = (9-x.^2).^0.5
plot(x,z1,x,z2,x,z3,x,z4)
hold off

