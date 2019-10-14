# Дан целочисленный массив. Необходимо вывести вначале его элементы с нечетными индексами, а затем - четными.
my_array_2 = [3, 14, 19, 1, 7, 4, 2, 90]
c = my_array_2.select.with_index { |_, index| index.odd? } + my_array_2.select.with_index { |_, index| index.even? }
puts c
