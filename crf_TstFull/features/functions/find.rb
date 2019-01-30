class FindObjects
    
    def findObj_txt()
        
        $appium_driver.find_element(:xpath, '//android.view.View[1]/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText' )

    end


    def findObj_txt2()
       
        $appium_driver.find_element(:xpath, '//android.view.View[1]/android.view.View/android.view.View/android.view.View[2]/android.view.View[2]/android.view.View[1]/android.view.View[2]/android.view.View[1]/android.view.View/android.view.View/android.view.View[2]/android.widget.EditText')

    end

    def findBtFNS()
        
        $appium_driver.find_element(:xpath, "//android.widget.Button[@index=2]")
        
    

    end
    def findBtSNS()

     $appium_driver.find_element(:xpath, "//android.widget.Button[@index=0]")
    end
end
$fObj = FindObjects.new