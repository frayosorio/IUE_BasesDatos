package campeonatosfifa.api.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import campeonatosfifa.api.dominio.Ciudad;

@Repository
public interface CiudadRepositorio extends JpaRepository<Ciudad, Integer> {

}
