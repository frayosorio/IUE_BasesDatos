package campeonatosfifa.api.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import campeonatosfifa.api.dominio.GrupoPais;
import campeonatosfifa.api.dominio.GrupoPaisId;

@Repository
public interface GrupoPaisRepositorio extends JpaRepository<GrupoPais, GrupoPaisId> {

}
