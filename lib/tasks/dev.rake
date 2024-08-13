namespace :dev do
  desc 'Configura o ambiente de desenvolvimento'
  task setup: :environment do
    puts 'Configurando o ambiente de desenvolvimento...'
    puts `rails db:drop`
    puts `rails db:create`
    puts `rails db:migrate`
    puts `rails db:seed`
    puts 'Ambiente de desenvolvimento configurado!'
  end
end
