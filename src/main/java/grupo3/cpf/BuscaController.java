package grupo3.cpf;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BuscaController {

    @GetMapping("/buscas/rg")
    public String buscaRg() {
        return "buscas/rg";
    }

    @GetMapping("/buscas/cpf")
    public String buscaCpf() {
        return "buscas/cpf";
    }

    @GetMapping("/buscas/email")
    public String buscaEmail() {
        return "buscas/email";
    }

    @GetMapping("/buscas/avancada")
    public String buscaAvancada() {
        return "buscas/avancada";
    }

}