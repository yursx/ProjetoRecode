package mvc_model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
@Entity
@Table(name = "cadastro")

public class Cadastro {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id_cliente;
	private String nome_cliente;
	private String email_cliente;
	private String senha_cliente;
	private int telefone;
	private int cpf;
	public Cadastro(int id_cliente2, String nome_cliente2, int id_passagens) {
	}
		
}
