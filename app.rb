require_relative 'files'

def main
    puts 'Menu: '
    puts '1 - Salvar nome no arquivo.'
    puts '2 - Ler nomes do arquivo.'
    puts '3 - Remover arquivo.'
    puts '0 - Sair'
    opc = gets.chomp.to_i
end

# MAIN
opc = true
while opc

    case main
        when 1
            open_a_file
        when 2
            readme
        when 3
            remove_file
        when 0
            opc = false
        else 
            puts 'Opção errada !'
        end
end