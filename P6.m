% given infomation
z=[1,-1,0.7+0.7*i,0.7-0.7*i];
p=[0.5,-0.5,0.1+0.1*i,0.1-0.1*i];

[b,a] = zp2tf(z',p',k);
figure(1)
zplane(z',p');
figure(2)
zplane(b,a);