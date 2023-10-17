package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.ConnectionMySQL;
import modelos.Cliente;

public class ClienteDAO {
	
//CREATE
	public Cliente create(Cliente cliente){
      
      String sql = "Insert into Cliente (nome, email, senha) values (?, ?, ?)";
		
      Connection conn = null;
      PreparedStatement pstm = null;
      
      try {
    	 conn = ConnectionMySQL.creatConnectionMySql();
    	 
    	 pstm = conn.prepareStatement(sql);
    	 
    	 pstm.setString(1, cliente.getNome());
    	 pstm.setString(2, cliente.getEmail());
    	 pstm.setString(3, cliente.getSenha());
    	 
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
	
	    return cliente;
	}
             
	
	
//READ
	public List<Cliente> read(){
		List<Cliente> cliente = new ArrayList<Cliente>();
		String sql = "select * from Cliente";
		
		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rset = null;
		
	try {
		
		conn = ConnectionMySQL.creatConnectionMySql();
		pstm = conn.prepareStatement(sql);
		 
		rset = pstm.executeQuery();
		
		while(rset.next()) {
			Cliente Cliente = new Cliente();
			
			Cliente.setId(rset.getInt("id_cliente"));
		    modelos.Cliente.setNome(rset.getString("nome"));
		    Cliente.setEmail(rset.getString("email"));
		    Cliente.setSenha(rset.getString("senha"));
		    
		    cliente.add((modelos.Cliente) cliente);
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
	
	    return cliente;
	}
          
		
		
//UPDATE
	public Cliente update (Cliente cliente) {
		String sql ="";
		
		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rset = null;
		
		try {
			
			conn = ConnectionMySQL.creatConnectionMySql();
			pstm = conn.prepareStatement(sql);
			
			pstm.setString(1, cliente.getNome());;
			pstm.setString(2, cliente.getEmail());;
			pstm.setString(3, cliente.getSenha());;
			
			pstm.setInt(4, cliente.getId());
			
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
	
		    return cliente;
	}
	          
	
	
//DELETE
	public void delete (int id) {
	String sql = "DELETE from Cadastro WHERE id_cliente = ?";
	
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
	public Cliente readById (int id) {
		Cliente cliente = new Cliente();
		String sql = "select * from Cliente WHERE id_cliente = ? ";
		
		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rset = null;
		
		try {
		
			conn = ConnectionMySQL.creatConnectionMySql();
			pstm = conn.prepareStatement(sql);
		
			pstm.setInt(1, id);
			
			rset = pstm.executeQuery();
			
			rset.next();
			
			cliente.setId(rset.getInt("id_cliente"));
            Cliente.setNome(rset.getString("nome"));
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
		
		return new Cliente();
	}
	
	
}
