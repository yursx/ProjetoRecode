package mvc_model;

import org.hibernate.annotations.ManyToAny;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
@Entity
@Table(name = "passagens")
public class Passagens {
	
	
	public Passagens() {
		// TODO Auto-generated constructor stub
	}


	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id_passagens;
	private Long id_cliente;
	private String saida_viagem;
	private String destino_viagem;
	private int data_viagem;
	private double preco;
	
	@ManyToAny
	@JoinColumn(name = "passagens_id")
	private Passagens passagens;
	

}