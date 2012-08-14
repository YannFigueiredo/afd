#
# Linguagens Formais e Autômatos - Prof. Luciano Silva
# Turma 5G - 2010
#
# Gabriel Prioli
#
# Esse código usa um vetor multimensional para armazenar as transições
# É recomendado fazer a entrada de dados por meio de um arquivo e redirecioná-la
# na execução. Esse programa aceita teste de palavra vazia: no arquivo de 
# entrada, deixe uma linha em branco.
#  
# 
	
#--------PROCESSAMENTO DO ARQUIVO DE ENTRADA-----------------------------------#
#--------Alfabeto--------------------------------------------------------------#
#numero de letras no alfabeto
tam_alfabeto = gets	
tam_alfabeto = tam_alfabeto.to_i
#puts tam_alfabeto

#letras do alfabeto
linha = gets
alfabeto = linha.split(" ")
#puts "---"
#puts alfabeto
#puts "---"
#--------Estados---------------------------------------------------------------#
#numero de estados
n_estados = gets	
n_estados = n_estados.to_i
#puts n_estados

#estados
linha = gets
estados = linha.split(" ")
#puts "---"
#puts estados
#puts "---"
#--------Estados finais--------------------------------------------------------#
#numero de estados finais
n_estados_finais = gets	
n_estados_finais = n_estados_finais.to_i
#puts n_estados_finais

#estados finais
linha = gets
estados_finais = linha.split(" ")
#puts "---"
#puts estados_finais
#puts "---"
#--------Transições------------------------------------------------------------#
#numero de transicoes
n_transicoes = gets	
n_transicoes = n_transicoes.to_i
#puts n_transicoes

#transicoes
transicoes = []
for i in 0..n_transicoes-1 do
	linha = gets	
	transicoes[i] = linha.split(" ")
#	puts "---"
#	puts transicoes[i]
#	puts "---"
end
#--------Testes----------------------------------------------------------------#
#numero de testes
n_testes = gets	
n_testes = n_testes.to_i
#puts n_testes

#testes
testes = []
for i in 0..n_testes-1 do
	linha = gets	
	testes[i] = linha.split(" ")
	testes[i] = testes[i].to_s
#	puts "---"
#	puts testes[i]
#	puts "---"
end
#--------FIM DO PROCESSAMENTO DO ARQUIVO DE ENTRADA----------------------------#


#--------FUNÇÕES---------------------------------------------------------------#

#--------Verifica se uma letra pertence ao alfabeto----------------------------#
def verificaLetra(letra, alfabeto)
	#puts "Testando letra: #{letra}"
	
	if (alfabeto.index(letra) == nil)
		return false
	end
	return true
end

#--------Verifica se todas as letras da palavra pertencem ao alfabeto----------#
def verificaPalavra(palavra, alfabeto)
	#puts "Testando palavra: #{palavra}"
	letraFora = nil
	
	t = palavra.length-1
	
	for letra in 0..t do
		if (!verificaLetra(palavra[letra], alfabeto))
			letraFora = palavra[letra]
			break
		end
	end
	
	return letraFora
end

#--------Simulador-------------------------------------------------------------#
def simulaAFD(ei, palavra, transicoes)
	#puts
	#puts "Processamento: "
	
	#o processamento sempre começa no estado inicial ei
	estado_atual = ei
	
	tamPalavra = palavra.length-1
	tamTransicoes = transicoes.length-1
	
	#processa o teste no automato
	for x in 0..tamPalavra do
		#puts "estado atual: #{estado_atual}"
		#puts "entrada: #{palavra[x]}"
		
		#determina o proximo estado
		for k in 0..tamTransicoes do
			if (transicoes[k][0] == estado_atual && transicoes[k][1] == palavra[x])
				indice = k
			end
		end
		
		#o estado de destino de cada transição está na posição 2 do
		#vetor de transições
		estado_atual = transicoes[indice][2]
	end
	
	return estado_atual
end

#---------------------------------------DAQUI PARA BAIXO, REPETIR n_testes VEZES

#define o estado inicial (sempre o primeiro da lista de entrada)
ei = estados[0]

n_testes.times do |numero_do_teste|

	# vetor de letras da palavra do teste sendo simulado
	palavra = []
	
	# armazena cada letra da palavra no vetor de letras
	testes[numero_do_teste].each_byte do |letra|
		palavra << letra.chr
	end
  #puts palavra

	# verifica se ha alguma letra fora do alfabeto
	letraFora = verificaPalavra(palavra, alfabeto)

	if (letraFora != nil)
		puts "#{palavra}: nao"
	else
		ultimoEstado = simulaAFD(ei, palavra, transicoes)
		
		if (palavra.to_s == "")
			testes[numero_do_teste] = "[palavra vazia]"
		end
		
		#verifica se o último estado avaliado é final
		if estados_finais.index(ultimoEstado) == nil
			puts "#{testes[numero_do_teste]}: nao"
		else
			puts "#{testes[numero_do_teste]}: sim"
		end
	
	end
	
end
#---------------------------------------------------------------FIM DA REPETICAO
