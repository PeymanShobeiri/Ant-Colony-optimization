function model=CreateModel()

    v=[391 454 150 330 246 400 170 266 268 293 471 388 364 193 202 161 410 260 384 486];
    
    w=[32 52 59 14 52 46 45 34 34 59 59 38 57 21 47 36 64 42 20 23];
    
    m=[2 1 3 1 4 2 1 1 1 2 3 4 1 3 2 4 2 2 3 4];
    
    n=numel(v);
    
    W=700;
    
    model.n=n;
    model.v=v;
    model.w=w;
    model.m=m;
    model.W=W;

end
