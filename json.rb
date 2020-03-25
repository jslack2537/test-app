require 'json'
file = File.read('public/people.json')
data_hash = JSON.parse(file)
myHash = JSON.parse(File.read('public/people.json'))

def format(myHash)
    records = Hash.new
    records.each do |key, value|
      records[:encrypted_password] = '#$taawktljasktlw4aaglj'
    end
    puts records
end