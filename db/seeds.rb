# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

spinner = TTY::Spinner.new('[:spinner] Cadastrando tipos de mineração', format: :dots)
spinner.auto_spin

mining_types = [
  { description: 'Proof of Work', acronym: 'PoW' },
  { description: 'Proof of Stake', acronym: 'PoS' },
  { description: 'Proof of Capacity', acronym: 'PoC' }
]

mining_types.each do |mining_type|
  MiningType.find_or_create_by!(mining_type)
end

spinner.success('(Concluído!)')

spinner = TTY::Spinner.new('[:spinner] Cadastrando moedas', format: :dots)
spinner.auto_spin

coins = [
  {
    description: 'Bitcoin',
    acronym: 'BTC',
    url_image: 'https://cryptologos.cc/logos/bitcoin-sv-bsv-logo.png',
    mining_type: MiningType.find_by(acronym: 'PoW')
  },

  {
    description: 'Ethereum',
    acronym: 'ETH',
    url_image: 'https://cryptologos.cc/logos/ethereum-eth-logo.png',
    mining_type: MiningType.all.sample
  },

  {
    description: 'Dash',
    acronym: 'DASH',
    url_image: 'https://cryptologos.cc/logos/dash-dash-logo.png',
    mining_type: MiningType.all.sample
  },

  {
    description: 'Solana',
    acronym: 'SOL',
    url_image: 'https://cryptologos.cc/logos/solana-sol-logo.png',
    mining_type: MiningType.all.sample
  },

  {
    description: 'Near',
    acronym: 'NEAR',
    url_image: 'https://cryptologos.cc/logos/near-protocol-near-logo.png',
    mining_type: MiningType.all.sample
  }
]

coins.each do |coin|
  Coin.find_or_create_by!(coin)
end

spinner.success('(Concluído!)')
