package modelos;

public class Passagens {

	private int id_passagens;
	private int id_cliente;
	private String saida_viagem;
	private String destino_viagem;
	private int data_viagem;
	private double preco;
	
	
	public Passagens() {
	}


	public Passagens(int id_passagens, int id_cliente, String saida_viagem, String destino_viagem, int data_viagem,
			double preco) {
		this.id_passagens = id_passagens;
		this.id_cliente = id_cliente;
		this.saida_viagem = saida_viagem;
		this.destino_viagem = destino_viagem;
		this.data_viagem = data_viagem;
		this.preco = preco;
	}


	public Passagens(int id_cliente, String saida_viagem, String destino_viagem, int data_viagem, float preco) {
		this.id_cliente = id_cliente;
		this.saida_viagem = saida_viagem;
		this.destino_viagem = destino_viagem;
		this.data_viagem = data_viagem;
		this.preco = preco;
	}


	public int getId_passagens() {
		return id_passagens;
	}


	public void setId_passagens(int i) {
		this.id_passagens = i;
	}


	public int getId_cliente() {
		return id_cliente;
	}


	public void setId_cliente(int i) {
		this.id_cliente = i;
	}


	public String getSaida_viagem() {
		return saida_viagem;
	}


	public void setSaida_viagem(String saida_viagem) {
		this.saida_viagem = saida_viagem;
	}


	public String getDestino_viagem() {
		return destino_viagem;
	}


	public void setDestino_viagem(String destino_viagem) {
		this.destino_viagem = destino_viagem;
	}


	public int getData_viagem() {
		return data_viagem;
	}


	public void setData_viagem(int data_viagem) {
		this.data_viagem = data_viagem;
	}


	public double getpreco() {
		return preco;
	}


	public void setpreco1(double d) {
		this.preco = 0;
	}


	@Override
	public String toString() {
		return "Passagens [id_passagens=" + id_passagens + ", id_cliente=" + id_cliente + ", saida_viagem="
				+ saida_viagem + ", destino_viagem=" + destino_viagem + ", data_viagem=" + data_viagem + "]";
	}


	public void setpreco2(double double1) {
		// TODO Auto-generated method stub
		
	}
	
}
