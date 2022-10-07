clc
%program demonstrating usage of switch function:
x=input('Enter the operand 1: ');
y=input('Enter the operand 2: ');
operator=input('Enter the operator(1 for addition, 2 for substraction): ');
switch operator
  case 1
    fprintf('The result of additon is: %.2f',x+y);
  case 2
    fprintf('The result of substraction is: %.2f',x-y);
  otherwise
    fprintf('Invalid operator!');
end
