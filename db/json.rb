require 'json'
file = File.read('people.json')
data_hash = JSON.parse(file)

records = JSON.parse(File.read('people.json'))
records.each do |record|
User.create!(record)
end