package campeonatosfifa.api.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import campeonatosfifa.api.dominio.Campeonato;

@Repository
public interface CampeonatoRepositorio extends JpaRepository<Campeonato, Integer> {

}
