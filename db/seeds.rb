# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'json'
encrypted_password = '#$taawktljasktlw4aaglj'
file = File.read('db/people.json')
data_hash = JSON.parse(file)
records = JSON.parse(File.read('db/people.json'))

records.each do |record|
    records['encrypted_password' => encrypted_password]
    user = User.create!(record.except('logins'))
    user.logins.create(record['logins'])

end