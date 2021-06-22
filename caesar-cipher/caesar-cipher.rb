def caesar_cipher (plain_string, offset_size )
    
    cipher_array = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','ñ','o','p','q','r','s','t','u','v','w','x','y','z']
    new_string = ""

    for i_position in 0.. plain_string.length - 1  
    
        # obtener el caracter y su posicion en el alfabeto
        search_char = plain_string[i_position]
        is_upcase = search_char.ord >= 65 && search_char.ord <= 90 ? true : false
    
        if is_upcase # checks whether is UPCASE  then converts it to downcase
            search_char = plain_string[i_position].downcase
        end
    
        ciphered_char = plain_string[i_position] # declares the ciphered character as defult, when the characted is not found
    
        new_position = i_position # declares the new position with i_position default value
        
        for l_position in 0.. cipher_array.length - 1 # searchs through the entire cipher array for the current search character
        
            if search_char == cipher_array[l_position] # if the seach character is found, then gets the right new position
                
                new_position = l_position + offset_size
    
                if new_position >= cipher_array.length
                    new_position = new_position - cipher_array.length  # lets say the position is 27, then it should return 0
                end 
    
                ciphered_char = cipher_array[new_position]
            end
        end
        
        if is_upcase
            ciphered_char = ciphered_char.upcase
        end
            
        new_string = new_string << ciphered_char
    end

    return new_string
    
end



# gets user input and remover the backslash character at the end
user_string = gets.chomp

offset_size = gets.chomp.to_i

puts caesar_cipher(user_string, offset_size)


