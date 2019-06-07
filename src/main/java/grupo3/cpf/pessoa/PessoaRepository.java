package grupo3.cpf.pessoa;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface PessoaRepository extends PagingAndSortingRepository<Pessoa, Long>, JpaSpecificationExecutor<Pessoa> {

    Optional<Pessoa> findByCpf(String cpf);

    Optional<Pessoa> findByRg(String rg);

    Optional<Pessoa> findByEmail(String email);

    @Query(value = "SELECT altura, count(*) FROM Pessoa GROUP BY altura", nativeQuery = true)
    Iterable<Object[]> countAlturas();

    @Query(value = "SELECT altura, count(*) FROM Pessoa WHERE estado = ?1 GROUP BY altura", nativeQuery = true)
    Iterable<Object[]> countAlturasByEstado(String estado);

    @Query(value = "SELECT sexo, altura, count(*) FROM Pessoa GROUP BY sexo, altura", nativeQuery = true)
    Iterable<Object[]> countAlturasGroupBySexos();

    @Query(value = "SELECT sexo, altura, count(*) FROM Pessoa WHERE estado = ?1 GROUP BY sexo, altura", nativeQuery = true)
    Iterable<Object[]> countAlturasByEstadoGroupBySexos(String estado);

    @Query(value = "SELECT peso, count(*) FROM Pessoa GROUP BY peso", nativeQuery = true)
    Iterable<Object[]> countPesos();

    @Query(value = "SELECT peso, count(*) FROM Pessoa WHERE estado = ?1 GROUP BY peso", nativeQuery = true)
    Iterable<Object[]> countPesosByEstado(String estado);

    @Query(value = "SELECT sexo, peso, count(*) FROM Pessoa GROUP BY sexo, peso", nativeQuery = true)
    Iterable<Object[]> countPesosGroupBySexos();

    @Query(value = "SELECT sexo, peso, count(*) FROM Pessoa WHERE estado = ?1 GROUP BY sexo, peso", nativeQuery = true)
    Iterable<Object[]> countPesosByEstadoGroupBySexos(String estado);

    Long countByAlturaBetween(Integer min, Integer max);
    Long countByPesoBetween(Integer min, Integer max);

    Long countBySexo(String sexo);
    Long countByEstadoAndSexo(String estado, String sexo);

    Long countByTipoSanguineo(String tipo);
    Long countByEstadoAndTipoSanguineo(String estado, String tipo);

}