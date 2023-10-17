package crud;

import java.util.Scanner;

import dao.CadastroDAO;
import dao.PassagensDAO;
import modelos.Cadastro;

public class CadastroCRUD {

	public static void main(String[] args) {
		 Scanner s = new Scanner(System.in);
		 CadastroDAO cadastroDAO = new CadastroDAO();
			CadastroDAO CadastroDAO = new CadastroDAO();
		 PassagensDAO passagensDAO = new PassagensDAO();
			
			int opcao = 0, id = 0;
			
			String nome_Cadastro = "";
			int id_Cadastro = 0, id_passagens = 0;
			
			do {
				
				System.out.println("\n==================================== Cadastro ==================================\n");
				System.out.println("1-CRIAR   2-CONSULTAR    3-ATUALIZAR    4-DELETAR    5-CONSULTAR POR ID    0-SAIR");
			    opcao = s.nextInt();
			    s.nextLine();
			    
				
				switch (opcao) {
				case 1:
					System.out.println("Digite seu id: ");
					id_Cadastro = s.nextInt();
					s.nextLine();
					System.out.println("Digite seu nome: ");
					nome_Cadastro= s.nextLine();
					System.out.println("Digite o id da passagem: ");
					id_passagens = s.nextInt();
					s.nextLine();
					
					Cadastro cadastro1 = new Cadastro(id_Cadastro, nome_Cadastro, id_passagens);
					
				    cadastroDAO.create(cadastro1);
				    break;
				case 2:
					for(Cadastro C : cadastroDAO.read()) {
						System.out.println("id_cliente: " + "id_passagens" + C.getNome_cliente());
					}
					
					
				    break;
				case 3:
					System.out.println("Digite seu id: ");
					id_Cadastro = s.nextInt();
					s.nextLine();
					System.out.println("Digite seu nome: ");
					nome_Cadastro= s.nextLine();
					System.out.println("Digite o id da passagem: ");
					id_passagens = s.nextInt();
					s.nextLine();
					
					Cadastro cadastro2 = new Cadastro(id_Cadastro, nome_Cadastro, id_passagens);
					
					CadastroDAO.update(cadastro2);
				    break;
				case 4:
					System.out.println("Digite um id: ");
					id = s.nextInt();
					s.nextLine();
					
					CadastroDAO.delete(id);
				    break;
				case 5:
					System.out.println("Digite um id: ");
					id = s.nextInt();
					s.nextLine();
					
					
					Cadastro Cadastro3 =  CadastroDAO.readById(id);
					System.out.println(Cadastro3.toString());
				    break;
				 default:
					
				    break;
				
				
				}
				
			} while(opcao != 0);
	
		System.out.println("Até mais!");
		s.close();
	
	}


	}
