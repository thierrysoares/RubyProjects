class CadastroSucessoPage < SitePrism::Page
    
    #_______________________Mapeamento dos elementos da página______________________________#
    element :nome,  :xpath, '//div[@class="col s9"]'
    element :sobrenome, :xpath, '/html[1]/body[1]/div[2]/div[2]/div[3]/div[1]/p[2]'
    element :email, :xpath, '/html[1]/body[1]/div[2]/div[2]/div[3]/div[1]/p[3]'
    element :endereco, :xpath, '/html[1]/body[1]/div[2]/div[2]/div[3]/div[1]/p[8]'
    element :universidade, :xpath, '/html[1]/body[1]/div[2]/div[2]/div[3]/div[1]/p[4]'
    element :profissao, :xpath, '/html[1]/body[1]/div[2]/div[2]/div[3]/div[1]/p[6]'
    element :genero, :xpath, '/html[1]/body[1]/div[2]/div[2]/div[3]/div[1]/p[5]'
    element :idade, :xpath, '/html[1]/body[1]/div[2]/div[2]/div[3]/div[1]/p[7]'
    #_________________________________MÉTODOS________________________________________________#

    #Metodo usado para receber os valores da matriz cadastrado no momento
    def recebeForm(nome1, sobrenome1, email1, endereco1, universidade1, profissao1, genero1, idade1)

        @nome = nome1
        @sobrenome = sobrenome1
        @email = email1
        @endereco = endereco1
        @universidade = universidade1
        @profissao = profissao1
        @genero = genero1
        @idade =  idade1
        
    end
    #Metódo usado para comparar o valor com o que está na tela
    def compararForm
        nome.assert_text(text, @nome)
        sobrenome.assert_text(text, @sobrenome)
        email.assert_text(text, @email)
        endereco.assert_text(text, @endereco)
        universidade.assert_text(text, @universidade)
        profissao.assert_text(text, @profissao)
        genero.assert_text(text, @genero)
        idade.assert_text(text, @idade)   
        
    end
   
end