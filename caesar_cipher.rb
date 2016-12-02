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
    to_cipher.each_with_index do |char, index|
        if is_alpha(char)
            if is_lower(char)
                ckey = (char.ord - 'a'.ord + cipher_key) % 26 + 97
                to_cipher[index] = (ckey).chr
            end
            if is_upper(char)
                ckey = (char.ord - 'A'.ord + cipher_key) % 26 + 65
                to_cipher[index] = (ckey).chr
            end
        end
    end
end

#test vanilla
puts caesar_cipher("ab").join("")

#test key of 3
puts caesar_cipher("ab",3).join("")

#test spaces
puts caesar_cipher("hello my name is bob the builder").join("")

#test capital differentation
puts caesar_cipher("JoKeR").join("")

#test special chars
puts caesar_cipher("!!!!hi!!!!").join("")