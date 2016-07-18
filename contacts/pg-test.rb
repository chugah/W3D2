require 'pg'

puts 'Connecting to the database...'

conn = PG.connect(
  host: 'localhost',
  dbname: 'contacts',
  user: 'devone',
  password: 'devone'
)

puts 'Finding contacts...'
conn.exec('SELECT * FROM contacts;') do |results|
  #results is a collection (array) of records (hashes)
  results.each do |contact|
    puts contact.inspect
  end
end

puts 'Closing the connection...'
conn.close

puts 'DONE'