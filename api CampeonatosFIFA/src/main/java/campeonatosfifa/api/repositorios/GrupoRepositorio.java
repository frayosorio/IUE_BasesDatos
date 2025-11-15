package campeonatosfifa.api.repositorios;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import campeonatosfifa.api.dominio.Grupo;

@Repository
public interface GrupoRepositorio extends JpaRepository<Grupo, Integer> {

    @Query("SELECT g FROM Grupo g WHERE g.campeonato.id = ?1")
    public List<Grupo> listarCampeonato(int idcampeonato);
}
