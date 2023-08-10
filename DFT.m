clear all;
close all;
clc;

%f = [371 547 783 297 72 774 153 327 846 105 705]';
f = table2array(readtable('TD11840_2023.xlsx','Range','H56:H100'));
n = length(f);
w = exp(-2i*pi/n);

[I,J] = meshgrid(1:n,1:n);
DFTMatrix = w.^((I-1).*(J-1));
% imagesc(real(DFTMatrix))

f_hat = DFTMatrix.*f;
% f_hat_k = f_hat(end,:);

for i = 1:length(f)
    f_i = DFTMatrix(i,:).*f(i);
end

figure
plot(linspace(1,length(f),n),f_i)

