function y =fa(x)
 
y = -481 +408 +589.64 * x + (-2349.163 * x^2)/2
 
endfunction

a = 0
b = 0.3
x= a
contador = 0
while(1)
     xOld =  x;
    x= (a+b)/2;
    Er = abs((x-xOld)/x)
    contador = contador + 1 
    if (Er < 10^-4) then
        break
    end
    if(fa(a)*fa(x)  < 0)
        b= x 
    else
        a=x

    end
end   
