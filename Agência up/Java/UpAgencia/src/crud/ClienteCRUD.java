package crud;

import java.util.Scanner;

import dao.ClienteDAO;
import modelos.Cliente;

public class ClienteCRUD {

	public static void main(String[] args) {

		    Scanner s = new Scanner(System.in);
			ClienteDAO ClienteDAO = new ClienteDAO();
			
			int opcao = 0, id = 0;
			
			String nome = "",  email= "", senha = "";
			
			do {
				
				System.out.println("\n==================================== CLIENTE ==================================\n");
				System.out.println("1-CRIAR   2-CONSULTAR    3-ATUALIZAR    4-DELETAR    5-CONSULTAR POR ID    0-SAIR");
			    opcao = s.nextInt();
			    s.nextLine();
			    
				
				switch (opcao) {
				case 1:
					System.out.println("Digite seu nome: ");
					nome = s.nextLine();
					System.out.println("Digite seu email: ");
					email = s.nextLine();
					System.out.println("Digite a senha: ");
					senha = s.nextLine();
					
					Cliente cliente1 = new Cliente(nome, email, senha);
					
				    ClienteDAO.create(cliente1);
				    break;
				case 2:
					
					for(Cliente c : ClienteDAO.read()) {
						System.out.println( c.toString());
					}
					
					
				    break;
				case 3:
					System.out.println("Digite o id: ");
					id = s.nextInt();
					s.nextLine();
					System.out.println("Digite seu nome: ");
					email = s.nextLine();
					System.out.println("Digite seu email: ");
					senha = s.nextLine();
					System.out.println("Digite a senha: ");
					senha = s.nextLine();
					
					Cliente cliente2 = new Cliente(id, nome, email, senha);
					
					ClienteDAO.update(cliente2);
				    break;
				case 4:
					System.out.println("Digite um id: ");
					id = s.nextInt();
					s.nextLine();
					
					ClienteDAO.delete(id);
				    break;
				case 5:
					System.out.println("Digite um id: ");
					id = s.nextInt();
					s.nextLine();
					
					
					Cliente cliente3 =  ClienteDAO.readById(id);
					System.out.println(cliente3.toString());
				    break;
				 default:
					
				    break;
				
				
				}
				
			} while(opcao != 0);
	
		System.out.println("Até mais!");
		s.close();
	
	}
}
