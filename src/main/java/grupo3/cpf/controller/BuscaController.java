package grupo3.cpf.controller;

import grupo3.cpf.pessoa.Pessoa;
import grupo3.cpf.pessoa.PessoaSpecs;
import grupo3.cpf.pessoa.PessoaRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;
import org.springframework.web.util.UriBuilder;

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
            modelAndView.addObject("pessoa", repository.findByCpf(cpf.replaceAll("\\D+","")));
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
            @RequestParam(required = false) String cidade, @RequestParam(required = false) String estado,
            @RequestParam(defaultValue = "id", required = false) String sort,
            @RequestParam(defaultValue = "asc", required = false) String order,
            @RequestParam(defaultValue = "1", required = false) Integer page) {

        ModelAndView modelAndView = new ModelAndView();

        Specification<Pessoa> finalSpec = Specification.where(null);

        if (nome != null && !nome.isEmpty()) {
            finalSpec = finalSpec.and(PessoaSpecs.nome(nome));
        }

        if (nomeDoPai != null && !nomeDoPai.isEmpty()) {
            finalSpec = finalSpec.and(PessoaSpecs.nomeDoPai(nomeDoPai));
        }

        if (nomeDaMae != null && !nomeDaMae.isEmpty()) {
            finalSpec = finalSpec.and(PessoaSpecs.nomeDaMae(nomeDaMae));
        }

        if (estado != null && !estado.isEmpty()) {
            finalSpec = finalSpec.and(PessoaSpecs.estado(estado));
        }

        if (cidade != null && !cidade.isEmpty()) {
            finalSpec = finalSpec.and(PessoaSpecs.cidade(cidade));
        }

        Sort s;

        if(order.equals("asc")) {
            s = Sort.by(sort).ascending();
        } else {
            s = Sort.by(sort).descending();
        }

        Page<Pessoa> pessoas = repository.findAll(finalSpec, PageRequest.of(page-1, 10, s));

        UriBuilder builder = ServletUriComponentsBuilder.fromCurrentRequest();

        builder.replaceQueryParam("page", 0);

        String url = builder.build().toString();

        url = url.substring(0, url.length() - 1);

        int startPage;
        int endPage;

        if(pessoas.getTotalPages() < 5) {
            startPage = 1;
            endPage = pessoas.getTotalPages();
        } else if(pessoas.getNumber() + 3 >= pessoas.getTotalPages()) {
            startPage = pessoas.getTotalPages() - 4;
            endPage = pessoas.getTotalPages();
        } else {
            startPage = Math.max(1, pessoas.getNumber() - 1);
            endPage = Math.max(pessoas.getNumber() + 3, Math.min(pessoas.getTotalPages(), 5));
        }

        modelAndView.addObject("startPage", startPage);
        modelAndView.addObject("endPage", endPage);
        modelAndView.addObject("url", url);
        modelAndView.addObject("pessoas", pessoas);

        modelAndView.setViewName("buscas/avancada");

        return modelAndView;
    }

}
