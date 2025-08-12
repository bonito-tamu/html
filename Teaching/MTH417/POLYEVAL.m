function val = POLYEVAL(a,x)
% a=(a_0,a_1,...,a_n)^t  coefficients of polynomial
% x evaluation points
% val value of polynomial at x

m=length(x);
n=length(a);
  
val = a(n)*ones(size(x));
for k=n-1:-1:1
  val = x.*val + a(k);
end
