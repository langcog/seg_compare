% forwprop.m

% Recurrent state
fInputs1 = [forwInputs1; fResult1];

% Forward propagate activations:
fNetIn1 = Weights1 * fInputs1;
fResult1 = tanh(fNetIn1);

fInputs2 = [ones(1,size(fInputs1,2)); fResult1];
fNetIn2 = Weights2 * fInputs2;
fResult2 = tanh(fNetIn2);

