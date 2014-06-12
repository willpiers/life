Life
=========

This is a ruby-based command line implementation of John Conway's [Game of Life](https://en.wikipedia.org/wiki/Conway's_Game_of_Life)

Requirements
--
  - The game was built with ruby 2.1.0
  - Should work fine with any version >= 2.0.0
  - You'll need a command line interface equivalent to terminal on Mac OS X

Installation
--
```
git clone https://github.com/willpiers/life.git
cd life
bundle install
```

Tests
--
  - Testing is done with rspec

Run all tests with
```
rspec spec
```

Changing initial configuration
--
To change the initial configuration on which the program operates, take a look at /starting_matrix.txt and modify the matrix of zeroes and ones.

Run Simulation
--
```
ruby run.rb
```
At this point you will be presented with the familiar tic-tac-toe board. You'll choose whether you want to play a friend or the computer, and whether or not you'd like to go first. Then, you'll use the 1-9 keys to make your moves.

#### Have Fun!
