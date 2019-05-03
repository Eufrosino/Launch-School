produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(hash)
  product = {}
  hash_keys = hash.keys
  hash_values = hash.values
  counter = 0

  loop do
    current_key = hash_keys[counter]
    current_value = hash_values[counter]
    if current_value == 'Fruit'
      product[current_key] = current_value
    end
    counter += 1
    break if counter == hash_keys.length
  end

  product
  end

puts select_fruit(produce)
