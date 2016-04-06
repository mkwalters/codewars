



# this is a function that multiplies n x n matrices

# if you would like to let the f multiply 
# m x n, start by changton dimension to:
# dimension => m = a.size and n = a[0].size


def matrix_mult(a, b)
  
  dimension = a.size - 1
  answer = []
  (dimension + 1).times { answer.push([]) }

  0.upto(dimension) do |row|
    0.upto(dimension) do |column|
      ij_value = 0
      0.upto(dimension) do |i|
        ij_value += a[row][i] * b[i][column]
      end
      answer[row].push(ij_value)
    end
  end
  answer
 
end



matrix1 = [ [1,2,3] , [4,5,6] , [7,9,0] ]
matrix2 = [ [7,8,9] , [10,11,12] , [5,6,2] ]



puts matrix_mult(matrix1, matrix2)