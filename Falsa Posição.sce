function y =t0(x)
 y = -481 +408 +589.64 * x + (-2349.163 * x^2)/2
endfunction


a = 0
b = 0.3
x= a
contador = 0 

while(1)
    xOld =  x;
    x= abs(a - (t0(a)*(b-a))/(t0(b)-t0(a)));
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

