

def done_or_not(board)
  solution = [1,2,3,4,5,6,7,8,9]
  rows = board
  columns = Array.new(9) { |i| i = [] }
  square_regions = Array.new(9) { |i| i = [] }

  #row checker
  rows.each do |row|
    if row.sort != solution
      return "Try again"
    end
  end

  #column builder
  board.each do |row|
    0.upto(8) do |index|
      columns[index].push(row[index])
    end
  end

  #column checker
  columns.each do |column|
    if column.sort != solution
      return "Try again"
    end
  end

  # square region builder
  
  0.upto(8) do |i|
    0.upto(8) do |j|

      if i < 3
        if j < 3
          square_regions[0].push(board[i][j])
        elsif j < 6
          square_regions[1].push(board[i][j])
        else
          square_regions[2].push(board[i][j])
        end
      elsif i < 6
        if j < 3
          square_regions[3].push(board[i][j])
        elsif j < 6
          square_regions[4].push(board[i][j])
        else
          square_regions[5].push(board[i][j])
        end
      else
        if j < 3
          square_regions[6].push(board[i][j])
        elsif j < 6
          square_regions[7].push(board[i][j])
        else
          square_regions[8].push(board[i][j])
        end
      end

    end
  end



  #square region checker
  square_regions.each do |region| 
    if region.sort != solution
      return "Try again!"
    end
  end
  "Finished!"
end


# puts done_or_not([  [5, 3, 4, 6, 7, 8, 9, 1, 2], 
#                [6, 7, 2, 1, 9, 5, 3, 4, 8],
#                [1, 9, 8, 3, 4, 2, 5, 6, 7],
#                [8, 5, 9, 7, 6, 1, 4, 2, 3],
#                [4, 2, 6, 8, 5, 3, 7, 9, 1],
#                [7, 1, 3, 9, 2, 4, 8, 5, 6],
#                [9, 6, 1, 5, 3, 7, 2, 8, 4],
#                [2, 8, 7, 4, 1, 9, 6, 3, 5],
#                [3, 4, 5, 2, 8, 6, 1, 7, 9] ])