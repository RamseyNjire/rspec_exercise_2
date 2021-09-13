def partition(array, number)
    less_than_array = []
    greater_than_array = [] # technically "greater than or equals to"

    holding_array = []

    array.each do |element|
        element >= number ? greater_than_array << element : less_than_array << element
    end

    holding_array << less_than_array
    holding_array << greater_than_array
end