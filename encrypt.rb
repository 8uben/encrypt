require 'digest'

puts 'Введите слово или фразу для шифрования:'
string = STDIN.gets.chomp

puts <<~WAYS
  Каким способом зашифровать:
  1. MD5
  2. SHA1
WAYS

user_choice = STDIN.gets.chomp.to_i

puts
puts 'Вот что получилось:'

result =
  case user_choice
  when 1 then Digest::MD5.hexdigest(string)
  when 2 then Digest::SHA1.hexdigest(string)
  else 'Вы не ввели цифру соответствующую нужному варианту шифрования'
  end

puts result
