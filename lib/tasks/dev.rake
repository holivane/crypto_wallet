namespace :dev do
  desc 'Configura o ambiente de desenvolvimento'
  task setup: :environment do
    if Rails.env.development?
      show_spinner('Apagando DB', 'Banco de Dados apagado!') { `rails db:drop` }
      show_spinner('Criando DB', 'Banco de Dados criado!') { `rails db:create` }
      show_spinner('Migrando as tabelas', 'Tabelas migradas!') { `rails db:migrate` }
      show_spinner('Populando as tabelas', 'Tabelas populadas!') { `rails db:seed` }
    else
      puts 'Você não está em ambiente de desenvolvimento!'
    end
  end

  def show_spinner(message, message_end = 'Concluído!')
    spinner = TTY::Spinner.new("[:spinner] #{message}", format: :dots)
    spinner.auto_spin
    yield
    spinner.success("(#{message_end})")
  end
end
