Algoritmo "PSEUDOCODIGO"
//  
//  
// Usando conceitos de programa��o estruturada (Vetor)
//criar em pseudoc�digo um menu para simular um cadastro
//para uma ag�ncia de viagens com as seguintes fun��es
//cadastro de cliente e cadastro de destino, criar tamb�m
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
   para i de 1 at� quantidadeElementos -1 faca
      escreval("Cliente",i,":")
      escreval ("Nome: ",vetCliente[i])
      escreval("Qual o seu destino: ",vetDestino[i])
   fimpara
Fimprocedimento

Inicio
   escreval (" BEM VINDOS A AG�NCIA UP-ALTAS AVENTURAS ")
   quantidadeElementos <- 1
   enquanto Opcao <> 3  faca
      escreval( "Digite a op��o:")
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
            escreval ("N�o � poss�vel acrescentar mais cadastros")
         fimse

      caso 2
         se quantidadeElementos -1 > 0 entao
            listarCadastro ()

         senao
            escreval (" N�o h� cadastros")
         fimse


      caso 3
         escreval ("saindo do programa...")
      outrocaso
         escreval ("op��o inv�lida")
      fimescolha

   fimenquanto

Fimalgoritmo