

agenda = {
    Wendel: "98322-6420",
     Wellington: "4113-6465"
    }

while true 
    puts ""
    puts "1- Adicionar"
    puts "2- Atualizar"
    puts "3- Exibir"
    puts "4- Excluir"

    print "Escolha uma opcao:"

    escolha = gets.chomp
    puts ""
    
    case escolha

    when "1"
        print "insira o nome do contato:"
            nome = gets.chomp
            if agenda[nome.to_sym].nil?
                print "Insira o telefone"
                telefone = gets.chomp
                agenda[nome.to_sym] = telefone
            else
                puts "Este nome ja existe"
            end


    when "2"
        puts "Que nome voce deseja atualizar?:"
            nome = gets.chomp
            if agenda[nome.to_sym].nil?
                print "Este nome nao existe"
            else
                puts "Qual o telefone?:"
                telefone = gets.chomp
                agenda[nome.to_sym] = telefone
            end
        
            
    when "3"
        agenda.each do |nome, telefone|
            puts "nome: #{nome} - telefone: #{telefone}"   
        end    
            
    when "4"
        puts "Qual nome desejas apagar?:"
            nome = gets.chomp
            if agenda[nome.to_sym].nil?
                print "Este nome nao existe"
            else
                agenda.delete(nome.to_sym)
                puts "#{nome} foi deletado com sucesso!:"
            end

    else
        puts "Desculpa, opcao invalida"
        
    end
  
end
