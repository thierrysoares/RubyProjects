Dir[File.join(File.dirname(__FILE__), '../pages/*_page.rb')].each { |file| require file}
#INSTANCIAMENTO DE TODAS AS CLASSES CRIADAS AFIM DE TRANSFORMA-LAS EM GLOBAIS NO ARQUIVO ENV.RB
module PageObjects

  def index
    @princpag ||= AcessandoPrincipal.new
  end

  def home
    @treinpag ||= AcessandoTreinamento.new
  end

  def formulario
    @formpag ||= FormularioPage.new
  end

  def listar
    @list ||= ListarCad.new
  end
  
  def cadastroSucesso
    @cadastropag ||= CadastroSucessoPage.new
  end

  def arrastar
    @arrastarelemento ||= DragAndDrop.new
  end
  
end