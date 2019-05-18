
package grupo3.cpf;

import java.util.HashMap;
import java.util.Map;
import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class GraficoController {

    @Autowired
    private GraficoRepository repository;

    private Map<String, String> nomeEstado;

    @GetMapping("/graficos/altura")
    public ModelAndView graficoAltura(@RequestParam(required = false) String estado,
            @RequestParam(required=false, defaultValue = "false") Boolean sexo) {
        ModelAndView modelAndView = new ModelAndView();


        modelAndView.setViewName("/graficos/altura");

        return modelAndView;
    }

    @GetMapping("/graficos/peso")
    public String graficoPeso() {
        return "graficos/peso";
    }

    @GetMapping("/graficos/sexo")
    public ModelAndView graficoSexo(@RequestParam(required = false) String estado){
        ModelAndView modelAndView = new ModelAndView();

        if(estado != null){

          if(estado.equals("XX")){

            modelAndView.addObject("masc", repository.countBySexo("Masculino"));
            modelAndView.addObject("femi", repository.countBySexo("Feminino"));
            modelAndView.addObject("regiao", "Brasil");
          }else{

            modelAndView.addObject("masc", repository.countByEstadoAndSexo(nomeEstado.get(estado),"Masculino"));
            modelAndView.addObject("femi", repository.countByEstadoAndSexo(nomeEstado.get(estado),"Feminino"));
            modelAndView.addObject("regiao", nomeEstado.get(estado));
          }

        }

        modelAndView.setViewName("graficos/sexo");

        return modelAndView;
    }

    @GetMapping("/graficos/tipo-sanguineo")
    public String graficotipoSanguineo() {
        return "graficos/tipoSanguineo";
    }


    GraficoController(){
        nomeEstado = new HashMap<String,String>();
        nomeEstado.put("AC","Acre");
        nomeEstado.put("AL","Alagoas");
        nomeEstado.put("AP","Amapá");
        nomeEstado.put("AM","Amazonas");
        nomeEstado.put("BA","Bahia");
        nomeEstado.put("CE","Ceará");
        nomeEstado.put("DF","Distrito Federal");
        nomeEstado.put("ES","Espírito Santo");
        nomeEstado.put("GO","Goiás");
        nomeEstado.put("MA","Maranhão");
        nomeEstado.put("MT","Mato Grosso");
        nomeEstado.put("MS","Mato Grosso do Sul");
        nomeEstado.put("MG","Minas Gerais");
        nomeEstado.put("PA","Pará");
        nomeEstado.put("PB","Paraíba");
        nomeEstado.put("PR","Paraná");
        nomeEstado.put("PE","Pernambuco");
        nomeEstado.put("PI","Piauí");
        nomeEstado.put("RJ","Rio de Janeiro");
        nomeEstado.put("RN","Rio Grande do Norte");
        nomeEstado.put("RS","Rio Grande do Sul");
        nomeEstado.put("RO","Rondônia");
        nomeEstado.put("RR","Roraima");
        nomeEstado.put("SC","Santa Catarina");
        nomeEstado.put("SP","São Paulo");
        nomeEstado.put("SE","Sergipe");
        nomeEstado.put("TO","Tocantins");
    }

}
