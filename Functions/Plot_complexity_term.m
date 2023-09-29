function Plot_complexity_term(Array,Min_Value,Criteria)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
figure();
plot(Array,':o');
grid on;
hold on;
plot(Min_Value,Array(Min_Value),'*','MarkerSize',20); %Plot minimun
ylabel(sprintf('%s (Theta(n))', Criteria));
xlabel('n');
title(sprintf('Model order estimation with %s criteria', Criteria));
end

