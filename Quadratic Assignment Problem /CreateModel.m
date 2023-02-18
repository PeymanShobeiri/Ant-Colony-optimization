function model=CreateModel()

    x=[62 81 66 34 54 31 53 46 37 35 83 59 87 20 83 38 26 70 49 17];
    
    y=[19 43 9 43 82 30 95 17 1 74 85 86 56 83 22 73 31 34 11 7];
    
    m=numel(x);
    
    d=zeros(m,m);
    for p=1:m-1
        for q=p+1:m
            d(p,q)=sqrt((x(p)-x(q))^2+(y(p)-y(q))^2);
            d(q,p)=d(p,q);
        end
    end
    
    w=[0  6  6  3  5  5  5
       6  0  6  4  4  3  6
       6  6  0  4  5  8  6
       3  4  4  0  4  4  8
       5  4  5  4  0  3  4
       5  3  8  4  3  0  4
       5  6  6  8  4  4  0];

    n=size(w,1);
    
    model.n=n;
    model.m=m;
    model.w=w;
    model.x=x;
    model.y=y;
    model.d=d;
    
end
