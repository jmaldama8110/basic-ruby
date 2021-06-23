# >> stock_picker( [ 170,30,60,90,150,80,60,10,10] )
# 

# => [1,4]  # for a profit of $150 - $30 == $120
# ["lowest price (buy, happens first)", "highest price (sell, happens after)"]
# Quick Tips:

# You need to buy before you can sell
# Pay attention to edge cases like when the lowest day is the last 
# day or the highest day is the first day.


def maxmin_and_position (from_position,to_position, array,max_min_flag) # from and to positions are inclusive

    # validations for arguments to prevent misbehaviors

    if array.empty? || from_position > to_position || from_position < 0 || from_position < 0 || to_position > array.length - 1
        return {
            "value" => 0,
            "position" => 0
        }
    end

    if array.length == 1
        return {
            "value" => array[0],
            "position" => 0
        }
    end

    if from_position == to_position
        return {
            "value" => array[from_position],
            "position" => from_position
        }
    end
    
    # result of max o min is first assgined to the first element of the array as an initial value
    result = array[from_position]
    result_pos = from_position
    
    i = from_position
    k = to_position - 1

    while i <= k do
    
        i += 1
        price = array[i]

        if  max_min_flag ? price > result : price < result
            result = price
            result_pos = i
        end
        
    end # end of method definition

    return {
        "value" => result,
        "position" => result_pos
    }

    
    
end



def get_best_deal ( array )
    
    best_deal = Array.new(0)
    search_position = 0
    array_end = array.length - 1
    
    while search_position < array_end do
        
        max_data = maxmin_and_position(search_position, array_end, array, true ) # devuelve el hash con maximo y su posicion
        
        if max_data["position"] > 0
            search_upto = max_data["position"] - 1
            min_data = maxmin_and_position(0, search_upto, array, false )
            
            # puts "Lowest #{min_data["value"]}=> Day #{min_data["position"]} / Highest #{max_data["value"]}=>#{max_data["position"]} "
            best_deal[0] = min_data["position"]
            best_deal[1] = max_data["position"]

            search_position = array_end
        end
        
        search_position += 1
    end
    return best_deal
end


day_prices = [170,30,60,90,150,80,60,10,10]

puts get_best_deal(day_prices)