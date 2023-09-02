@agenda = [
    {nome: "Diógenes",telefone:"999999999"},
    {nome: "Fulano",telefone:"999999990"}
]

def todos_os_contatos
    @agenda.each do |contato|
        puts "#{contato[:nome]} - #{contato[:telefone]}"
    end
    puts "-------------------------------------------"
end

def adicionar_contato
    print "Nome: "
    nome = gets.chomp
    print "Telefone: "
    telefone = gets.chomp

    @agenda << {nome:nome, telefone:telefone}
end

loop do
    puts "1. Contatos\n2. Adicionar Contato\n3. Ver Contato\n4. Editar contato\n5. Remover contato\n0. Sair"
    codigo = gets.chomp.to_i

    case
    when codigo == 0
        puts "Até mais!"
        break
    when codigo == 1
        todos_os_contatos
    when codigo ==2
        adicionar_contato
    end
end