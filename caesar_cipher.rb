

def caesar_cipher(string, number)
    puts "\n"


    code = string.bytes

    index = 0

    total = []

    while index < code.length
        
        if code[index] > 64
        code[index] += number.to_i
        end

        if (code[index].between?(30, 90)) != true && (code[index].between?(97, 122)) != true
            code[index] -= 26
        end
    
        total.append(code[index].chr)
        index += 1
    end

    puts total.join('')
    
    
end

# Takes an input and checks if it is only strings
puts "What is the string?"
stringInput = gets.chomp

while (stringInput.count("0-9") > 0) == true
    puts "Has number, try again"
    stringInput = gets.chomp
end

# Takes an input and checks if it is only numbers
puts "What is the shift factor?"
intInput = gets.chomp


while intInput !~ /[1-9]/
    puts "Invalid Input, try again"
    intInput = gets.chomp
end

caesar_cipher(stringInput, intInput)



