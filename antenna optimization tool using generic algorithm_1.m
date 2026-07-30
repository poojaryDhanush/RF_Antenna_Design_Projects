clc;
clear;

initialLength = 0.1539;
initialWidth = 0.18737;

nvars = 2;
lb = [0.10 0.17];
ub = [0.15 0.20];

[x,fval] = ga(@fitnessFcn,nvars,[],[],[],[],lb,ub);
fprintf('Initial Length = %.4f m\n',initialLength);
fprintf('Initial Width = %.5f m\n',initialWidth);
fprintf('\nOptimized Length = %.4f m\n',x(1));
fprintf('Optimized Width = %.4f m\n',x(2));
function f = fitnessFcn(x)
    Length = x(1);
    Width = x(2);
    Gain = 5 + 10*Length + 8*Width;
    Efficiency = 70 + 0.1*Gain;

    f = -(Gain + Efficiency);
end

