loop do
    puts "============== transforme moedas internacionais em reais ============== "
    puts "1- dollar"
    puts "2- euros"
    puts "3- sair"
    print "option:"

    option = gets.chomp.to_i

        if option == 1 
            puts " insira o valor do dollar"
                a = gets.chomp.to_f
            x = a * 4,35
            
            puts "o dollar em reais vale #{x}"
        elsif option == 2
            puts "insira o valor do euro"
                b = gets.chomp.to_f
                y = b * 4,73
                puts "o euro em reais vale#{y}"   
        else
            break
        end              
end