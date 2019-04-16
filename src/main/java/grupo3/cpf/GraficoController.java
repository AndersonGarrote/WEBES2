package grupo3.cpf;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class GraficoController {

    @GetMapping("/graficos/altura")
    public String graficoAltura() {
        return "graficos/altura";
    }

    @GetMapping("/graficos/peso")
    public String graficoPeso() {
        return "graficos/peso";
    }

    @GetMapping("/graficos/sexo")
    public String graficoSexo() {
        return "graficos/sexo";
    }

    @GetMapping("/graficos/tipo-sanguineo")
    public String graficotipoSanguineo() {
        return "graficos/tipoSanguineo";
    }

}