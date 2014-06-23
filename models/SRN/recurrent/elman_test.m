fResult1 = 0*Result1(:,1);
fResult2 = 0*Desired(:,1);

for i = 1:500
  clf, hold on
  plot(Desired(1,:),Desired(2,:),'rd')

  forwInputs1 = [1; fResult2];
  forwprop
  plot(fResult2(1,1),fResult2(2,1),'co')
  axis([-0.2 1.2 -0.2 1.2])
  pause(.5)
end
