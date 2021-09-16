def palindrome?(string)
    string_array = string.chars
    reverse_string_array = string_array.reverse

    confirm = true

    reverse_string_array.each_with_index do |char, index|
        if char != string_array[index]
            confirm = false
            break
        end
    end

    confirm
end