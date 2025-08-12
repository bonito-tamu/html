function z = newton(func, z0, iter)

syms x y
deriv = jacobian(sym(func), [x y]);
z = z0;
for n = 1:iter
   D = double(subs(deriv, {x,y}, z));
   F = double(subs(func, {x,y}, z));
   z = z - inv(D)*F;
end
