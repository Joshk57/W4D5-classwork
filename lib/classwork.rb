
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

