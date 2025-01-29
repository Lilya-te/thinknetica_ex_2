# Сумма покупок.
# Пользователь вводит поочередно название товара, цену за единицу и кол-во купленного товара (может быть нецелым числом).
# Пользователь может ввести произвольное кол-во товаров до тех пор, пока не введет "стоп" в качестве названия товара.
# На основе введенных данных требуетеся:
#                                                                                                                                                                                                                                                                                         Заполнить и вывести на экран хеш, ключами которого являются названия товаров, а значением - вложенный хеш, содержащий цену за единицу товара и кол-во купленного товара. Также вывести итоговую сумму за каждый товар.
#   Вычислить и вывести на экран итоговую сумму всех покупок в "корзине".

cheque = 0

loop do
  puts "Position Name:"
  name = gets.chomp
  break if name == 'stop'

  (puts "Couldn't be empty!"; next) if name.nil?

  puts "Price:"
  price = gets.chomp.to_f

  (puts "Couldn't be less then zero!"; next) unless price > 0

  puts "Count:"
  count = gets.chomp.to_f

  (puts "Couldn't be less then zero!"; next) unless count > 0

  cheque += price * count
end

puts "Your purchase is #{cheque}"