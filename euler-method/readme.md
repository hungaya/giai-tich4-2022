# Phương pháp Euler
Hàm `euler` thực hiện giải thuật Euler để tìm nghiệm xấp xỉ của phương trình vi phân.

Trong đó, các input của hàm `euler`:
* `a`, `b`: Khoảng $(a,b)$, các nghiệm xấp xỉ của phương trình sẽ nằm trong khoảng $(a,b)$ này,
* `y0`: Điều kiện ban đầu $y(0) = y_0$,
* `h`: Khoảng cách giữa hai nghiệm liên tiếp $x_n$ và $x_{n+1}$, với $n=\overline{0,N}$,
* `f`: hàm $f$ trong phương trình $y' = f(x,y)$.

Output của hàm `euler`:
* `x`: kiểu vector. các giá trị phân bố điều trong khoảng $(a,b)$, hai giá trị liên tiếp cách nhau `h` đơn vị,
* `y`: kiểu vector, có cùng số phần tử với vector `x`. Giá trị `y(i)` là giá trị của hàm `y(x)` tại điểm `x(i)`.
```
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
```

# Tập tin test.m
Vẽ đồ thị của nghiệm xấp xỉ và nghiệm chính xác.

Input:
* `a`, `b`: Khoảng $(a,b)$,
* `y0`: Điều kiện ban đầu $y(0) = y_0$,
* `h`: Khoảng cách hai nghiệm `x` liên tiếp,
* `fde`: Hàm $f$ trong phương trình $y' = f(x,y)$,
* `fex`: Nghiệm chính xác của phương trình vi phân.
```
function [] = test(a, b, y0, h, fde, fex)
  [x, yap] = euler(a, b, y0, h, fde);
  yex = fex(x);

  clf
  hold on
    plot(x, yex, 'r');
    plot(x, yap, 'b');
    legend('y_{ex}', 'y_{ap}')
    xlabel('x'); ylabel('y(x)');
  hold off
end
```

# Tập tin main.h
Chứa danh sách các bài tập, mỗi bài tập gồm phương trình vi phân `pde` và nghiệm chính xác `fex`, cụ thể:
* Ví dụ mẫu (số lượng 1),
* 4 bài tập ở trang slide 52, gồm (1), (2), (3) và (4),
* 4 bài tập ở trang slide 57, gồm (a), (b), (c) và (d),
* 3 bài tập ở trang slide 62, gồm (a), (b) và (c),
* 2 bài tập ở trang slide 67, gồm (a) và (b).
