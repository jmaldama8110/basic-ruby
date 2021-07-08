# frozen_string_literal: true

# Some documentation this code in particular
data = [9, 1, 4, 2, 6, 1, 34, 9, 2, 5, 9, 3, 13, 7, 8, 2, 3]

max_iteration = data.length

loop do
  shift_max_iteration = 0

  i = 1
  while i <= max_iteration - 1

    a = data[i - 1]
    b = data[i]

    if a > b
      data[i - 1] = b
      data[i] = a
      shift_max_iteration = i # keeps the i position of the last "swap registered"
    end

    i += 1
  end

  max_iteration = shift_max_iteration # assigns the stored index valued previously at the last swap
  break if max_iteration <= 1
end

puts data
