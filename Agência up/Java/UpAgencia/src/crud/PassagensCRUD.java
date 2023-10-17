package crud;

import java.util.Scanner;

import dao.PassagensDAO;
import modelos.Passagens;

public class PassagensCRUD {

	public static void main(String[] args) {
		Scanner s = new Scanner(System.in);
		PassagensDAO passagensDAO = new PassagensDAO();
		
		int opcao = 0, id = 0;
		
		int id_passagens = 0,  id_cliente= 0, data_viagem = 0;
		double preco =0;
		String saida_viagem = "", destino_viagem = "";
		
		do {
			
			System.out.println("\n==================================== Passagens ==================================\n");
			System.out.println("1-CRIAR   2-CONSULTAR    3-ATUALIZAR    4-DELETAR    5-CONSULTAR POR ID    0-SAIR");
		    opcao = s.nextInt();
		    s.nextLine();
		    
			
			switch (opcao) {
			case 1:
				System.out.println("Digite seu id_passagem: ");
				id_passagens = s.nextInt();
				s.nextLine();
				System.out.println("Digite seu id_cliente: ");
				id_cliente =s.nextInt();
				s.nextLine();
				System.out.println("Digite o local de saida: ");
				saida_viagem = s.nextLine();
				System.out.println("Digite seu destino: ");
				destino_viagem = s.nextLine();
				System.out.println("Digite a data da viagem: ");
				data_viagem = s.nextInt();
				s.nextLine();
				System.out.println("Digite o preco: ");
				preco = s.nextDouble();
				s.nextLine();
				
				
				Passagens passagens1 = new Passagens(id_passagens, id_cliente, saida_viagem, destino_viagem, data_viagem, preco);
				
			    passagensDAO.create(passagens1);
			    break;
			case 2:
				
				for(Passagens c : passagensDAO.read()) {
					System.out.println( c.toString());
				}
				
				
			    break;
			case 3:
				System.out.println("Digite o id: ");
				id_passagens = s.nextInt();
				s.nextLine();
				System.out.println("Digite seu nome: ");
				id_cliente = s.nextInt();
			    s.nextLine();
			    System.out.println("Digite o local de saida: ");
				saida_viagem = s.nextLine();
				System.out.println("Digite seu destino: ");
				destino_viagem = s.nextLine();
				System.out.println("Digite a data da viagem: ");
				data_viagem = s.nextInt();
				s.nextLine();
				System.out.println("Digite o preco: ");
				preco = s.nextDouble();
				s.nextLine();
				
				Passagens Passagens2 = new Passagens(id_passagens, id_cliente, saida_viagem, destino_viagem, data_viagem, preco);
				
				passagensDAO.update(Passagens2);
			    break;
			case 4:
				System.out.println("Digite um id: ");
				id = s.nextInt();
				s.nextLine();
				
				passagensDAO.delete(id);
			    break;
			case 5:
				System.out.println("Digite um id: ");
				id = s.nextInt();
				s.nextLine();
				
				
				Passagens passagens3 = passagensDAO.readById(id);
				System.out.println(passagens3.toString());
			    break;
			 default:
				
			    break;
			
			
			}
			
		} while(opcao != 0);

	System.out.println("Até mais!");
       s.close();
}



	}


