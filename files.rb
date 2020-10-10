require 'faker'

def mensagem msg
    puts ''
    print "#{msg}"
    for dot in (1..3)
        print ". "
        sleep 1
    end
    puts ''
end

def add_name

    File.open('./nomes.txt', 'a') do |file|
        
        file.write "#{Faker::Name.name}\n"
        mensagem 'Escrevendo Nome '

    rescue => e
        puts "ERRO: #{e.message}"
    end

end

def readme 

    File.open('./nomes.txt', 'r') do |file|
        
        puts ''
        while line = file.gets
            puts "Nome: #{line}"
        end
        puts ''

    rescue => e
        puts "ERRO: #{e.message}"
    end

end

def remove_file 
    
    File.delete('./nomes.txt')
    mensagem 'Removendo '

rescue => e

    puts ''
    puts 'Arquivo não Encontrado !'
    puts ''

end