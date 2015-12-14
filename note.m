function [xx,tt]=note(f,dur) %fonksiyon giriþ deðerinde argüman olarak frekans ve t'nin duracaðý deðerleri fonksiyonda tanýmladým. 
tt=0:1/(100*f):dur;      %zaman aralýðým 0'dan baþlayýp dur'a kadar 1/(100*f) artýmmla devam edicek.
xx=sin(2*pi*f*tt); %xx'e sinüs sinyalini atadým.
end
