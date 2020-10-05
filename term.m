function [r,g,b] = term(a,h)
%Calculate the termal sensation
%   Based on air temp and relative humidity images
    %Calcular la relacion entre rgb y grados kelvin, despues convertir a
    %celcius
    a = (a*(140/255))-73.15;
    %Calcular relacion entre humedad y rgb
    h = (h/255)*100;
    %Umbrales definidos basados en datos de la Agencia Estatal de
    %Meteorologia del Gobierno de España
    if(h<=45)
        if(a<32)
            out=1;
        elseif(a<36)
            out=2;
        elseif(a<41)
            out=3;
        else
            out=4;
        end       
    elseif(h<=50)
        if(a<31)
            out=1;
        elseif(a<35)
            out=2;
        elseif(a<40)
            out=3;
        else
            out=4;
        end       
    elseif(h<=55)
        if(a<31)
            out=1;
        elseif(a<35)
            out=2;
        elseif(a<39)
            out=3;
        else
            out=4;
        end       
    elseif(h<=60)
        if(a<30)
            out=1;
        elseif(a<34)
            out=2;
        elseif(a<38)
            out=3;
        else
            out=4;
        end       
    elseif(h<=65)
        if(a<30)
            out=1;
        elseif(a<33)
            out=2;
        elseif(a<37)
            out=3;
        else
            out=4;
        end       
    elseif(h<=70)
        if(a<29)
            out=1;
        elseif(a<33)
            out=2;
        elseif(a<36)
            out=3;
        else
            out=4;
        end       
    elseif(h<=75)
        if(a<29)
            out=1;
        elseif(a<32)
            out=2;
        elseif(a<36)
            out=3;
        else
            out=4;
        end       
    elseif(h<=80)
        if(a<29)
            out=1;
        elseif(a<31)
            out=2;
        elseif(a<35)
            out=3;
        else
            out=4;
        end       
    elseif(h<=85)
        if(a<28)
            out=1;
        elseif(a<31)
            out=2;
        elseif(a<34)
            out=3;
        else
            out=4;
        end       
    elseif(h<=90)
        if(a<28)
            out=1;
        elseif(a<30)
            out=2;
        elseif(a<33)
            out=3;
        else
            out=4;
        end       
    elseif(h<=95)
        if(a<28)
            out=1;
        elseif(a<30)
            out=2;
        elseif(a<33)
            out=3;
        else
            out=4;
        end       
    elseif(h<=100)
        if(a<28)
            out=1;
        elseif(a<30)
            out=2;
        elseif(a<32)
            out=3;
        else
            out=4;
        end       
    end
    
    %Definir colores para cada tipo de peligro
    if(out==1)
        r=255;
        g=255;
        b=224;
    elseif(out==2)
        r=255;
        g=215;
        b=0;
    elseif(out==3)
        r=255;
        g=140;
        b=0;
    else
        r=255;
        g=0;
        b=0;
    end
end

