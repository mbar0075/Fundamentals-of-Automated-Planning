# Fundamentals of Automated Planning
 
# Author
**Matthias Bartolo 0436103L**

## Preview:
<p align='center'>
  <img src="https://github.com/mbar0075/Fundamentals-of-Automated-Planning/assets/103250564/95b8f834-75c2-49d7-ad9a-bef98d041093" style="display: block; margin: 0 auto; width: 40%; height: auto;"></br>
  <img src="https://github.com/mbar0075/Fundamentals-of-Automated-Planning/assets/103250564/70c35f1c-9bf2-4c2f-9b86-fd6a681a6cf2" style="display: block; margin: 0 auto; width: 40%; height: auto;">
  <img src="https://github.com/mbar0075/Fundamentals-of-Automated-Planning/assets/103250564/e226658b-2d7f-40e8-bca2-ffb572ec410f"  style="display: block; margin: 0 auto; width: 41%; height: auto;">
</p>

## Description of Task:

### Task 1: Sliding Tile Puzzle Solver

<p align='center'>
  <img src="https://github.com/mbar0075/Fundamentals-of-Automated-Planning/assets/103250564/4c6cb3d4-3d92-4e5e-8317-8212850b972a" style="display: block; margin: 0 auto; width: 20%; height: auto;"></br>
</p>

The task involved the development of a solver for the 8-tile version of the **Sliding Tile puzzle**. The solver implemented various search strategies, which could be selected by the user through configuration or the command line. The supported search strategies included:

**1. Breadth First Search** <br>
**2. Greedy Best First Search** <br>
**3. A\* Search** <br>
**4. Enforced Hill Climbing** <br>

Each search strategy required a **heuristic evaluation**, which was provided in two options: **Number of Misplaced Tiles** and **Manhattan Distance**. These heuristics guided the search process to find optimal or near-optimal solutions.

To ensure the solver didn't encounter an infinite loop, measures were taken to avoid revisiting previously explored states. The solver aimed to find a solution by applying the chosen search strategy and heuristic evaluation.

After obtaining a plan from the search algorithm, a validation step was performed. The initial board configuration was used, and each action in the plan was applied to generate successor board states. The final board state should match the defined goal state, indicating a valid solution.

The program provided essential output information, including the plan itself (a sequence of moves), the length of the plan, the number of unique states generated (both expanded and unexpanded), the total time taken to find the solution, and the result of the Plan Validation step (valid or not).

By utilizing the Sliding Tile puzzle solver, users could effectively solve the 8-tile version of the puzzle using different search strategies and heuristic options, facilitating exploration and comparison of various solving techniques.

<p align='center'>
  <img src="https://github.com/mbar0075/Fundamentals-of-Automated-Planning/assets/103250564/b31b24e5-2736-4ddc-99c5-4e3b5d1ed133" style="display: block; margin: 0 auto; width: 70%; height: auto;"></br>
</p>

### Task 2: Planning Domain Definition Language (PDDL) Model and Problems

This task involves the creation of a PDDL domain model for the sliding tile puzzle, adaptable to any puzzle size. The PDDL domain model defines the actions and predicates necessary to represent the puzzle and its rules.

In addition to the domain model, four simple PDDL problems need to be created for the 8-tile sliding puzzle. These problems should require only two or three moves and make use of all four actions: left, right, up, and down. The problems are named problem1, problem2, problem3, and problem4.

Furthermore, two more challenging PDDL problems need to be created for specific board configurations represented by Figure 3 and Figure 4. These problems, named problem5-hard and problem6-hard, present more complex scenarios for the solver to handle.

For each problem, the plan length, number of states discovered, and the time taken for the online solver to find the solution should be recorded. The results can be visualized using appropriate tools, similar to the visual representations used in Part 1.


### Evaluation:
The comparison between the domain-specific solver and the domain-independent planner revealed differences in the plan length and number of states explored during the search process. The choice of search strategy and heuristics significantly influenced the length of generated plans, with some strategies producing shorter plans than others. Similarly, the number of explored states varied, with exhaustive strategies like Breadth First Search exploring more states compared to other approaches. The domain-specific solver capitalized on specialized strategies and heuristics, while the domain-independent planner offered a more general-purpose solution. The decision between the two approaches depends on the specific problem domain and the desired trade-offs between plan length and exploration efficiency.


## Deliverables:
The repository includes a Dynamic Sliding Puzzle Solver, utilising various different configurations<br />
