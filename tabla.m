function tabla
tabl=zeros(16,4);
dnexacto=@(n) 0.504/(1+4*n*j);
for col=1:6
    switch col
        case 1
            for i=0:15
                tabl(i+1,1)=i;
            end
        case 2
            for ii=0:15
                tabl(ii+1,2)=abs(dnexacto(ii));
            end
%         case 3
%             T_0 = pi; N_0 = 256; T = T_0/N_0; t = (0:T:T*(N_0-1))'; M = 10;
%             x = exp(-t/2); x(1) = (exp(-pi/2) + 1)/2;
%             D_n = fft (x)/N_0; n = [0:15]';
%             for iii=0:15
%                 tabl(iii+1,3)=abs(fftshift (D_n));
%             end
%         case 4
%             m=15000;
% n=(0:4);
% b=pi; a=0; t=-100:.1:100;
% w0=2*pi/(b-a);
% f=@(t) exp(-t/2)*exp(-n*w0*1i*t);
% 
% h=(b-a)/m;
% 
% aprox=f(a)+f(b);
% for i=1:m-1
% x=a+i*h;
% aprox=aprox+2*f(x);
% for iv=1:16
%     aprox=(h/2)*aprox;
% tabl(iv,4)=aprox;
% end
%     end
end
tabl
end