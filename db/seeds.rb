require 'json'
encrypted_password = '#$taawktljasktlw4aaglj'
file = File.read('db/people.json')
data_hash = JSON.parse(file, symbolize_names: true)
records = JSON.parse(File.read('db/people.json'))
records.each do |record| 
    record['encrypted_password'] = encrypted_password
    user = User.create!(record.except('logins'))
    user.logins.create(record['logins'])

end