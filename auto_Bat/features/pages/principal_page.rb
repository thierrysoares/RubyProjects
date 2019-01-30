class AcessandoPrincipal < SitePrism::Page
  set_url 'https://automacaocombatista.herokuapp.com'
   #_______Mapeamento dos elementos da página______# 
  element :btn_automacao, :xpath, '//*[contains(text(),"Começar Automação Web")]'
  
  #____________________MÉTODOS______________________#

  #Click no botão da tela principal
  def clicarbtn1
    btn_automacao.click
  end  
end

