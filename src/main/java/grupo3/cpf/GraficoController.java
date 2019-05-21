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
    public String graficoSexo(@RequestParam(required = false) String estado) {
        return "graficos/sexo";
    }

    @GetMapping("/graficos/tipo-sanguineo")
    public String graficotipoSanguineo() {
        return "graficos/tipoSanguineo";
    }

}