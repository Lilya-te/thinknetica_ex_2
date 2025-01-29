# Заполнить массив числами фибоначчи до 100

arr = [1, 1]
(2..100).each { |i| arr << i if arr[-1] + arr[-2] == i }
puts arr.inspect