package campeonatosfifa.api.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import campeonatosfifa.api.dominio.Fase;

@Repository
public interface FaseRepositorio extends JpaRepository<Fase, Integer> {

}
