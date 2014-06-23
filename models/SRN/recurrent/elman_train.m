% elman_train.m -- learns a repeating sequence of patterns

Patterns = [ ...
  0.2  0.2; ...
  0.8  0.3; ...
%  0.95 0.7; ...
  0.7  0.9; ...
  0.1  0.8; ...
%  0.05 0.55; ...
  0.5  0.5]';

% map each pattern to its successor
Desired = [Patterns(:,2:end) Patterns(:,1)];

% add a startup transition from 0 to first pattern
Inputs = [0*Patterns(:,1) Patterns];
Desired = [Patterns(:,1) Desired];

% make 10 copies of training set
Inputs = repmat(Inputs,1,10);
Desired = repmat(Desired,1,10);

% add bias
Inputs = [ones(1,size(Inputs,2)); Inputs];

NPATS = size(Inputs,2);
PATSIZE = size(Patterns,1);
NOUTPUTS = PATSIZE;
NHIDDENS = 15;
NINPUTS = 1 + PATSIZE + NHIDDENS;

Weights1 = rand(NHIDDENS,NINPUTS)*0.5 - 0.25;
Weights2 = rand(NOUTPUTS,1+NHIDDENS)*0.5 - 0.25;

zero_Result1 =  zeros(NHIDDENS,NPATS);
Result1 = zero_Result1;
Result2 = Desired;

DerivIncr = 0.0;
LearnRate1 = 0.001;
Momentum = 0.05;
LearnRate2 = 0.0005;
deltaW1 = 0;
deltaW2 = 0;

Noise = 0.00;

maxTSS = 0.00005;

clf reset, whitebg(gcf,[0 0 0])

LearnRate = LearnRate1;
for epoch = 1:100000
 elman_bp_innerloop
 if (rem(epoch,1000) == 0) | (TSS < maxTSS)
   LearnRate = LearnRate * 0.98;
   if epoch == 20000, LearnRate = LearnRate2; end
   fprintf('%6d.   TSS = %f\n',epoch,TSS)
   plotx = zeros(3,NPATS); ploty=plotx;
   plotx(1,:) = Inputs1(2,:); plotx(2,:) = Result2(1,:); plotx(3,:) = NaN;
   ploty(1,:) = Inputs1(3,:); ploty(2,:) = Result2(2,:); ploty(3,:) = NaN;
   clf, hold on
   plot(plotx(:),ploty(:),'c')
   plot(Desired(1,:),Desired(2,:),'ro','MarkerSize',12)
%   plot(Result2(1,:),Result2(2,:),'o')
   axis([0 1 0 1])
   drawnow
 end
 if TSS < maxTSS, return, end
end
