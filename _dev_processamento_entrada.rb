#------------------------------------------------------#
#numero de letras no alfabeto
tam_alfabeto = gets	
tam_alfabeto = tam_alfabeto.to_i
puts tam_alfabeto

#letras do alfabeto
linha = gets
alfabeto = linha.split(" ")
puts "---"
puts alfabeto
puts "---"

#------------------------------------------------------#
#numero de estados
n_estados = gets	
n_estados = n_estados.to_i
puts n_estados

#estados
linha = gets
estados = linha.split(" ")
puts "---"
puts estados
puts "---"

#------------------------------------------------------#
#numero de estados finais
n_estados_finais = gets	
n_estados_finais = n_estados_finais.to_i
puts n_estados_finais

#estados finais
linha = gets
estados_finais = linha.split(" ")
puts "---"
puts estados_finais
puts "---"

#------------------------------------------------------#
#numero de transicoes
n_transicoes = gets	
n_transicoes = n_transicoes.to_i
puts n_transicoes

#transicoes
transicoes = []
for i in 0..n_transicoes-1 do
	linha = gets	
	transicoes[i] = linha.split(" ")
	puts "---"
	puts transicoes[i]
	puts "---"
end

#------------------------------------------------------#
#numero de testes
n_testes = gets	
n_testes = n_testes.to_i
puts n_testes

#testes
testes = []
for i in 0..n_testes-1 do
	linha = gets	
	testes[i] = linha.split(" ")
	puts "---"
	puts testes[i]
	puts "---"
end

