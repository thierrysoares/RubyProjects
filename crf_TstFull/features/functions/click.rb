class ClickBt

    
        def botaoFNSClick()
            btFNS = $fObj.findBtFNS()
            btFNS.click

        end
        def botaoSNSClick()
            btSNS = $fObj.findBtSNS()
            btSNS.click

        end
    
end
    $clicar = ClickBt.new