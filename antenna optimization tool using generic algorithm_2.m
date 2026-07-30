function f = fitnessFcn(x)

Length = x(1);
Width = x(2);

Gain = 8 - 500*(Length-0.148)^2 - 400*(Width-0.190)^2;
Efficiency = 80 - 200*(Length-0.148)^2 - 150*(Width-0.190)^2;

f = -(Gain + Efficiency);

end