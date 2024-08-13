# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating Coins...'

Coin.create!(
  description: 'Bitcoin',
  acronym: 'BTC',
  url_image: 'https://cryptologos.cc/logos/bitcoin-sv-bsv-logo.png'
)

Coin.create!(
  description: 'Ethereum',
  acronym: 'ETH',
  url_image: 'https://cryptologos.cc/logos/ethereum-eth-logo.png'
)

Coin.create!(
  description: 'Dash',
  acronym: 'DASH',
  url_image: 'https://cryptologos.cc/logos/dash-dash-logo.png'
)

Coin.create!(
  description: 'Solana',
  acronym: 'SOL',
  url_image: 'https://cryptologos.cc/logos/solana-sol-logo.png'
)

Coin.create!(
  description: 'Near',
  acronym: 'NEAR',
  url_image: 'https://cryptologos.cc/logos/near-protocol-near-logo.png'
)

puts 'Coins created successfully!'
