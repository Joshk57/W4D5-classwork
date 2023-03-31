
def uniq?(array)
    # return [] if array.empty?
    array.uniq
end

def my_uniq(array)
    hash = Hash.new(0)

    array.each do |num|
        hash[num] += 1
    end
    hash.keys
end

class Array 
    def two_sum
        newArr = []
        self.each_with_index do |ele1,idx1|
            self.each_with_index do |ele2, idx2|
                if ele1 + ele2 == 0 && idx2 > idx1
                    newArr << [idx1,idx2]
                end
            end
        end
        newArr
    end
end

def my_transpose(array)
    array.transpose
end
