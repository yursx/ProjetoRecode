package modelos;

public class Cadastro {

	private int id_cliente;
	private String nome_cliente;
	private String email_cliente;
	private String senha_cliente;
	private int telefone;
	private int cpf;
	public Cadastro(int id_cliente2, String nome_cliente2, int id_passagens) {
	}
	
	public Cadastro(int id_cliente, String nome_cliente, String email_cliente, String senha_cliente, int telefone,
			int cpf) {
		this.id_cliente = id_cliente;
		this.nome_cliente = nome_cliente;
		this.email_cliente = email_cliente;
		this.senha_cliente = senha_cliente;
		this.telefone = telefone;
		this.cpf = cpf;
	}
	
	public Cadastro(String nome_cliente, String email_cliente, String senha_cliente, int telefone, int cpf) {
		this.nome_cliente = nome_cliente;
		this.email_cliente = email_cliente;
		this.senha_cliente = senha_cliente;
		this.telefone = telefone;
		this.cpf = cpf;
	}
	
	public int getId_cliente() {
		return id_cliente;
	}
	
	public void setId_cliente(int id_cliente) {
		this.id_cliente = id_cliente;
	}
	
	public String getNome_cliente() {
		return nome_cliente;
	}
	
	public void setNome_cliente(String nome_cliente) {
		this.nome_cliente = nome_cliente;
	}
	
	public String getEmail_cliente() {
		return email_cliente;
	}
	
	public void setEmail_cliente(String email_cliente) {
		this.email_cliente = email_cliente;
	}
	
	public String getSenha_cliente() {
		return senha_cliente;
	}
	
	public void setSenha_cliente(String senha_cliente) {
		this.senha_cliente = senha_cliente;
	}
	
	public int getTelefone() {
		return telefone;
	}
	public void setTelefone(int telefone) {
		this.telefone = telefone;
	}
	
	public int getCpf() {
		return cpf;
	}
	
	public void setCpf(int cpf) {
		this.cpf = cpf;
	}
	
	@Override
	public String toString() {
		return "Cadastro [id_cliente=" + id_cliente + ", nome_cliente=" + nome_cliente + ", email_cliente="
				+ email_cliente + ", senha_cliente=" + senha_cliente + ", telefone=" + telefone + ", cpf=" + cpf + "]";
	}
	
}
