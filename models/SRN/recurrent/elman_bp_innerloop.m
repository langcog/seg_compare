% bp_innerloop.m
%
% Inner loop of the backpropagtion learning algorithm.
% One hidden layer.  Uses tanh as the transfer function.
%
% Uses the following global variables for input and/or output:
%    Inputs1   -  input patterns
%    Desired   -  desired output patterns
%    LearnRate -  learning rate parameter
%    Momentum  -  momentum parameter
%    DerivIncr -  increment to the derivative of the transfer function
%                   (Fahlman's trick; typical value 0.2)
%    Weights1  -  first weight layer (updated by this routine)
%    Weights2  -  second weight layer (updated by this routine)
%    deltaW1   -  initialize to 0 before first call
%    deltaW2   -  initialize to 0 before first call
%    TSS       -  total sum-squared error (set by this routine)

% Recurrent state
prevResult1 = [0*Result1(:,1), Result1(:,end) Result1(:,2:end-1)];
Inputs1 = [Inputs+rand(size(Inputs))*Noise-Noise/2; prevResult1];
Inputs1(1,:) = 1; Inputs1(2:end,1) = 0;

% Forward propagate activations:
NetIn1 = Weights1 * Inputs1;
Result1 = tanh(NetIn1);

Inputs2 = [ones(1,size(Inputs1,2)); Result1];
NetIn2 = Weights2 * Inputs2;
Result2 = tanh(NetIn2);

% Backward propagate errors:
Result2Error = Result2 - Desired;
TSS = sum(sum(Result2Error.^2));
In2Error = Result2Error .* (DerivIncr + cosh(NetIn2).^(-2));

Result1Error = Weights2' * In2Error;
In1Error = Result1Error(2:end,:) .* (DerivIncr + cosh(NetIn1).^(-2));

% Calculate the weight updates:
dW2 = In2Error * Inputs2';
dW1 = In1Error * Inputs1';

deltaW2 = -LearnRate * dW2 + Momentum * deltaW2;
deltaW1 = -LearnRate * dW1 + Momentum * deltaW1;

Weights2 = Weights2 + deltaW2;
Weights1 = Weights1 + deltaW1;

