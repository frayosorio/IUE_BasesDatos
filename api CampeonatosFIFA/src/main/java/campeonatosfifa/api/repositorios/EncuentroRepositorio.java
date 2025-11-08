package campeonatosfifa.api.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import campeonatosfifa.api.dominio.Encuentro;

@Repository
public interface EncuentroRepositorio extends JpaRepository<Encuentro, Integer> {

}
