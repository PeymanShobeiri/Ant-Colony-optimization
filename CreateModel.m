function model=CreateModel()

    x=[72 51 22 52 63 9 28 65 96 77 15 98 96 39 80 14 12 92 50 96];
    
    y=[66 3 85 54 68 16 75 29 66 17 51 3 28 4 9 83 70 32 95 3];
    
    n=numel(x);
    
    D=zeros(n,n);
    
    for i=1:n-1
        for j=i+1:n
            
            D(i,j)=sqrt((x(i)-x(j))^2+(y(i)-y(j))^2);
            
            D(j,i)=D(i,j);
            
        end
    end
    
    model.n=n;
    model.x=x;
    model.y=y;
    model.D=D;

end
