words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

arr = {}

words.each do |word|
  key = word.split('').sort.join
  if arr.has_key?(key)
    arr[key].push(word)
  else
    arr[key] = [word]
  end
end

arr.each_value do |x|
  puts
  p x
end
