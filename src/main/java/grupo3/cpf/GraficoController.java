
package grupo3.cpf;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class GraficoController {

    @Autowired
    PessoaRepository repository;

    @GetMapping("/graficos/altura")
    public ModelAndView graficoAltura(@RequestParam(required = false) String estado,
            @RequestParam(required = false) Boolean sexo) {

        ModelAndView modelAndView = new ModelAndView();

        Gson gson = new GsonBuilder().create();

        if (estado != null && !estado.isEmpty()) {

            Iterable<Object[]> queryResult;

            if (sexo != null && sexo == true) {

                Map<String, Map<String, ArrayList<String>>> resultado = new HashMap<>();

                if (estado.equals("Todos")) {
                    queryResult = repository.countAlturasGroupBySexos();
                } else {
                    queryResult = repository.countAlturasByEstadoGroupBySexos(estado);
                }

                for (Object[] linha : queryResult) {
                    resultado.computeIfAbsent(linha[0].toString(), k -> new HashMap<String, ArrayList<String>>());
                    Map<String, ArrayList<String>> map = resultado.get(linha[0].toString());
                    map.computeIfAbsent("alturas", k -> new ArrayList<String>());
                    map.computeIfAbsent("contagem", k -> new ArrayList<String>());
                    map.get("alturas").add(linha[1].toString());
                    map.get("contagem").add(linha[2].toString());
                    resultado.put(linha[0].toString(), map);
                }

                modelAndView.addObject("resultado", gson.toJson(resultado));

            } else {

                Map<String, ArrayList<String>> resultado = new HashMap<>();

                if (estado.equals("Todos")) {
                    queryResult = repository.countAlturas();
                } else {
                    queryResult = repository.countAlturasByEstado(estado);
                }

                for (Object[] linha : queryResult) {
                    resultado.computeIfAbsent("alturas", k -> new ArrayList<String>());
                    resultado.computeIfAbsent("contagem", k -> new ArrayList<String>());
                    resultado.get("alturas").add(linha[0].toString());
                    resultado.get("contagem").add(linha[1].toString());
                }

                modelAndView.addObject("resultado", gson.toJson(resultado));

            }

        }

        modelAndView.setViewName("graficos/altura");

        return modelAndView;

    }

    @GetMapping("/graficos/peso")
    public ModelAndView graficoPeso(@RequestParam(required = false) String estado,
            @RequestParam(required = false) Boolean sexo) {

        ModelAndView modelAndView = new ModelAndView();

        Gson gson = new GsonBuilder().create();

        if (estado != null && !estado.isEmpty()) {

            Iterable<Object[]> queryResult;

            if (sexo != null && sexo == true) {

                Map<String, Map<String, ArrayList<String>>> resultado = new HashMap<>();

                if (estado.equals("Todos")) {
                    queryResult = repository.countPesosGroupBySexos();
                } else {
                    queryResult = repository.countPesosByEstadoGroupBySexos(estado);
                }

                for (Object[] linha : queryResult) {
                    resultado.computeIfAbsent(linha[0].toString(), k -> new HashMap<String, ArrayList<String>>());
                    Map<String, ArrayList<String>> map = resultado.get(linha[0].toString());
                    map.computeIfAbsent("pesos", k -> new ArrayList<String>());
                    map.computeIfAbsent("contagem", k -> new ArrayList<String>());
                    map.get("pesos").add(linha[1].toString());
                    map.get("contagem").add(linha[2].toString());
                    resultado.put(linha[0].toString(), map);
                }

                modelAndView.addObject("resultado", gson.toJson(resultado));

            } else {

                Map<String, ArrayList<String>> resultado = new HashMap<>();

                if (estado.equals("Todos")) {
                    queryResult = repository.countPesos();
                } else {
                    queryResult = repository.countPesosByEstado(estado);
                }

                for (Object[] linha : queryResult) {
                    resultado.computeIfAbsent("pesos", k -> new ArrayList<String>());
                    resultado.computeIfAbsent("contagem", k -> new ArrayList<String>());
                    resultado.get("pesos").add(linha[0].toString());
                    resultado.get("contagem").add(linha[1].toString());
                }

                modelAndView.addObject("resultado", gson.toJson(resultado));

            }

        }

        modelAndView.setViewName("graficos/peso");

        return modelAndView;

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
    public ModelAndView graficotipoSanguineo(@RequestParam(required = false) String estado){
        ModelAndView modelAndView = new ModelAndView();

        if(estado != null){

          String[] tipos = {"AB+","AB-","A+","A-","B+","B-","O+","O-"};
          String[] labels = {"ABp","ABn","Ap","An","Bp","Bn","Op","On"};

          if(estado.equals("XX")){
            for ( int i = 0 ; i < 8 ; i++) {
              modelAndView.addObject(labels[i], repository.countByTipoSanguineo(tipos[i]));
            }
            modelAndView.addObject("regiao", "Brasil");
          }else{
            for ( int i = 0 ; i < 8 ; i++) {
              modelAndView.addObject(labels[i], repository.countByEstadoAndTipoSanguineo(nomeEstado.get(estado),tipos[i]));
            }
            modelAndView.addObject("regiao", nomeEstado.get(estado));
          }

        }

        modelAndView.setViewName("/graficos/tipo-sanguineo");

        return modelAndView;
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
