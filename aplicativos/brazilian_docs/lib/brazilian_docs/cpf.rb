module BrazilianDocs
  class Cpf
    FORMATTED_REGEX = /^\d{3}\.\d{3}\.\d{3}-\d{2}$/
    UNFORMATTED_REGEX = /^\d{11}$/

    def self.valid_format?(cpf)
      return false if cpf.nil? || cpf.empty?

      # Remove espaços em branco
      cpf = cpf.strip

      # Verifica se está no formato xxx.xxx.xxx-xx
      formatted = FORMATTED_REGEX.match?(cpf)

      # Verifica se está no formato sem pontuação (11 dígitos)
      unformatted = UNFORMATTED_REGEX.match?(cpf)

      formatted || unformatted
    end

    def self.clean_format(cpf)
      cpf.gsub(/\D/, '')
    end
  end
end
