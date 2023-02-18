function z=MyCost(p,model)

    n=model.n;
    w=model.w;
    d=model.d;

    z=0;
    
    for i=1:n-1
        for j=i+1:n
            
            z=z+w(i,j)*d(p(i),p(j));
            
        end
    end

end