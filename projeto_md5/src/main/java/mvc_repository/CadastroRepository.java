package mvc_repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import mvc_model.Cadastro;

@Repository
public interface CadastroRepository extends JpaRepository<Cadastro, Long> {

}
