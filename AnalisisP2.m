int_value=2
i=1;
e(i)=10;
while(e(i)>0.001)
    if(i==1)
        x(i)=int_value;
    end
    g(i)=real(sqrt((x(i)+5)/2));
    i=i+1;
    x(i)=g(i-1);
    e(i)=abs(x(i-1)-x(i));
    if (e(i)>50)
        break;
        
    end
end

 tamanio=size(e);
 iter=1:1:tamanio(2);
 
 figure('DefaultAxesFontSize',14)
 plot(iter,e,'color','blue','LineWidth',2)
 grid on
 xlabel('Iteraciones')
 ylabel('ERROR')
 legend('Error')