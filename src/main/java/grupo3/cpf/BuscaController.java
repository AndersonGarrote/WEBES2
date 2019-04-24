package grupo3.cpf;

import java.util.ArrayList;

import javax.annotation.PostConstruct;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BuscaController {

    private Pessoa pessoa = null;

    @PostConstruct
    public void initialize() {
        pessoa = new Pessoa();
        pessoa.setNome("Carlos Almeida de Souza");
        pessoa.setRg("15.161.171-1");
        pessoa.setCpf("121.131.141-11");
        pessoa.setEmail("c.almeida@email.com");
        pessoa.setNomeDaMae("Clara Almeida");
        pessoa.setNomeDoPai("Marcos de Souza");
        pessoa.setDataDeNascimento("09/09/1999");
        pessoa.setCidade("Curitiba");
        pessoa.setEstado("PR");
        pessoa.setSexo("Masculino");
        pessoa.setPeso(70);
        pessoa.setAltura(156);
        pessoa.setTipoSanguineo("A+");
    }

    @GetMapping("/buscas/id")
    public ModelAndView buscaId(@RequestParam(required = false) String id) {
        ModelAndView modelAndView = new ModelAndView();

        if (id != null && !"".equals(id)) {
            modelAndView.addObject("pessoa", pessoa);
        }

        modelAndView.setViewName("buscas/id");
        return modelAndView;
    }

    @GetMapping("/buscas/rg")
    public ModelAndView buscaRg(@RequestParam(required = false) String rg) {
        ModelAndView modelAndView = new ModelAndView();

        if (rg != null && !"".equals(rg)) {
            modelAndView.addObject("pessoa", pessoa);
        }

        modelAndView.setViewName("buscas/rg");
        return modelAndView;
    }

    @GetMapping("/buscas/cpf")
    public ModelAndView buscaCpf(@RequestParam(required = false) String cpf) {
        ModelAndView modelAndView = new ModelAndView();

        if (cpf != null && !"".equals(cpf)) {
            modelAndView.addObject("pessoa", pessoa);
        }

        modelAndView.setViewName("buscas/cpf");
        return modelAndView;
    }

    @GetMapping("/buscas/email")
    public ModelAndView buscaEmail(@RequestParam(required = false) String email) {
        ModelAndView modelAndView = new ModelAndView();

        if (email != null && !"".equals(email)) {
            modelAndView.addObject("pessoa", pessoa);
        }

        modelAndView.setViewName("buscas/email");
        return modelAndView;
    }

    @GetMapping("/buscas/avancada")
    public ModelAndView buscaAvancada(@RequestParam(required = false) String nome,
            @RequestParam(required = false) String nomeDoPai, @RequestParam(required = false) String nomeDaMae,
            @RequestParam(required = false) String cidade, @RequestParam(required = false) String estado) {

        ModelAndView modelAndView = new ModelAndView();

        if (nome != null && !"".equals(nome) || nomeDoPai != null && !"".equals(nomeDoPai)
                || nomeDaMae != null && !"".equals(nomeDaMae) || cidade != null && !"".equals(cidade)
                || estado != null && !"".equals(estado)) {

            ArrayList<Pessoa> pessoas = new ArrayList<Pessoa>();

            modelAndView.addObject("pessoas", pessoas);
        }

        modelAndView.setViewName("buscas/avancada");
        return modelAndView;
    }

}