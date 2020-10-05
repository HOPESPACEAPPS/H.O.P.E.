%%Ciclo para recorrer las imagenes
for kk=1:32
   %A: Imagenes de temperatura del aire
   a=strcat('imagenes/a',int2str(kk),'.png'); 
   %H: Imagenes de humedad
   h=strcat('imagenes/r',int2str(kk),'.png'); 
   %C: Imagenes del mapa a color
   c=strcat('imagenes/c',int2str(kk),'.png'); 
   
   
    a = rgb2gray(imread(a));
    h = rgb2gray(imread(h));
    c = rgb2gray(imread(c));

    %Humedad 0% - 0 : 100% - 255
    %Aire 200k - 0 : 340k - 255

    [M N] = size(c);
    out = uint8(zeros([size(c),3]));

    for ii=1:M
        for jj=1:N
            if (a(ii,jj)~=0 && h(ii,jj)~=0)
                [out(ii,jj,1),out(ii,jj,2),out(ii,jj,3)] = term(double(a(ii,jj)), double(h(ii,jj)));
            else
                out(ii,jj,1)=255;
                out(ii,jj,2)=255;
                out(ii,jj,3)=255;
            end
        end
    end
    figure();
    I=imshow(c);
    hold on
    h = imshow(out);
    set(h, 'AlphaData', .4);
    hold off
    F = getframe ;
    % save the image:
    save_file_name = strcat('imagenes/', 's',int2str(kk),'.jpg');
    imwrite(F.cdata, save_file_name)
    close all
end



