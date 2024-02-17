require 'csv'

data = CSV.read('data.csv', headers: true)

data_hashes = data.map(&:to_h)

puts data_hashes
