function y =t0(x)
y = -481 +408 +589.64 * x + (-2349.163 * x^2)/2
endfunction

function y=dv0(x)
    y=589.64 -2349.163*x
endfunction

x = 0

contador=0
while(1)
    contador = contador +1
    xOld =  x;
    x= abs(x - t0(x)/dv0(x))
    Er = abs((x-xOld)/x)
    
 if (Er < 10^-3) then
        break
    end
end   
