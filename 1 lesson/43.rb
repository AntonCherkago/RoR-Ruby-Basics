# Дан целочисленный массив. Найти максимальный четный элемент
array = [1, 14, 13, 20, 75]
a = array.find_all{ |elem| elem % 2 == 0 }.max
puts a
