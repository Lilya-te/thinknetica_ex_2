# Заданы три числа, которые обозначают число, месяц, год (запрашиваем у пользователя).
# Найти порядковый номер даты, начиная отсчет с начала года.
# Учесть, что год может быть високосным.
# (Запрещено использовать встроенные в ruby методы для этого вроде Date#yday или Date#leap?)
# Алгоритм опредления високосного года => docs.microsoft.com
# Чтобы определить, является ли год високосным, выполните следующие действия =>
# 1 Если год делится на 4 без остатка, перейдите на шаг 2. В противном случае перейдите к выполнению действия 5.
# 2 Если год делится на 100 без остатка, перейдите на шаг 3. В противном случае перейдите к выполнению действия 4.
# 3 Если год делится на 400 без остатка, перейдите на шаг 4. В противном случае перейдите к выполнению действия 5.
# 4 Год високосный (366 дней).
# 5 Год не високосный год (365 дней).

months = { 1 => 31, 2 => 28, 3 => 31, 4 => 30, 5 => 31, 6 => 30, 7 => 31, 8 => 31, 9 => 30, 10 => 31, 11 => 30, 12 => 31 }

puts "Day: "
day = gets.chomp.to_i

puts("Impossible day number!"); return unless (day >= 1 && day <= 31)

puts "Month number% "
mon = gets.chomp.to_i

(puts("Impossible month number!"); return) unless months.keys.include?(mon)

puts "Year number% "
year = gets.chomp.to_i

(puts("Impossible year number! Julian calendar took effect on 1 January 45 BC."); return) unless year >= -45

months[2] = 29 if (year % 4 == 0 && (!(year % 100 == 0 && year % 400 != 0) || year < 1582))

(puts("Impossible day!"); return) if day > months[mon]

day_num = 0
mon_num = 1

while mon_num < mon
  day_num += months[mon_num]
  mon_num += 1
end

day_num += day

puts "#{day}.#{mon}.#{year} day number is #{day_num}"