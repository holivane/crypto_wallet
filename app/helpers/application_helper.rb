# frozen_string_literal: true

# Helper da aplicação
module ApplicationHelper
  def date_br(date_us)
    date_us.strftime('%d/%m/%Y')
  end

  def locale
    I18n.locale == :en ? 'Inglês dos Estados Unidos' : 'Português do Brasil'
  end

  def rails_environment
    if Rails.env.development?
      'Desenvolvimento'
    elsif Rails.env.production?
      'Produção'
    else
      'Teste'
    end
  end
end
