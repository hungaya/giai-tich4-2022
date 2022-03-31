function [x, y] = euler(a, b, y0, h, f)
  N = round((b - a) / h);
  
  x = zeros(N+1, 1);
  for i = 1:(N+1)
    x(i) = a + (i-1)*h;
  end

  y = zeros(N+1, 1);
  y(1) = y0;
  for i = 1:N
    y(i + 1) = y(i) + h * f(x(i), y(i));
  end
end
