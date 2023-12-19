package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.ConnectionMySQL;
import modelos.Passagens;

public class PassagensDAO {
	
	//CREATE
		public Passagens create(Passagens passagens){
	      
	      String sql = "Insert into Passagens (id_passagens, id_cliente, saida_viagem, destino_viagem,"
	      		+ "data_viagem, preco) values (?, ?, ?, ?, ?, ?)";
			
	      Connection conn = null;
	      PreparedStatement pstm = null;
	      
	      try {
	    	 conn = ConnectionMySQL.creatConnectionMySql();
	    	 
	    	 pstm = conn.prepareStatement(sql);
	    	 
	    	 pstm.setInt(1, passagens.getId_passagens());
	    	 pstm.setInt(2, passagens.getId_cliente());
	    	 pstm.setString(3, passagens.getSaida_viagem());
	    	 pstm.setString(4, passagens.getDestino_viagem());
	    	 pstm.setInt(5, passagens.getData_viagem());
	    	 pstm.setDouble(6, passagens.getpreco());
	    	 
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
		
		    return passagens;
		}
	             
		
		
	//READ
		public List<Passagens> read(){
			List<Passagens> Passagens = new ArrayList<Passagens>();
			String sql = "select * from ";
			
			Connection conn = null;
			PreparedStatement pstm = null;
			ResultSet rset = null;
			
		try {
			
			conn = ConnectionMySQL.creatConnectionMySql();
			pstm = conn.prepareStatement(sql);
			 
			rset = pstm.executeQuery();
			
			while(rset.next()) {
				Passagens passagens = new Passagens();
				
				passagens.setId_passagens(rset.getInt("id_passagens"));
			    passagens.setId_cliente(rset.getInt("id_cliente"));
			    passagens.setSaida_viagem(rset.getString("saida_viagem"));;
			    passagens.setDestino_viagem(rset.getString("destino_viagem"));
			    passagens.setData_viagem(rset.getInt("data_viagem"));
			    passagens.setpreco1(0);
			    
			    Passagens.add((modelos.Passagens) Passagens);
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
		
		    return Passagens;
		}
	          
			
			
	//UPDATE
		public Passagens update (Passagens Passagens) {
			String sql ="";
			
			Connection conn = null;
			PreparedStatement pstm = null;
			ResultSet rset = null;
			
			try {
				
				conn = ConnectionMySQL.creatConnectionMySql();
				pstm = conn.prepareStatement(sql);
				
				pstm.setInt(1, Passagens.getId_passagens());;
				pstm.setInt(2, Passagens.getId_cliente());;
				pstm.setString(3, Passagens.getSaida_viagem());;
				pstm.setString(4, Passagens.getDestino_viagem());;
				pstm.setInt(5, Passagens.getData_viagem());;
				pstm.setDouble(6, Passagens.getpreco());
				
				
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
		
			    return Passagens;
		}
		          
		
		
	//DELETE
		public void delete (int id) {
		String sql = "DELETE from Cadastro WHERE id_Passagens = ?";
		
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
		public Passagens readById (int id) {
			Passagens Passagens = new Passagens();
			String sql = "select * from Passagens WHERE id_Passagens = ? ";
			
			Connection conn = null;
			PreparedStatement pstm = null;
			ResultSet rset = null;
			
			try {
			
				conn = ConnectionMySQL.creatConnectionMySql();
				pstm = conn.prepareStatement(sql);
			
				pstm.setInt(1, id);
				
				rset = pstm.executeQuery();
				
				rset.next();
				
				Passagens.setId_passagens(rset.getInt("id_Passagens"));
	            Passagens.setId_cliente(rset.getInt("id_cliente"));
				Passagens.setSaida_viagem(rset.getString("saida_viagem"));
				Passagens.setDestino_viagem(rset.getString("destino_viagem"));
				Passagens.setpreco2(rset.getDouble("Preço"));
				
				
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
			
			return new Passagens();
		}
		
		
	}



