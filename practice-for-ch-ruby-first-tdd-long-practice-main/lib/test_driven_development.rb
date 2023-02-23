def my_uniq(arr)
    new_arr = []
    arr.each do |ele|
        new_arr << ele if !new_arr.include?(ele)
    end
    new_arr
end

class Array
    def two_sum
        new_arr = []
        (0...self.length).each do |i|
            (i+1...self.length).each do |j|
                new_arr << [i, j] if self[i] + self[j] == 0
            end
        end
        new_arr
    end
end

def my_transpose(arr)
    row = arr.length
    col = arr[0].length
    new_arr = Array.new(row) {Array.new(col, [])}

    (0...row).each do |i|
        (0...col).each do |j|
            new_arr[i][j] = arr[j][i]
        end 
    end
    new_arr
end