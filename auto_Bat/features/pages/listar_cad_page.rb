class ListarCad < SitePrism::Page
    #_____________Mapeamento dos elementos da página_______________#

    #Tabela.
    elements :linhas, 'tbody > tr'
    #Botões
    element :btDelete, :xpath, '//tbody//tr[1]//td[11]//a[1]'
    element :btn_voltar, :xpath, '//a[@class="btn red"]'
    element :btDeleteTR2, :xpath, '//tbody//tr[2]//td[11]//a[1]'

        
    #_____________________________MÉTODOS________________________________#

    #Método usado para verificar se as informações cadastradas batem com as informações listadas na tabela
    #O Método lê todos os dados concatenados em uma só String, entõ concatemos nossas linhas conforme a vez de execução do cenário
    def vetorLista(nome, sobrenome, email, endereco, universidade, profissao, sexo, idade)
        #Verificamos se o nome é X para fazermos a concatenação de acordo que fique igual a concatenação da tabela afim de resolver o problema com ESPAÇAMENTO.
        case nome
            when 'Adriano'
                if(universidade =="")
                    @universidade = ""
                else
                    @universidade = universidade+" "
                end

                if(sexo =="")
                    @sexo = ""
                else
                    @sexo = sexo+" "
                end

                if(profissao =="")
                    @profissao = ""
                else
                    @profissao = profissao+" "
                end

                if(idade =="")
                    @idade = ""
                else
                    @idade = idade+" "
                end

                if(endereco =="")
                    @endereco = ""
                else
                    @endereco = endereco+" "
                end
                
                @c = 0
                @x = 1
                
            when 'Bruno'
                if(universidade =="")
                    @universidade = ""
                else
                    @universidade = universidade+" "
                end

                if(sexo =="")
                    @sexo = ""
                else
                    @sexo = sexo+" "
                end

                if(profissao =="")
                    @profissao = ""
                else
                    @profissao = profissao+" "
                end

                if(idade =="")
                    @idade = ""
                else
                    @idade = idade+" "
                end

                if(endereco =="")
                    @endereco = ""
                else
                    @endereco = endereco+" "
                end

                @c = 1
                @x = 2

            when 'Carlos'
                if(universidade =="")
                    @universidade = ""
                else
                    @universidade = universidade+" "
                end

                if(sexo =="")
                    @sexo = ""
                else
                    @sexo = sexo+" "
                end

                if(profissao =="")
                    @profissao = ""
                else
                    @profissao = profissao+" "
                end

                if(idade =="")
                    @idade = ""
                else
                    @idade = idade+" "
                end

                if(endereco =="")
                    @endereco = ""
                else
                    @endereco = endereco+" "
                end

                @c = 2
                @x = 3

            when 'Daniel'
                if(universidade =="")
                    @universidade = ""
                else
                    @universidade = universidade+" "
                end

                if(sexo =="")
                    @sexo = ""
                else
                    @sexo = sexo+" "
                end

                if(profissao =="")
                    @profissao = ""
                else
                    @profissao = profissao+" "
                end

                if(idade =="")
                    @idade = ""
                else
                    @idade = idade+" "
                end

                if(endereco =="")
                    @endereco = ""
                else
                    @endereco = endereco+" "
                end
                @c = 3
                @x = 4

            when 'Eva'
                if(universidade =="")
                    @universidade = ""
                else
                    @universidade = universidade+" "
                end

                if(sexo =="")
                    @sexo = ""
                else
                    @sexo = sexo+" "
                end

                if(profissao =="")
                    @profissao = ""
                else
                    @profissao = profissao+" "
                end

                if(idade =="")
                    @idade = ""
                else
                    @idade = idade+" "
                end

                if(endereco =="")
                    @endereco = ""
                else
                    @endereco = endereco+" "
                end
                @c = 4
                @x = 5

            when 'Flavia'
                if(universidade =="")
                    @universidade = ""
                else
                    @universidade = universidade+" "
                end

                if(sexo =="")
                    @sexo = ""
                else
                    @sexo = sexo+" "
                end

                if(profissao =="")
                    @profissao = ""
                else
                    @profissao = profissao+" "
                end

                if(idade =="")
                    @idade = ""
                else
                    @idade = idade+" "
                end

                if(endereco =="")
                    @endereco = ""
                else
                    @endereco = endereco+" "
                end
                @c = 5
                @x = 6

            when 'Gisele'
                if(universidade =="")
                    @universidade = ""
                else
                    @universidade = universidade+" "
                end

                if(sexo =="")
                    @sexo = ""
                else
                    @sexo = sexo+" "
                end

                if(profissao =="")
                    @profissao = ""
                else
                    @profissao = profissao+" "
                end

                if(idade =="")
                    @idade = ""
                else
                    @idade = idade+" "
                end

                if(endereco =="")
                    @endereco = ""
                else
                    @endereco = endereco+" "
                end
                @c = 6
                @x = 7
            
            when 'Helena'
                if(universidade =="")
                    @universidade = ""
                else
                    @universidade = universidade+" "
                end

                if(sexo =="")
                    @sexo = ""
                else
                    @sexo = sexo+" "
                end

                if(profissao =="")
                    @profissao = ""
                else
                    @profissao = profissao+" "
                end

                if(idade =="")
                    @idade = ""
                else
                    @idade = idade+" "
                end

                if(endereco =="")
                    @endereco = ""
                else
                    @endereco = endereco+" "
                end
                @c = 7
                @x = 8
        end
        #Devido ao um erro do sistema, em um dos passos é cadastrado sem o SOBRENOME que originalmente deveria dar erro e não cadastrar, para nao dar conflito na hora de verificarmos, nos deletamos esse cadastro antes com o metodo abaixo.
        if(linhas[1].text =="Adriano adriano@gmail.com Universidade Paulista Masculino Tester 30 rua teste search edit delete")
            btDeleteTR2.click
            page.accept_confirm
        end
        #Concatenação dos valores
        @valor_texto = "#{nome} #{sobrenome} #{email} #{@universidade}#{@sexo}#{@profissao}#{@idade}#{@endereco}search edit delete"
        #atribução da linha da tabela a uma variavel
        texto = "#{linhas[@c.to_i].text}"
        #Verificação se é true ou false a comparação, sendo false, podemos retornar um FAIL no step com a variavel global.
        if texto == @valor_texto
            $verifica = true
           
        else

          $verifica = false
            
        end

    end
    #Método usado para deletar todos os itens da tabela, se não existir mais o que deletar ele encerra a execução
    def btDeleteAll_clk
        cont = 0
        num  = 300

        while cont < num do
            
            
            
           
           #Verifica se em botão na tela, se tiver ele atribui +400 para o btDelete
            if  page.has_selector?(:xpath, '//tbody//tr[1]//td[11]//a[1]') == false
                cont =+ 400
                
            else
                btDelete.click
            
                page.accept_confirm
                cont =+ 1
            end
            
        end

   

    end
    #Método usado para clicar no botão de Voltar
    def btnVoltarHome
        btn_voltar.click
    end
    #Método usado para verificar antes de preencher se existe cadastros na lsita de usuarios, se exisitir ele apagará todos.
    def verificarAntes
        treinamento = AcessandoTreinamento.new
        
        
        tamanho = linhas.size
        
        if(tamanho >0)
            
            btDeleteAll_clk
            btn_voltar.click
            treinamento.link_formulario_clk
        else
            btn_voltar.click
            treinamento.link_formulario_clk
            

        end

    end

end