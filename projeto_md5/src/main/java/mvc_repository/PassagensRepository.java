package mvc_repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.web.servlet.ModelAndView;

import mvc_model.Passagens;

@Repository
public interface PassagensRepository extends JpaRepository<Passagens, Long> {

	void save(ModelAndView passagens);

}
