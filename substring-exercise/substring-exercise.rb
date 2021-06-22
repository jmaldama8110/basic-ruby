
def substrings (phrase, dictionary)

    # declare a new hash, and add some elements
    result_hash = Hash.new

    # .- Como convertir una cadena en un arreglo de palabras
    words_to_search = phrase.split

    # recorrer el arreglo de la cadena base
    words_to_search.each do |word| 

        count = 0 # counter set to 0, used to count the number of matches of each word searched
        dictionary.each do |word_compared|
                if word_compared.include?(word)
                    count += 1
                end
        end

        if count > 0
            result_hash[word] = count
        end

    end

    return result_hash
end


any_string = "You’re sitting in your cubicle, diligently working away (because you would never dream of slacking off at work), when lunch time rolls around. You need to grab a bite to eat, but how are you going to go about requesting food? For the purposes of this parable, you have two options: a vending machine or a nice restaurant.
If you were to go to the vending machine, you would see nice, orderly rows of food where each option is labeled with a number. These labels are the indices of the vending machine array. It’s important to note that the indices are not interchangeable: “12” will always come before “13” and after “11”. You request your food by using an index to tell the vending machine what you want. It understands the index and returns whatever lives in that spot. Mmmmm, nothing like a lunch of Flamin’ Hot Cheetos and Diet Coke! You are a programmer, after all"

dic_array = any_string.split
puts substrings( "the number word at or", dic_array)