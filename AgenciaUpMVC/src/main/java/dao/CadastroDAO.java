package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.ConnectionMySQL;
import modelos.Cadastro;
import modelos.Cliente;
import modelos.Passagens;

public class CadastroDAO {
	
	//CREATE
	public Cadastro create(Cadastro Cadastro){
      
      String sql = "Insert into Cadastro (id_cliente, nome_cliente, email_cliente, senha_cliente, telefone, cpf) values (?, ?, ?, ?, ?, ?)";
		
      Connection conn = null;
      PreparedStatement pstm = null;
      
      try {
    	 conn = ConnectionMySQL.creatConnectionMySql();
    	 
    	 pstm = conn.prepareStatement(sql);
    	 
    	 pstm.setInt(1, Cadastro.getId_cliente());
    	 pstm.setString(2, Cadastro.getNome_cliente());
    	 pstm.setString(3, Cadastro.getEmail_cliente());
    	 pstm.setString(4, Cadastro.getSenha_cliente());
    	 pstm.setInt(5, Cadastro.getTelefone());
    	 pstm.setInt(6, Cadastro.getCpf());
    	 
    	 pstm.execute();
    	 
      }catch (Exception e) {
    	  e.printStackTrace();  
      }finally {
    	  try {
    		  if (pstm != null); {
    		      pstm.close();
    	      }
    	      if (conn != null) {
    	    	 conn.close();    	     
              }
      
	        } catch (Exception e) {
	           e.printStackTrace();
	        }
      }
	
	    return Cadastro;
	}
             
	
	
//READ
	public List<Cadastro> read(){
		List<Cadastro> Cadastro = new ArrayList<Cadastro>();
		String sql = "select * from ";
		
		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rset = null;
		
	try {
		
		conn = ConnectionMySQL.creatConnectionMySql();
		pstm = conn.prepareStatement(sql);
		 
		rset = pstm.executeQuery();
		
		while(rset.next()) {
			Cadastro cadastro = new Cadastro();
			Passagens passagens = new Passagens();
			Cliente cliente = new Cliente();
			
			cadastro.setId_cliente(rset.getInt("id_cliente"));
		    cadastro.setNome_cliente(rset.getString("nome_cliente"));
		   
		    passagens.setId_passagens(rset.getInt("id_passagens"));
		    passagens.setId_cliente(rset.getInt("id_cliente"));
		    passagens.setSaida_viagem(rset.getString("saida_cliente"));
		    passagens.setDestino_viagem(rset.getString("destino_viagem"));
		    passagens.setData_viagem(rset.getInt("data_viagem"));
		    passagens.setpreco1(0);
		    
		    cliente.setId(rset.getInt("id_cliente"));
		    cliente.setNome(rset.getString("nome"));
		    cliente.setEmail(rset.getString("email"));
		    cliente.setSenha(rset.getString("senha"));
		    
		    
		    Cadastro.add((modelos.Cadastro) Cadastro);
		}
		    
	 }catch (Exception e) {
   	  e.printStackTrace();  
     }finally {
   	  try {
   		  if (pstm != null); {
   		      pstm.close();
   	      }
   	      if (conn != null) {
   	    	 conn.close();    	     
             }
     
	        } catch (Exception e) {
	           e.printStackTrace();
	        }
     }
	
	    return Cadastro;
	}
          
		
		
//UPDATE
	public Cadastro update (Cadastro Cadastro) {
		String sql ="";
		
		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rset = null;
		
		try {
			
			conn = ConnectionMySQL.creatConnectionMySql();
			pstm = conn.prepareStatement(sql);
			
			 pstm.setInt(1, Cadastro.getId_cliente());
	    	 pstm.setString(2, Cadastro.getNome_cliente());
	    	 pstm.setString(3, Cadastro.getEmail_cliente());
	    	 pstm.setString(4, Cadastro.getSenha_cliente());
	    	 pstm.setInt(5, Cadastro.getTelefone());
	    	 pstm.setInt(6, Cadastro.getCpf());
			
			 pstm.execute();
		
	 }catch (Exception e) {
	   	  e.printStackTrace();  
	     }finally {
	   	  try {
	   		  if (pstm != null); {
	   		      pstm.close();
	   	      }
	   	      if (conn != null) {
	   	    	 conn.close();    	     
	             }
	     
		        } catch (Exception e) {
		           e.printStackTrace();
		        }
	     }
	
		    return Cadastro;
	}
	          
	
	
//DELETE
	public void delete (int id) {
	String sql = "DELETE from Cadastro WHERE (id_cliente, nome_cliente, email_cliente, senha_cliente, telefone, cpf) values (?, ?, ?, ?, ?, ?)";
	
	Connection conn = null;
	PreparedStatement pstm = null;
	ResultSet rset = null;
	
	try {
	
		conn = ConnectionMySQL.creatConnectionMySql();
		pstm = conn.prepareStatement(sql);
		
		pstm.setInt(1, id);
		
		pstm.execute();
	
	}catch (Exception e) {
	   	  e.printStackTrace();  
	     }finally {
	   	  try {
	   		  if (pstm != null); {
	   		      pstm.close();
	   	      }
	   	      if (conn != null) {
	   	    	 conn.close();    	     
	             }
	     
		        } catch (Exception e) {
		           e.printStackTrace();
		        }
	     }
	}
	     
	
//READBYID	
	public Cadastro readById (int id) {
		Cadastro cadastro = new Cadastro();
		String sql = "select * from Cadastro WHERE (id_cliente, nome_cliente, email_cliente, senha_cliente, telefone, cpf) values (?, ?, ?, ?, ?, ?)";
		
		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rset = null;
		
		try {
		
			conn = ConnectionMySQL.creatConnectionMySql();
			pstm = conn.prepareStatement(sql);
		
			pstm.setInt(1, id);
			
			rset = pstm.executeQuery();
			
			rset.next();
			
			Cadastro Cadastro = new Cadastro();
			Passagens passagens = new Passagens();
			Cliente cliente = new Cliente();
			
			cadastro.setId_cliente(rset.getInt("id_cliente"));
		    cadastro.setNome_cliente(rset.getString("nome_cliente"));
		   
		    passagens.setId_passagens(rset.getInt("id_passagens"));
		    passagens.setId_cliente(rset.getInt("id_cliente"));
		    passagens.setSaida_viagem(rset.getString("saida_cliente"));
		    passagens.setDestino_viagem(rset.getString("destino_viagem"));
		    passagens.setData_viagem(rset.getInt("data_viagem"));
		    passagens.setPreço(rset.getDouble("preco"));
		    
		    cliente.setId(rset.getInt("id_cliente"));
		    cliente.setNome(rset.getString("nome"));
		    cliente.setEmail(rset.getString("email"));
		    cliente.setSenha(rset.getString("senha"));
		    
		    
			
	}catch (Exception e) {
	   	  e.printStackTrace();  
	     }finally {
	   	  try {
	   		  if (pstm != null); {
	   		      pstm.close();
	   	      }
	   	      if (conn != null) {
	   	    	 conn.close();    	     
	             }
	     
		        } catch (Exception e) {
		           e.printStackTrace();
		        }
	     }
		
		return new Cadastro();
	}
	
	
}


