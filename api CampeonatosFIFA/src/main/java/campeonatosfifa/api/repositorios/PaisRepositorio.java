package campeonatosfifa.api.repositorios;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import campeonatosfifa.api.dominio.Pais;

@Repository
public interface PaisRepositorio extends JpaRepository<Pais, Integer> {

    
} 
