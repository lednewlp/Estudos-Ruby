Filmes = ["vingadores", "batman", "thor", "homem de ferro", "homem aranha", "hulk", "lanterna verde", "pantera negra"]
Dica = ["um monte de heroi junto", "heroi solitario", "deus do martelo", "tem muitos brinquedos,e rico e acha que e heroi", "amigo da vizinhanca", "esmaga", "no dia mais claro...", "wakanda..."]
@Sorteado = ""
@Sdica = ""
@NSorteado = ""

def sorteio
    @NSorteado = rand(Filmes.size)
    @Sorteado = Filmes[@NSorteado]
    @Sdica = Dica[@NSorteado]
end

count = 1
loop do
    print " precione enter para comecar"
    gets()

    
     break if count == 1
     count += 1
end    

loop do 
    puts "============= Bem Vindo Ao Quiz Dos Filmes de Herois =============== "
    puts "1- begin"
    puts "2- exit"
    print "option:"

    option = gets.chomp.to_i

    if option == 1 
        sorteio
        puts "Dica: #{@Sdica}"

        a = gets.chomp

            if a == @Sorteado
                puts "VOCE E FERA"
                

                puts "deseja continuar(s/n)?"
                b = gets.chomp
                    if b == "s"
                        
                    else
                        break
                    end    
             
            else
                puts "NAO FOI DESSA VEZ"    
            end
    
    else option == 2
    break        
    end
end    