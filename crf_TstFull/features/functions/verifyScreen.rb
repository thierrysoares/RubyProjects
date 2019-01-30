class VerScreen

    def verTelaNS()

        $appium_driver.find_element(id: "android:id/content").displayed?

    end

    def verTelaFinal()
        
        tela = $appium_driver.find_element(:xpath, "//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View[2]/android.view.View[2]/android.view.View[2]/android.widget.Button[2]")
        tela.displayed?
    end



    def verTelaXpath()
        tela = $appium_driver.find_element(:xpath, "//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.app.Dialog")
        tela.displayed?
        

    end

    def verBtFNS()

        btFNS = $fObj.findBtFNS()
        btFNS.displayed?
    end

end

 $verScr = VerScreen.new