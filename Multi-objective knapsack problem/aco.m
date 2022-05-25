clc;
clear;

%% Problem Definition

model=CreateModel();

CostFunction=@(x) MyCost(x,model);

nVar=model.n;


%% ACO Parameters

MaxIt=150; 

nAnt=20;        % Population Size

Q=1;

tau0=1;         % Initial Phromone

alpha=1;        % Phromone Exponential Weight

rho=0.05;       % Evaporation Rate


%% Initialization

tau=cell(nVar,1);
N=cell(nVar,1);
for l=1:nVar
    tau{l}=tau0*ones(1,model.m(l)+1);
    N{l}=0:model.m(l);
end

BestCost=zeros(MaxIt,1);    

% Ant
empty_ant.Tour=[];
empty_ant.x=[];
empty_ant.Cost=[];
empty_ant.Sol=[];

% Ant Colony
ant=repmat(empty_ant,nAnt,1);

% Best Ant
BestAnt.Cost=inf;


%% ACO Main Loop

for it=1:MaxIt
    
    % Move Ants
    for k=1:nAnt
        
        ant(k).Tour=[];
        
        for l=1:nVar
            
            P=tau{l}.^alpha;
            
            P=P/sum(P);
            
            j=RouletteWheelSelection(P);
            
            ant(k).Tour=[ant(k).Tour j];
            
            ant(k).x(l)=N{l}(j);
            
        end
        
        [ant(k).Cost ant(k).Sol]=CostFunction(ant(k).x);
        
        if ant(k).Cost<BestAnt.Cost
            BestAnt=ant(k);
        end
        
    end
    
    % Update Phromones
    for k=1:nAnt
        
        tour=ant(k).Tour;
        
        for l=1:nVar
            
            tau{l}(tour(l))=tau{l}(tour(l))+Q/ant(k).Cost;
            
        end
        
    end
    
    % Evaporation
    for l=1:numel(tau)
        tau{l}=(1-rho)*tau{l};
    end
    
    % Store Best Cost
    BestCost(it)=BestAnt.Cost;
    
    % Show Iteration Information
    disp(['Iteration ' num2str(it) ': Best Cost = ' num2str(BestCost(it))]);

end

%% Results

figure;
plot(BestCost,'LineWidth',2);
xlabel('Iteration');
ylabel('Best Cost');

