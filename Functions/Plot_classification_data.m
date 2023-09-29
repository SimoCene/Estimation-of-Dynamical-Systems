function Plot_classification_data(Y,U,x_label,y_label)
    figure();
    grid on
    hold on
    plot(U(find(Y==1),1),U(find(Y==1),2),'r*'); %C1
    plot(U(find(Y==2),1),U(find(Y==2),2),'b*'); %C2
    title('Training data');
    xlabel(x_label);
    ylabel(y_label);
    legend({'C1','C2'});
    axis equal
end

