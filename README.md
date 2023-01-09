## About Ant Colony Optimization

  
The Ant Colony Optimization (ACO) meta-heuristic is a popular technique for solving computational optimization problems, which was first introduced by Dorigo in 1992. ACO is simulated by the behavior of real ant colonies finding the shortest path between their nest and a food source. When a group of ants searches for a food source, they deposit pheromones on their way. Therefore, they can communicate with each other and follow the trails of the other ants to the food source. As more ants travel along the same path, the intensity of the pheromone increases, and as the pheromone evaporates, the intensity decreases. Through this process, the ants can identify the shortest path to the food source by following the path with the most pheromones.

![](https://33333.cdn.cke-cs.com/kSW7V9NHUXugvhoQeFaf/images/25eaed392334944c71f549e8dc8dc3d1fd844e45a9f4937d.png)

### Classic ACO problems in this repository :

1.  Traveling salesman problem (TSP)
2.  0-1 knapsack problem (integer knapsack problem)
3.  Multi-objective knapsack problem

###  In each file you find :

  
1\. RouletteWheelSelection.m : This is the implementation of the Roulette Wheel which has been used in order to choose a random neighbor.  
2\. CreateModel.m : The basic information for a problem such as the location of the cities in the TSP  
3\. MyCost.m : The cost function for that particular problem   
4\. PlotSolution.m (optional) : Implementation of graphical plots  
5\. aco.m : The main implementation of aco

###  How To Run:

  
Open the file on MATLAB and run the aco.m file. In order to change the basic information, alter the CreateModel.m file.
