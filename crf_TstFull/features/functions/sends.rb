class SendF

    def sndKeyValor(valor)
      objeto = $fObj.findObj_txt()
      objeto.send_keys(valor)
  
    end
  
  
    
    def sndKeyPrazo(prazo)
      objeto2 = $fObj.findObj_txt2()
      objeto2.send_keys(prazo)
  
    end
  end

  $enviar = SendF.new 