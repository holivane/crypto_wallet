namespace :dev do
  desc 'Configura o ambiente de desenvolvimento'
  task setup: :environment do
    if Rails.env.development?
      spinner = TTY::Spinner.new('[:spinner] Apagando DB...', format: :dots)
      spinner.auto_spin
      `rails db:drop`
      spinner.success('Banco de Dados apagado!')

      spinner = TTY::Spinner.new('[:spinner] Criando DB...', format: :dots)
      `rails db:create`
      spinner.success('Banco de Dados criado')

      spinner = TTY::Spinner.new('[:spinner] Migrando as tabelas...', format: :dots)
      `rails db:migrate`
      spinner.success('Tabelas migradas!')

      spinner = TTY::Spinner.new('[:spinner] Populando as tabelas...', format: :dots)
      `rails db:seed`
      spinner.success('Tabelas populadas!')
    else
      puts 'Você não está em ambiente de desenvolvimento!'
    end
  end
end
