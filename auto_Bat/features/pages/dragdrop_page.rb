class DragAndDrop < SitePrism::Page
  #_______Mapeamento dos elementos da página______#

element :voltahome, :xpath, '//a[@class="btn red"]'
#____________________MÉTODOS______________________#

#Método para arrastar que arrasta o objeto denominado WINSTON até a caixa(dropzone).
  def arrastarWinston
    @primeiro_elemento = find('#winston')
    @segundo_elemento = find('#dropzone')
    @primeiro_elemento.drag_to(@segundo_elemento)
  end
#Método clicar no botão de voltar para pagina HOME.
  def btnVoltarHome2
    voltahome.click
  end
end