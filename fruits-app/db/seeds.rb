fruits = ['Mango', 'Pinapple', 'Passion fruit', 'Dragon fruit']

fruits.each{|fruit| Fruit.create(name: fruit, description:"I am delicious #{fruit}.")}