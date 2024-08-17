# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

spinner = TTY::Spinner.new('[:spinner] Cadastrando moedas', format: :dots)
spinner.auto_spin

coins = [
  {
    description: 'Bitcoin',
    acronym: 'BTC',
    url_image: 'https://cryptologos.cc/logos/bitcoin-sv-bsv-logo.png'
  },

  {
    description: 'Ethereum',
    acronym: 'ETH',
    url_image: 'https://cryptologos.cc/logos/ethereum-eth-logo.png'
  },

  {
    description: 'Dash',
    acronym: 'DASH',
    url_image: 'https://cryptologos.cc/logos/dash-dash-logo.png'
  },

  {
    description: 'Solana',
    acronym: 'SOL',
    url_image: 'https://cryptologos.cc/logos/solana-sol-logo.png'
  },

  {
    description: 'Near',
    acronym: 'NEAR',
    url_image: 'https://cryptologos.cc/logos/near-protocol-near-logo.png'
  }
]

coins.each do |coin|
  Coin.find_or_create_by!(coin)
end

spinner.success('(Concluído!)')

spinner = TTY::Spinner.new('[:spinner] Cadastrando tipos de mineração', format: :dots)
spinner.auto_spin

minig_types = [
  { name: 'Proof of Work', acronym: 'PoW' },
  { name: 'Proof of Stake', acronym: 'PoS' }
]

minig_types.each do |minig_type|
  MinigType.find_or_create_by!(minig_type)
end

spinner.success('(Concluído!)')
