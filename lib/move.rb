./bin/move executing a CLI Application
  defines a board variable (FAILED - 1)

Failures:

  1) ./bin/move executing a CLI Application defines a board variable
     Failure/Error: board = get_variable_from_file("./bin/move", "board")
     ArgumentError:
       wrong number of arguments (given 0, expected 1)
     # ./lib/move.rb:2:in `display_board'
     # ./spec/spec_helper.rb:21:in `get_variable_from_file'
     # ./spec/spec_helper.rb:11:in `eval'
     # ./spec/spec_helper.rb:11:in `get_variable_from_file'
     # ./spec/03_cli_spec.rb:9:in `block (2 levels) in <top (required)>'
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = input.to_i
  input = input - 1
  return input
end

def move(board, input, value = "X")
  board[input] = value
  return board
end