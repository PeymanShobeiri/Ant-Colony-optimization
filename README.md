## About Ant Colony Optimization

The Ant Colony Optimization (ACO) meta-heuristic is a popular technique for solving computational optimization problems, which was first introduced by Dorigo in 1992. ACO is simulated by the behavior of real ant colonies finding the shortest path between their nest and a food source. When a group of ants searches for a food source, they deposit pheromones on their way. Therefore, they can communicate with each other and follow the trails of the other ants to the food source. As more ants travel along the same path, the intensity of the pheromone increases, and as the pheromone evaporates, the intensity decreases. Through this process, the ants can identify the shortest path to the food source by following the path with the most pheromones.

Note : There is a brief presentation on Ant Colony Optimization in the ACO.pdf.

![](https://33333.cdn.cke-cs.com/kSW7V9NHUXugvhoQeFaf/images/25eaed392334944c71f549e8dc8dc3d1fd844e45a9f4937d.png)

---

### Classic ACO problems in this repository :

*   **Traveling salesman problem (TSP)**

> The traveling salesman problem (TSP) asks the following question: "Given a list of cities and the distances between each pair of cities, what is the shortest possible route that visits each city exactly once and returns to the origin city?"

*   **0-1 knapsack problem (integer knapsack problem)**

> The classical knapsack problem is defined as follows. Given a set of n items numbered from 1 up to n, each with a weight wi and a value vi, along with a maximum weight capacity W, and a 0/1 binary value xi indicating whether item i is selected or not, the goal is to find out all the items subject to the maximum weight capacity that maximize the total value.

*   **Multi-objective knapsack problem**

> It is the same as the 0-1 knapsack problem, but here you can choose 1, 2, 3, … of the same object.

---

### In each file you find :

1\. RouletteWheelSelection.m : This is the implementation of the Roulette Wheel which has been used in order to choose a random neighbor.  
2\. CreateModel.m : The basic information for a problem such as the location of the cities in the TSP  
3\. MyCost.m : The cost function for that particular problem   
4\. PlotSolution.m (optional) : Implementation of graphical plots  
5\. aco.m : The main implementation of aco

---

### How To Run:

Open the file on MATLAB and run the aco.m file. In order to change the basic information, alter the CreateModel.m file.
