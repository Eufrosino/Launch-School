hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

ans = []

hsh.each do |item, details|
  details[:colors].select do |color|
    color.capitalize!
  end
  ans << details[:colors] if details[:type] == 'fruit'
  ans << details[:size].upcase if details[:type] == 'vegetable'
end

p ans
