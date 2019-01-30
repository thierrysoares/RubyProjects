#language:pt

Funcionalidade: Entrar no aplicativo e efetuar uma nova simulação.



Contexto: 
Dado que estou na tela inicial


#-----------------------------------------------------------------------------
@Cenario1
Cenario: Efetuando a simulação corretamente.

Quando clico no botão NOVA SIMULAÇÃO
E a tela de efetuar uma nova simulação abre
E digito 1000 no campo de texto referente ao valor
E digito 10 no campo de texto referente ao prazo
E clico em nova simulação
Então a tela com a simulação feita abre

#-----------------------------------------------------------------------------
@Cenario2
Cenario: Efetuado com valor abaixo do valor minimo pré-definido


Quando abre a tela de nova simulação
E digito 400 no campo de texto referido ao valor
E digito 10 no campo de texto referido ao prazo
E clico em nova simulação
Então será exibido um pop-up dizendo Favor preencher ou corrigir os campos destacados!!!

#-----------------------------------------------------------------------------
@Cenario3
Cenario: Efetuando com prazo abaixo do prazo minimo pré-definido

Quando a tela de nova simulação abre
E digito 1000 no campo de texto valor
E digito 4 no campo de texto prazo
E pressiono o botão nova simulação
Então a tela com a siumlação feita abre





