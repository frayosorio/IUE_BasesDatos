package campeonatosfifa.api.controladores;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import campeonatosfifa.api.dominio.Campeonato;
import campeonatosfifa.api.repositorios.CampeonatoRepositorio;

@RestController
@RequestMapping("/api/campeonatos")
public class CampeonatoControlador {


    @Autowired
    private CampeonatoRepositorio repositorio;

    @RequestMapping(value = "/listar", method = RequestMethod.GET)
    public List<Campeonato> listar() {
        return repositorio.findAll();
    }

    @RequestMapping(value = "/agregar", method = RequestMethod.POST)
    public Campeonato agregar(@RequestBody Campeonato campeonato) {
        campeonato.setId(0);
        return repositorio.save(campeonato);
    }

    @RequestMapping(value = "/modificar", method = RequestMethod.PUT)
    public Campeonato modificar(@RequestBody Campeonato campeonato) {
        if (repositorio.findById(campeonato.getId()).isPresent()) {
            return repositorio.save(campeonato);
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

}
