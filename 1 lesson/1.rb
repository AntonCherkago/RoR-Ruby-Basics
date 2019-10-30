# Дан целочисленный массив. Необходимо вывести вначале его элементы с четными индексами, а затем - с нечетными
my_array = [1, 2, 18, 14, 10, 3]
b = my_array.select.with_index { |_, index| index.even? } + my_array.select.with_index { |_, index| index.odd? }
puts b
