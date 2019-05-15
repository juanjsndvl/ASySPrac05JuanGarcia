function Ex_6_2 (dn,d0,tf,t0,a,b)
% t0 el valor inicial para calcular la serie
% tf el valor final donde calcular la serie
% dn función de la fórmula de los dn
% a, b intevalo para realizar la grafica de la serie
% d0 coeficiente D_o

w0=2*pi/(tf-t0);

sf=d0;
t=a:0.01:b;
armo=0;

for k=1:9
    
    
for n=1:armo
    sf=sf+dn(-n)*exp(w0*-n*t*j)+dn(n)*exp(w0*n*t*j);
end
figure (1)
hFig = figure(1);
set(hFig, 'Position', [0 0 900 900])
subplot(3,3,k)
plot(t,sf,'LineWidth',2)
grid on
legend('Serie de Fourier','Location','Best')
xlabel('t','FontWeight','bold','FontSize',16)

sf=d0;
t1=t0:0.01:tf;

armo=armo+2;

end

end


