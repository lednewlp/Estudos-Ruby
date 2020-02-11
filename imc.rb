msg = "resultado"
massa = 0
altura = 1
imc = 0

loop do

    puts "calculo do IMC"
        
    puts "Informe o peso (kg):"
        massa = gets.chomp.to_f

    puts "Informe altura (m):"
        altura = gets.chomp.to_f
        
    imc = massa / (altura * altura)

        if imc < 16
            msg += "Magreza severa"
        elsif imc < 17
            msg += "Magreza moderada"
        elsif imc < 18.5
            msg += "Magreza leve"
        elsif imc < 25
            msg += "Peso normal"
        elsif imc < 30
            msg += " Sobrepeso"              
        elsif imc < 35
            msg += "Obesidade classe 1"
        elsif imc < 40
            msg += "Obesidade classe 2"
        else
            msg += "Obesidade classe 3"
        end
        
            puts msg + " - IMC = %0.2f" % [imc]

            puts "deseja continuar (s/n)"

            a = gets.chomp

                if a == "s"
                
                else    
                    break 

                end    
end