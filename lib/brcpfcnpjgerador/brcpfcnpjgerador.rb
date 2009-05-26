require 'rubygems'
module CpfCnpj

  def self.included(base)
    base.extend(ClassMethods)
  end
 
  module ClassMethods

    def gerar
      return gerar_cpf if self.name == "Cpf"
      return gerar_cnpj if self.name == "Cpnj"
    end

    private

    def gerar_cpf
      di = digitos_iniciais
      p_d_v = gerar_primeiro_digito_verificador(di)
      s_d_v = gerar_segundo_digito_verificador(di + [p_d_v])
      self.new((di + [p_d_v] + [s_d_v]).to_s)
    end

    def gerar_cnpj
      #TODO
    end

    #auxilares na geração do cpf

    def gera_digito_verificador(array, ordem)
      aux = ordem == 1 ? 11 : 12
      soma = array.collect {|e|aux -= 1; e *= aux}.inject(0) {|r, e| r + e}
      resto = soma % 11
      return resto < 2 ? 0 : 11 - resto
    end

    def digitos_iniciais
      Array.new(9).collect {|e| e = rand(10)}
    end

    def gerar_primeiro_digito_verificador(array)
      gera_digito_verificador(array, 1)
    end

    def gerar_segundo_digito_verificador(array)
      gera_digito_verificador(array, 2)
    end

  end
end

require 'brcpfcnpj.rb'

