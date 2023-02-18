clc;
clear;
close all;

%% Problem Definition

model=CreateModel();

model.w(2,5)=-1000;
model.w(5,2)=model.w(2,5);

model.w(4,7)=2000;
model.w(7,4)=model.w(4,7);

CostFunction=@(p) MyCost(p,model);

nVar=model.n;


%% ACO Parameters

MaxIt=300;      % Maximum Number of Iterations

nAnt=40;        % Number of Ants (Population Size)

Q=1;

tau0=1;         % Initial Phromone

alpha=1;        % Phromone Exponential Weight

rho=0.05;       % Evaporation Rate


%% Initialization

tau=tau0*ones(model.m,nVar);

BestCost=zeros(MaxIt,1);    % Array to Hold Best Cost Values

% Empty Ant
empty_ant.Tour=[];
empty_ant.Cost=[];

% Ant Colony Matrix
ant=repmat(empty_ant,nAnt,1);

% Best Ant
BestAnt.Cost=inf;


%% ACO Main Loop

for it=1:MaxIt
    
    % Move Ants
    for k=1:nAnt
        
        ant(k).Tour=[];
        
        for l=1:nVar
            
            P=tau(:,l).^alpha;
            
            P(ant(k).Tour)=0;
            
            P=P/sum(P);
            
            j=RouletteWheelSelection(P);
            
            ant(k).Tour=[ant(k).Tour j];
            
        end
        
        ant(k).Cost=CostFunction(ant(k).Tour);
        
        if ant(k).Cost<BestAnt.Cost
            BestAnt=ant(k);
        end
        
    end
    
    % Update Phromones
    for k=1:nAnt
        
        tour=ant(k).Tour;
        
        for l=1:nVar
            
            tau(tour(l),l)=tau(tour(l),l)+Q/ant(k).Cost;
            
        end
        
    end
    
    % Evaporation
    tau=(1-rho)*tau;
    
    % Store Best Cost
    BestCost(it)=BestAnt.Cost;
    
    % Show Iteration Information
    disp(['Iteration ' num2str(it) ': Best Cost = ' num2str(BestCost(it))]);

    % Plot Solution
    figure(1);
    PlotSolution(BestAnt.Tour,model);
    
end

%% Results

figure;
plot(BestCost,'LineWidth',2);
xlabel('Iteration');
ylabel('Best Cost');

