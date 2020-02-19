class Agenda

    attr_accessor :agenda, :nome, :telefone

    def initialize
        @agenda = {}        
        
    end
    
    def adicionar
    print "Insira o nome do contato:"
        @nome = gets.chomp
        if @agenda[nome.to_sym].nil?
        print "Insira o numero do telefone:"
        @telefone = gets.chomp
        @agenda[nome.to_sym] = @telefone
        else
            puts "Este nome ja existe"
        end
    end

    def atualizar
    print "Qual nome deseja atualizar:"
        nome = gets.chomp
        if @agenda[nome.to_sym].nil?
            print "Este nome nao existe:"
        else
            puts "Qual o telefone?:"
            telefone = gets.chomp
            @agenda[nome.to_sym] = @telefone
        end
    end

    def exibir
        @agenda.each do |nome, telefone|
        puts "Nome: #{nome} - Telefone: #{telefone}"
        end
            if @agenda == {}
            puts "Agenda vazia"
            end
    end

    def excluir
        puts "Qual nome deseja excluir?:"
        nome = gets.chomp
        if @agenda[nome.to_sym].nil?
            puts "Este nome nao existe"
        else
            @agenda.delete(nome.to_sym)
            puts "#{nome} foi deletado com sucesso!"
        end
    end    
end    



