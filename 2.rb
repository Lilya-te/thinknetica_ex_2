# Заполнить массив числами от 10 до 100 с шагом 5

arr = []
(1..100).each { |i| arr << i if i % 5 == 0 }
puts arr.inspect