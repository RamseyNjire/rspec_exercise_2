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


def substrings(string)
    substring_array = []

    string_array = string.chars

    until string_array.length == 0

        count = 1
        string_array.length.times do
            substring_array << string_array[0, count].join("")
            count += 1
        end

        string_array.shift

    end

    substring_array

end

def palindrome_substrings(string)
    substring_array = substrings(string)

    substring_array.select do |string|
        palindrome?(string) if string.length > 1
    end
end