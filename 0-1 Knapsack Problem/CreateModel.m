function model=CreateModel()

    v=[401 202 302 380 457 484 319 155 159 203 437 201 426 197 472 240 178 200 347 289];
    
    w=[37 62 49 48 66 34 58 58 39 48 23 22 47 59 67 26 49 43 20 37];
    
    n=numel(v);
    
    W=500;
    
    model.n=n;
    model.v=v;
    model.w=w;
    model.W=W;

end
