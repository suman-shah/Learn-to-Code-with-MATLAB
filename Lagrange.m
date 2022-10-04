% Lagrange Interpolation MATLAB Program
function [P,R,S] = lagrangepoly(X,Y,XX)
X = [1 2 3 4 5 6 7 8]; % inputting the values of given x
Y = [0 1 0 1 0 1 0 1]; % inputting the values of given y
%[P,R,S] = lagrangepoly(X,Y);
xx = 0.5 : 0.01 : 8.5; 
%plot(xx,polyval(P,xx),X,Y,'or',R,S,'.b',xx,spline(X,Y,xx),'--g')
%grid
%axis([0.5 8.5 -5 5])
if size(X,1) > 1;  X = X'; end % checking for parameters 
if size(Y,1) > 1;  Y = Y'; end
if size(X,1) > 1 || size(Y,1) > 1 || size(X,2) ~= size(Y,2)
  error('both inputs must be equal-length vectors') % displaying error
end % end of scope of if
N = length(X);
pvals = zeros(N,N);
% for evaluating  the polynomial weights for each order
for i = 1:N
  % the polynomial with roots may be values of X other than this one
  pp = poly(X( (1:N) ~= i));
  pvals(i,:) = pp ./ polyval(pp, X(i));
end
P = Y*pvals;
if nargin==3
  YY = polyval(P,XX); % output is YY with given XX
  P = YY; % assigning to output
end
% end of scope of if 
if nargout > 1 % checking for conndtions 
  R = roots( ((N-1):-1:1) .* P(1:(N-1)) );
  if nargout > 2
    % the evalustion of acual value at  the poins of zero derivative  
    S = polyval(P,R);
  end
end
