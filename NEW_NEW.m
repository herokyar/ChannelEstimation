x = randn(1,20);

trn_sym = [ 0.25 0.22 ]

s= abs(x);
TAP1=0;
%time invariant channel estimation = correlation
%channel = 2 taps
for ii = 1:20
s(ii)= s(ii)*trn_sym(1);
TAP1= s(ii)+TAP1;

end

TAP1= TAP1/20;

%initializing
TAP2=0;
for ii = 1:20
s(ii)= s(ii)*trn_sym(2);
TAP2= s(ii)+TAP2;

end
TAP2= TAP2/20;


% r=Bh  
%B= input matrix = s     (input state variable1)
%h= channel taps ( tap1 and tap2)  (input state variable 2)
%r output matrix  (output state variable)



for ii=1:20;
    r(ii,1)=s(ii)*TAP1;
    r(ii,2)=s(ii)*TAP2;
end


plot(s,'*')
hold on
%plot(r,'+r')


plot(r(:,1),'+r');
hold on
plot(r(:,2),'pr');


% plot(s(1),'*')
% plot(s(1),'*')
% hold on
% plot(r(1,1),'+r')
% hold on
% plot(r(1,2),'+r')








