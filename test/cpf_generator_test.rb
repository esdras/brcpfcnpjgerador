require 'rubygems'
require 'test/unit'
require 'test_notifier'
require 'cpf_generator.rb'

class CpfGeneratorTest < Test::Unit::TestCase
  
  def test_deve_gerar_um_cpf_valido_sempre
    #é o suficiente?
    100.times do
      assert(Cpf.gerar.valido?)
    end
  end

  #sei que isso eh aleatório e existe uma chance mínima desse teste falhar
  def test_deve_gerar_numeros_diferentes
    100.times do
      assert(Cpf.gerar != Cpf.gerar)
    end
  end


end

