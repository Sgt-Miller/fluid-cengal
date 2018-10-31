syms HelLamLam(Re) HelTur(Re); %Hydrodynamic Entry length
HelLam(Re) = .05*Re;
HelTur(Re) = 1.359*Re^(1/4);
HelTurApprox = 10;

TranStart = 2300;
TranEnd = 4000;
xStart = 1000;
xEnd = 10000;

figure;
xlabel('Reynolds Number');
ylabel('Hydrodynamic Entry Length');
title('How Hydrodynamic Entry Length changes with variation in Reynolds Number');
hold on;
fplot(HelLam,[xStart TranEnd],'-r', 'LineWidth', 2);
fplot(HelTur,[TranStart xEnd],'-b', 'LineWidth', 2);
fplot(HelTurApprox,[TranStart xEnd],'--k');

%Transition lines
line([TranStart TranStart],[0 HelLam(TranEnd)],'LineStyle', '--');
line([TranEnd TranEnd],[0 HelLam(TranEnd)],'LineStyle', '--');

%Descriptions
text(mean([xStart, TranStart]),30,'Laminar');
text(mean([TranStart,TranEnd]),30,'Transition');
text(mean([TranEnd, xEnd]),30,'Turbulent');
legend('Laminar', 'Turbulent', '10');
grid on;
hold off;