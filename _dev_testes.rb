#entrada de teste: numero impar de b's =========================================
#letras (alfabeto)
alfabeto = ["a", "b"]
#estados
estados = ["q0", "q1"]
#estados finais
estados_finais = ["q1"]
#transicoes
transicoes = [ ["q0", "a", "q0"],
			["q0", "b", "q1"],
			["q1", "a", "q1"],
			["q1", "b", "q0"] ]

#palavras de teste
testes = ["b"]

#entrada de teste: numero par de b's ===========================================
#letras (alfabeto)
alfabeto = ["a", "b"]
#estados
estados = ["q0", "q1"]
#estados finais
estados_finais = ["q0"]
#transicoes
transicoes = [ ["q0", "a", "q0"],
			["q0", "b", "q1"],
			["q1", "a", "q1"],
			["q1", "b", "q0"] ]

#palavras de teste
testes = ["b"]

#entrada de teste: numero de a's eh multiplo de 4 ==============================
#letras (alfabeto)
alfabeto = ["a", "b"]
#estados
estados = ["q0", "q1", "q2", "q3"]
#estados finais
estados_finais = ["q0"]
#transicoes
transicoes = [["q0", "a", "q1"],
							["q0", "b", "q0"],							
							["q1", "a", "q2"],
							["q1", "b", "q1"],							
							["q2", "a", "q3"],
							["q2", "b", "q2"],							
							["q3", "a", "q0"],
							["q3", "b", "q3"] ]

#palavras de teste
testes = ["b"]
