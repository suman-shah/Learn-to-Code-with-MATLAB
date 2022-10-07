%find adjoint of A [2 3 5; 1 7 2; 8 3 4] by using inv() and det()
%make sure that the square matrix is non singular
A=[2 3 5; 1 7 2; 8 3 4];
A_adj=inv(A).*det(A);
disp(A_adj);
