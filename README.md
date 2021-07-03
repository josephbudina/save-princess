# Bot Saves Princess SESAC Challenge

The files that are labeled sp1_hackerrank_solution and sp2_hackerrank_solution contain the both solutions that are ready to be copy and pasted straight into the hacker rank IDE.

### Table of Contents
- [How To Install](#how-to-install)
- [Testing](#testing)
- [Gemfile](#gemfile)
- [Solving The Problem](#solving-the-problem)
- [Solving Bot Saves Princess 1](#solving-bot-saves-princess-1)
- [Solving Bot Saves Princess 2](#solving-bot-saves-princess-2)

## How To Install

```
git clone git@github.com:josephbudina/save-princess.git
cd bot_saves_princess
bundle install
```

## Testing

```
bundle exec rspec
```
<img width="896" alt="Screen Shot 2021-07-03 at 3 07 17 PM" src="https://user-images.githubusercontent.com/52386927/124366895-5d6dda80-dc10-11eb-8db0-1dbd0bddbfb3.png">
100% test coverage with RSpec

## Gemfile

- RSpec
- Pry
- Simplecov

## Solving The Problem

### Repo Architecture
I chose to follow Ruby conventions as taught by Turing School of Software & Design for this project.

<img width="420" alt="Screen Shot 2021-07-03 at 3 17 37 PM" src="https://user-images.githubusercontent.com/52386927/124367121-d0c41c00-dc11-11eb-9af1-3de4c45ada42.png">

## Solving Bot Saves Princess 1

For this problem I initially tried to break down each component into a different class such grid and save princess, but after solving it this way I found a much more concise solution. Instead of creating and saving a grid object I found it much easier to just create a method that locates which corner of the grid the princess is located then make a calculation that gives a number of moves it takes to get there based on the size of the grid.

<img width="574" alt="Screen Shot 2021-07-03 at 3 27 05 PM" src="https://user-images.githubusercontent.com/52386927/124367285-2220db00-dc13-11eb-9b65-e32388d9736e.png">

## Solving Bot Saves Princess 2

For this problem I chose to use a similar layout to the first problem by only creating one class. In order to locate the princess I iterated through the grid using each with index so that I could grab the row that contains the letter p and broke each character in that row into an array to find the index of the p to get the column coordinate. In order to find the distance between my character and the princess I just subtracted my coordinates from the princess and then used that distance calculation to find the next move with an if else conditional. The logic behind this conditional is that if the horizontal distance is negative than the character moves left and right if not. It is the same logic for vetical distance as well.

<img width="833" alt="Screen Shot 2021-07-03 at 3 41 00 PM" src="https://user-images.githubusercontent.com/52386927/124367516-13d3be80-dc15-11eb-82bc-a3d49b468e21.png">

