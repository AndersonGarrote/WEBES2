package grupo3.cpf;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.PagingAndSortingRepository;

public interface PessoaRepository extends PagingAndSortingRepository<Pessoa, Long>, JpaSpecificationExecutor<Pessoa> {

    Optional<Pessoa> findByCpf(String cpf);
    Optional<Pessoa> findByRg(String rg);
    Optional<Pessoa> findByEmail(String email);

}