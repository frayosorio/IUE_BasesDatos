package campeonatosfifa.api.controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import campeonatosfifa.api.dominio.Grupo;
import campeonatosfifa.api.dominio.dtos.TablaPosicionesDto;
import campeonatosfifa.api.repositorios.GrupoRepositorio;
import jakarta.persistence.EntityManager;

@RestController
@RequestMapping("/api/grupos")
public class GrupoControlador {

    @Autowired
    private GrupoRepositorio repositorio;

    @Autowired
    private EntityManager em;

    @RequestMapping(value = "/listar", method = RequestMethod.GET)
    public List<Grupo> listar() {
        return repositorio.findAll();
    }

    @RequestMapping(value = "/listarcampeonato/{idcampeonato}", method = RequestMethod.GET)
    public List<Grupo> listarCampeonato(@PathVariable int idcampeonato) {
        return repositorio.listarCampeonato(idcampeonato);
    }

    @RequestMapping(value = "/agregar", method = RequestMethod.POST)
    public Grupo agregar(@RequestBody Grupo grupo) {
        grupo.setId(0);
        return repositorio.save(grupo);
    }

    @RequestMapping(value = "/modificar", method = RequestMethod.PUT)
    public Grupo modificar(@RequestBody Grupo grupo) {
        if (repositorio.findById(grupo.getId()).isPresent()) {
            return repositorio.save(grupo);
        } else {
            return null;
        }
    }

    @RequestMapping(value = "/eliminar/{id}", method = RequestMethod.DELETE)
    public boolean eliminar(@PathVariable int id) {
        try {
            repositorio.deleteById(id);
            return true;
        } catch (Exception ex) {
            return false;
        }
    }

        // ***** Tabla de Posiciones *****

    @RequestMapping(value = "/posiciones/{idGrupo}", method = RequestMethod.GET)
    public List<TablaPosicionesDto> listarTablaPosiciones(@PathVariable int idGrupo) {
        List<TablaPosicionesDto> tablaPosiciones = em
                .createNativeQuery(
                        "SELECT * FROM fTablaPosiciones(:idgrupo) ORDER BY Puntos DESC, GF - GC DESC",
                        TablaPosicionesDto.class)
                .setParameter("idgrupo", idGrupo)
                .getResultList();

        return tablaPosiciones;
    }

}
