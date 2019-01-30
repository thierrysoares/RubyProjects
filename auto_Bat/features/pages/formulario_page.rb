class FormularioPage < SitePrism::Page
   #_______________________Mapeamento dos elementos da página______________________________# 
    
    #Campos de texto.
    element :nome,  '#user_name'
    element :sobrenome, '#user_lastname'
    element :email, '#user_email'
    element :endereco, ' #user_address'
    element :universidade, '#user_university'
    element :profissao, '#user_profile'
    element :genero, '#user_gender'
    element :idade, '#user_age'
    #Botões.
    element :btn_criar, :xpath, '//div[@class="actions btn waves-effect green"]'
    element :btn_voltar, :xpath, '//a[@class="btn waves-light red"]'
    #Mensagens de erro
    element :msg_erro_emailBlank, :xpath, '//div[@class="col s9"]//ul//li[1]'
    element :msg_erro_emailInvalid, :xpath, '//li[contains(text(),"Email translation missing: pt-BR.activerecord.erro")]'
    element :msg_erro_nomeBlank, :xpath, '//li[contains(text(),"Name translation missing: pt-BR.activerecord.error")]'
    element :msg_erro_sobrenomeBlank, :xpath, '//li[contains(text(),"Sobrenome.blank")]'

    #_________________________________MÉTODOS________________________________________________#

    #Método usado para preencher os campos de texto do formulário.
    def preencherForm(nome1, sobrenome1, email1, endereco1, universidade1, profissao1, genero1, idade1)
        nome.set(nome1)
        sobrenome.set(sobrenome1)
        email.set(email1)
        endereco.set(endereco1)
        universidade.set(universidade1)
        profissao.set(profissao1)
        genero.set(genero1)
        idade.set(idade1)
    end 
    #Método usado para clicar no botão criar.
    def clicarCriar
        btn_criar.click
    end
    #Método usado para verificar a mensagem de cadastrado com sucesso.
    def verificarSusseso
        find('#notice')
    end
    #Método usado para verificar a mensagem de EMAIL.BLANK.
    def verificarErroEmailBlank
        msg_erro_emailBlank.visible?
    end
    #Método usado para verificar a mensagem de EMAIL.INVALID.
    def verificarErroEmailInvalid
        msg_erro_emailInvalid.visible?
    end
    #Método usado para verificar a mensagem de NOME.BLANK.
    def verificarErroNome
        msg_erro_nomeBlank.visible?
    end
    #Método usado para verificar a mensagem de SOBRENOME.BLANK.
    def verificarErroSobrenome
        msg_erro_sobrenomeBlank.visible?
    end
    #Método usado clicar no botão Voltar.
    def clicarVoltar
        btn_voltar.click
    end
    
end