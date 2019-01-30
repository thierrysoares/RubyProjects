class 
    AcessandoTreinamento < SitePrism::Page

    #________________Mapeamento dos elementos da página________________# 
  

    element :link_form, :xpath, '//a[contains(text(),"Formulário")]'
    element :link_criar, :xpath, '//a[contains(text(),"Criar Usuários")]'
    element :link_lista, :xpath, '//a[contains(text(),"Lista de Usuários")]'
    element :link_iteracao, :xpath, '//a[contains(text(),"Iterações")]'
    element :link_arrastar, :xpath, '//a[contains(text(),"Drag And Drop")]'

    #_____________________________MÉTODOS_______________________________#


    #Verifica se a pagina home está aberta.
    #While utilizado para caso a página não carregue completamente.
    def verificaPg

        numP = 0

        while numP <= 0
            tpg = assert_text(text, 'Bem vindo ao Site')

                if tpg == true
                     numP =+1
                end
        end
        
    end
    #Clique do LINK Formulário.
    #While utilizado para caso a página não carregue completamente.
    def link_formulario_clk
        numF = 0

        while numF <= 0
            tf = link_form.visible?

                if tf == true
                     numF =+1
                     link_form.click
                end
        end
         
    end
    #Clique do LINK Lista de Usuários.
    #While utilizado para caso a página não carregue completamente.
    def link_listar_clk
        numL = 0

        while numL <= 0

            tfl = assert_text(text, 'Lista de Usuários')

                if tfl == true
            
                     numL =+1
                     link_lista.click
                end
        end

    end
    #Clique do LINK Criar Usuário.
    #While utilizado para caso a página não carregue completamente.
    def link_criaruser_clk

        num = 0

        while num <= 0
            tfLc =  assert_text(text,"Criar Usuários" )

                if tfLc == true
                    num =+1
                    link_criar.click
                end
        end
    end
   #Clique do LINK Interações.
   def link_iteracao_clk
        assert_text(text, "Iterações")
        link_iteracao.click
    end

    #Clique no LINK Drag and Drop.
    def link_arrastar_clk
        assert_text(text, "Drag And Drop")
        link_arrastar.click
    end
end