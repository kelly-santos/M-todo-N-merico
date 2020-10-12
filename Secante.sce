function y =t0(x)
  y = -481 +408 +589.64 * x + (-2349.163 * x^2)/2
endfunction


a = 0
b = 0.835
x= a
xOld = b
contador = 0
while(1)
    xaux = xOld
    xOld =  x;
    x= xOld - (t0(xOld)*(xaux - xOld))/(t0(xaux)-t0(xOld))
    Er = abs((x-xOld)/x)
    contador = contador +1
    if (Er < 10^-3) then
        break
    end
    if(t0(a)*t0(x)  < 0)
        b= x 
    else
        a=x

    end
end   
