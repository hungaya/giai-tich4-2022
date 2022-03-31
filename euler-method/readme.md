# Phương pháp Euler
Hàm `euler` thực hiện giải thuật Euler để tìm nghiệm xấp xỉ của phương trình vi phân.

Trong đó, các input của hàm `euler`:
* `a`, `b`: Khoảng `(a,b)`, các nghiệm xấp xỉ của phương trình sẽ nằm trong khoảng `(a,b)` này,
* `y0`: Điều kiện ban đầu `y(0) = y_0`,
* `h`: Khoảng cách giữa hai nghiệm liên tiếp `x_n` và `x_{n+1}`, với `n=0,...,N`,
* `f`: hàm `f` trong phương trình `y' = f(x,y)`.

Output của hàm `euler`:
* `x`: kiểu vector. các giá trị phân bố điều trong khoảng `(a,b)`, hai giá trị liên tiếp cách nhau `h` đơn vị,
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
* `a`, `b`: Khoảng `(a,b)`,
* `y0`: Điều kiện ban đầu `y(0) = y_0`,
* `h`: Khoảng cách hai nghiệm `x` liên tiếp,
* `fde`: Hàm `f` trong phương trình `y' = f(x,y)`,
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
Chứa danh sách các bài tập, mỗi bài tập gồm phương trình vi phân `fde` và nghiệm chính xác `fex`, cụ thể:
* Ví dụ mẫu (số lượng 1),
* 4 bài tập ở trang slide 52, gồm (1), (2), (3) và (4),
* 4 bài tập ở trang slide 57, gồm (a), (b), (c) và (d),
* 3 bài tập ở trang slide 62, gồm (a), (b) và (c),
* 2 bài tập ở trang slide 67, gồm (a) và (b).

Code cho ví dụ mẫu
```
clc
clear all
close all

syms x f y

fde = @(x, y) x * (1 + x.^2) / (y.^2);
fex = @(x) (3 * (x.^2) / 2 + 3 * x.^4 /4 + 1) .^ (1/3);
a = 0;
b = 6;
h = 0.5;
y0 = 1;

test(a, b, y0, h, fde, fex);
```

Code cho bài 1 slide 52
```
fde = @(x, y) 1 ./ (x - y) + 1;
fex = @(x) (1 - 2*x) .^ (1/2) + x;
a = 0;
b = 0.4;
h = 0.03;
y0 = 1;

test(a, b, y0, h, fde, fex);
```

# Các đồ thị trong bài tập
## Ví dụ mẫu

[sample](https://github.com/hungaya/giai-tich4-2022/blob/main/euler-method/img/sample.png)

## Bài tập slide 52

Câu 1

![52-1](https://github.com/hungaya/giai-tich4-2022/blob/main/euler-method/img/slide-52-1.png)

Câu 2

![52-2](https://github.com/hungaya/giai-tich4-2022/blob/main/euler-method/img/slide-52-2.png)

Câu 3

![52-3](https://github.com/hungaya/giai-tich4-2022/blob/main/euler-method/img/slide-52-3.png)

Câu 4

![52-4](https://github.com/hungaya/giai-tich4-2022/blob/main/euler-method/img/slide-52-4.png)

## Bài tập slide 57
Câu a

![57-1](https://github.com/hungaya/giai-tich4-2022/blob/main/euler-method/img/slide-57-a.png)

Câu b

![57-2](https://github.com/hungaya/giai-tich4-2022/blob/main/euler-method/img/slide-57-b.png)

Câu c

![57-3](https://github.com/hungaya/giai-tich4-2022/blob/main/euler-method/img/slide-57-c.png)

Câu d

![57-4](https://github.com/hungaya/giai-tich4-2022/blob/main/euler-method/img/slide-57-d.png)

## Bài tập slide 62
Câu a

![62-a](https://github.com/hungaya/giai-tich4-2022/blob/main/euler-method/img/slide-62-a.png)

Câu b

![62-b](https://github.com/hungaya/giai-tich4-2022/blob/main/euler-method/img/slide-62-b.png)

Câu c

![62-c](https://github.com/hungaya/giai-tich4-2022/blob/main/euler-method/img/slide-62-c.png)

## Bài tập slide 67
Câu a

![67-a](https://github.com/hungaya/giai-tich4-2022/blob/main/euler-method/img/slide-67-a.png)

Câu b

![67-b](https://github.com/hungaya/giai-tich4-2022/blob/main/euler-method/img/slide-67-b.png)
