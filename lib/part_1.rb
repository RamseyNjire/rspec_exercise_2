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

def merge(hash_1, hash_2)
    merge_hash = hash_1.dup
    hash_2.each do |key, value|
        merge_hash[key] = value
    end
    merge_hash
end

def censor(sentence, curse_word_array)
    vowel_array = %w(a e i o u A E I O U)

    sentence_array = sentence.split(" ")

    sentence_array.map! do |word|
        if curse_word_array.include?(word.downcase)
            word.chars
        else
            word
        end
    end

    sentence_array.map! do |word|
        if word.is_a? Array
            word.map! do |letter|
                if vowel_array.include?(letter)
                    "*"
                else
                    letter
                end
            end
            word.join("")
        else
            word
        end
    end


    sentence_array.join(" ")
end