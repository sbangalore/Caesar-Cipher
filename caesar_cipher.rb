#checks if string is only alphabets through regex
def is_alpha(str)
    str[/[a-zA-Z]+/] == str
end

#checks if string is uppercase through regex
def is_upper(str)
    str[/[A-Z]+/] == str
end

#checks if string is lowercase through regex
def is_lower(str)
    str[/[a-z]+/] == str
end

#reference ASCII codes for numbers
def caesar_cipher(input, cipher_key=1)
    to_cipher = input.split('')
    to_cipher.each do |char, index|
        if is_alpha(char)
            if is_lower(char)
                ckey = (char.ord - 'a'.ord + cipher_key) % 26 + 97
                to_cipher[index] = (ckey).ch
            end
            if is_upper(char)
                ckey = (char.ord - 'A'.ord + cipher_key) % 26 + 65
                to_cipher[index] = (ckey).ch
            end
        end
    end
end
    
puts "Test 1"
caesar_cipher("ab", 1)