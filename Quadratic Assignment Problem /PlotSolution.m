function PlotSolution(p,model)

    x=model.x;
    y=model.y;
    
    plot(x,y,'o','MarkerSize',18,'Color',[0.7 0.7 0.7]);
    
    hold on;
    
    plot(x(p),y(p),'sk','MarkerSize',14,'MarkerFaceColor','y');
    
    n=model.n;
    for i=1:n
        text(x(p(i)),y(p(i)),num2str(i),...
            'HorizontalAlignment','center',...
            'VerticalAlignment','middle');
    end
    
    hold off;

end