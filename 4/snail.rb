def snail(array)
  answer = []
  arr = array.clone

  right_row = 0
  left_row  = arr.length - 1

  until arr.flatten == []
    
    #goin right
    while arr[right_row][0]
      answer.push(arr[right_row][0])
      arr[right_row].delete_at(0)
    end
    right_row += 1

    #goin down  
    arr.each do |row|
      if row.last
        answer.push(row.last)
        row.delete_at(row.size - 1)
      end
    end

    #goin left
    while arr[left_row] && arr[left_row].last
      answer.push(arr[left_row].last)
      arr[left_row].delete_at(arr[left_row].size - 1)
    end
    left_row -= 1

    #goin up
    arr.reverse.each do |row|
      if row.first
        answer.push(row.first)
        row.delete_at(0)
      end
    end
  end
  answer
end




