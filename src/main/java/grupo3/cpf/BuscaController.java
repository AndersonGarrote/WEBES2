package grupo3.cpf;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BuscaController {

    @Autowired
    private PessoaRepository repository;

    @GetMapping("/buscas/id")
    public ModelAndView buscaId(@RequestParam Long id) {
        ModelAndView modelAndView = new ModelAndView();
        
        modelAndView.addObject("pessoa", repository.findById(id));

        modelAndView.setViewName("buscas/id");

        return modelAndView;
    }

    @GetMapping("/buscas/rg")
    public ModelAndView buscaRg(@RequestParam(required = false) String rg) {
        ModelAndView modelAndView = new ModelAndView();

        if (rg != null && !"".equals(rg)) {
            modelAndView.addObject("pessoa", repository.findByRg(rg));
        }

        modelAndView.setViewName("buscas/rg");

        return modelAndView;
    }

    @GetMapping("/buscas/cpf")
    public ModelAndView buscaCpf(@RequestParam(required = false) String cpf) {
        ModelAndView modelAndView = new ModelAndView();

        if (cpf != null && !"".equals(cpf)) {
            modelAndView.addObject("pessoa", repository.findByCpf(cpf));
        }

        modelAndView.setViewName("buscas/cpf");

        return modelAndView;
    }

    @GetMapping("/buscas/email")
    public ModelAndView buscaEmail(@RequestParam(required = false) String email) {
        ModelAndView modelAndView = new ModelAndView();

        if (email != null && !"".equals(email)) {
            modelAndView.addObject("pessoa", repository.findByEmail(email));
        }

        modelAndView.setViewName("buscas/email");

        return modelAndView;
    }

    @GetMapping("/buscas/avancada")
    public ModelAndView buscaAvancada(@RequestParam(required = false) String nome,
            @RequestParam(required = false) String nomeDoPai, @RequestParam(required = false) String nomeDaMae,
            @RequestParam(required = false) String cidade, @RequestParam(required = false) String estado) {

        ModelAndView modelAndView = new ModelAndView();

        Specification<Pessoa> finalSpec = Specification.where(null);

        if(nome != null && !nome.isEmpty()) {
            finalSpec = finalSpec.and(PessoaSpecs.nome(nome));
        }

        if(nomeDoPai != null && !nomeDoPai.isEmpty()) {
            finalSpec = finalSpec.and(PessoaSpecs.nomeDoPai(nomeDoPai));
        }

        if(nomeDaMae != null && !nomeDaMae.isEmpty()) {
            finalSpec = finalSpec.and(PessoaSpecs.nomeDaMae(nomeDaMae));
        }

        if(estado != null && !estado.isEmpty()) {
            finalSpec = finalSpec.and(PessoaSpecs.estado(estado));
        }

        if(cidade != null && !cidade.isEmpty()) {
            finalSpec = finalSpec.and(PessoaSpecs.cidade(cidade));
        }

        modelAndView.addObject("pessoas", repository.findAll(finalSpec));

        modelAndView.setViewName("buscas/avancada");

        return modelAndView;
    }

}