function PlotSolution(tour,model)

    tour=[tour tour(1)];
    
    plot(model.x(tour),model.y(tour),'k-s',...
        'MarkerSize',11,...
        'MarkerFaceColor','y',...
        'LineWidth',2);

end
