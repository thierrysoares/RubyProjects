
Dado("que estou na tela inicial") do
  
  $fObj.findBtFNS()
  $verScr.verBtFNS()
end

Quando("clico no botão NOVA SIMULAÇÃO") do
  binding.pry
 $clicar.botaoFNSClick()
end

Quando("a tela de efetuar uma nova simulação abre") do
  
  $verScr.verTelaNS()

   $fObj.findObj_txt()
   $fObj.findObj_txt2()

  
end

Quando("digito {int} no campo de texto referente ao valor") do |valor|
 $enviar.sndKeyValor(valor)
end

Quando("digito {int} no campo de texto referente ao prazo") do |prazo|
  $enviar.sndKeyPrazo(prazo)
end

Quando("clico em nova simulação") do

  $clicar.botaoSNSClick()

 
 
 
end
 Então("a tela com a simulação feita abre") do

  $verScr.verTelaFinal()
end

#------------------------------------------------------------------------------------------------------------


Quando("abre a tela de nova simulação") do

    $clicar.botaoFNSClick()
  
    $verScr.verTelaNS()

    $fObj.findObj_txt()
    $fObj.findObj_txt2()
  
end

Quando("digito {int} no campo de texto referido ao valor") do |valorE|
  
  $enviar.sndKeyValor(valorE)

end

Quando("digito {int} no campo de texto referido ao prazo") do |prazoE|

  $enviar.sndKeyPrazo(prazoE)

end

Quando("clico no botão nova simulação") do
  $clicar.botaoSNSClick()

 
end
Então("será exibido um pop-up dizendo Favor preencher ou corrigir os campos destacados!!!") do

  $verScr.verTelaXpath()
end


#--------------------------------------------------------------------------------------------------------------


Quando("a tela de nova simulação abre") do
    $clicar.botaoFNSClick()
  
    $verScr.verTelaNS()

    $fObj.findObj_txt()
    $fObj.findObj_txt2()
end

Quando("digito {int} no campo de texto valor") do |valorE2|
  $enviar.sndKeyValor(valorE2)
end

Quando("digito {int} no campo de texto prazo") do |prazoE2|
  $enviar.sndKeyPrazo(prazoE2)
end

Quando("pressiono o botão nova simulação") do
  $clicar.botaoSNSClick()
end

Então("a tela com a siumlação feita abre") do
  $verScr.verTelaXpath() 
end