function DepressSpace();
%waits for space bar to be pressed and depressed.

CHOICEKEY = KbName('space'); %spacebar

GetKeyPress(.01,CHOICEKEY);

while (KbCheck)
        WaitSecs(.001); %prevents usuing all cpu time
end