# Дан целочисленный массив. Вывести вначале все его четные элементы, а затем - нечетные
array = [1, 2, 3, 4, 5]
a = array.find_all{ |elem| elem % 2 == 0 }
b = array.find_all{ |elem| elem % 2 != 0 }
puts a
puts b
