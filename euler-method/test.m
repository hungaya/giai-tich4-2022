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
