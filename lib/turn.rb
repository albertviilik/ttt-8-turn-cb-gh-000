def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
  if position_taken?(board, index)
    return nil
  elsif index < 0 || index > 8
    return nil
  else
    return true
  end
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " "
    return nil
  else
    return true
  end
end

def move(board, index, player = "X")
  if valid_move?(board, index)
    board[index] = player
    display_board(board)
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = input_to_index(gets.to_i)
  if valid_move?(board, input)
    move(board, input)
  else
    while true
      puts "Please enter 1-9:"
      input = input_to_index(gets.to_i)
      if valid_move?(board, input)
        move(board, input)
        break
      end
    end
  end
end
