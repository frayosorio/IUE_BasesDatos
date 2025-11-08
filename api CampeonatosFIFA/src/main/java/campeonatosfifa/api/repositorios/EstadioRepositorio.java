package campeonatosfifa.api.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import campeonatosfifa.api.dominio.Estadio;

@Repository
public interface EstadioRepositorio extends JpaRepository<Estadio, Integer> {

}
