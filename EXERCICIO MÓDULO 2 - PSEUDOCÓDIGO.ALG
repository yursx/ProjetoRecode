Algoritmo "PSEUDOCODIGO"
//  
//  
// Usando conceitos de programação estruturada (Vetor)
//criar em pseudocódigo um menu para simular um cadastro
//para uma agência de viagens com as seguintes funções
//cadastro de cliente e cadastro de destino, criar também
//uma consulta para cada estrutura de dados.


Var
   Opcao: inteiro
   vetCliente, vetDestino: vetor [ 1..3] de caracter
   quantidadeElementos, i: inteiro

procedimento adCliente ()
Inicio
   escreval ("Digite o seu nome:")
   leia (vetCliente [quantidadeElementos])
   Escreval("Digite o seu destino:")
   leia (vetDestino [quantidadeElementos])
   quantidadeElementos <- quantidadeElementos +1
Fimprocedimento

procedimento listarCadastro ()
Inicio
   escreval ("Listando cadastros:")
   para i de 1 até quantidadeElementos -1 faca
      escreval("Cliente",i,":")
      escreval ("Nome: ",vetCliente[i])
      escreval("Qual o seu destino: ",vetDestino[i])
   fimpara
Fimprocedimento

Inicio
   escreval (" BEM VINDOS A AGÊNCIA UP-ALTAS AVENTURAS ")
   quantidadeElementos <- 1
   enquanto Opcao <> 3  faca
      escreval( "Digite a opção:")
      escreval ("1.Fazer cadastro")
      escreval ("2.Listar cadastros")
      escreval ("3.Sair do menu")
      leia (Opcao)
      limpatela

      escolha Opcao
      caso 1
         se quantidadeElementos <= 3 entao
            adCliente ()
         senao
            escreval ("Não é possível acrescentar mais cadastros")
         fimse

      caso 2
         se quantidadeElementos -1 > 0 entao
            listarCadastro ()

         senao
            escreval (" Não há cadastros")
         fimse


      caso 3
         escreval ("saindo do programa...")
      outrocaso
         escreval ("opção inválida")
      fimescolha

   fimenquanto

Fimalgoritmo