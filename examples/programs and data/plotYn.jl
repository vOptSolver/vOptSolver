# Example on how to plot Y_N for a bi-objective discrete optimization case
using PyPlot

title(L"$Y_N$")
xlabel(L"$z_1$")
ylabel(L"$z_2$")
axis([0, 40, 0, 40])
plot( z1, z2, color="green", linestyle="", marker="o", label="YN" )
