words = [
  'ruby',
  'rails',
  'ruby',
  'api',
  'rails',
  'ruby',
  'docker',
  'api',
  'ruby'
]

counter = Hash.new(0)
words.each do |word|
  counter[word] += 1
end

puts counter
