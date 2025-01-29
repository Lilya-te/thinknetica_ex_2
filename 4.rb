# Заполнить хеш гласными буквами,
# где значением будет являтся порядковый номер буквы в алфавите (a - 1).
vowels = ['а', 'е', 'ё', 'и', 'о', 'у', 'э', 'ю', 'я']

vowels_hash = {}

('а'..'я').each_with_index {|letter, ind| vowels_hash[letter] = ind + 1 if vowels.include?(letter)}
puts vowels_hash