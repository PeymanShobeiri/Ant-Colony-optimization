# Ant-Colony-optimization
The Ant Colony optimization (ACO) meta-heuristic is a popular technique for solving computational optimization problems, which was firstly introduced by Dorigo in 1992. ACO is simulated by the behavior of real ant colonies finding the shortest path between their nest and a food source. When a group of ants searches for a food source, they deposit pheromone on their way. Therefore, they can communicate with each other and follow the trails of the other ants to the food source. As more ants travel through the same path, the intensity of the pheromone increases, and as the pheromone evaporates, the intensity decreases. Through this process, the ants can identify the shortest path to the food source by following the path with the most pheromones.

# Classic ACO problems in this repository :
1) Traveling salesman problem (TSP)
2) 0-1 knapsack problem (integer knapsack problem)
3) multi-objective knapsack problem

# In each file you find : 
1. RouletteWheelSelection.m : This is the implementation of Roulette Wheel which been use in order choose the random neighbor.
2. CreateModel.m : The basic information for problem such as location of the cities in the TSP
3. MyCost.m : The cost function for that particular problem 
4. PlotSolution.m (optinal) : Implementation for graphical plots
5. aco.m : The main implementation for aco 
