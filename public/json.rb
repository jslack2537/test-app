require 'json'
file = File.read('people.json')
data_hash = JSON.parse(file)
myHash = JSON.parse(File.read('people.json'))

def format(myHash)
    records = Hash.new
    records.each do |key, value|
      records[:encrypted_password] = '#$taawktljasktlw4aaglj'
    end
    puts records
end