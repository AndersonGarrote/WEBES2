package grupo3.cpf;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.CrudRepository;

public interface GraficoRepository extends CrudRepository<Pessoa, Long>, JpaSpecificationExecutor<Pessoa> {

    Long countByAlturaBetween(Integer min, Integer max);
    Long countByPesoBetween(Integer min, Integer max);

    Long countBySexo(String sexo);
    Long countByEstadoAndSexo(String estado, String sexo);

    Long countByTipoSanguineo(String tipo);
    Long countByEstadoAndTipoSanguineo(String estado, String tipo);

}
