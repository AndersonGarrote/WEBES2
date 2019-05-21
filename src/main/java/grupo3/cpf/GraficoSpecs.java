package grupo3.cpf;

import org.springframework.data.jpa.domain.Specification;

public class GraficoSpecs{

  public static Specification<Pessoa> estado(String estado) {
      return (root, query, cb) -> {
          return cb.equal(root.get(Pessoa_.estado), "%" + estado + "%");
      };
  }

  public static Specification<Pessoa> sexo(String sexo) {
      return (root, query, cb) -> {
          return cb.equal(root.get(Pessoa_.sexo), "%" + sexo + "%");
      };
  }

  public static Specification<Pessoa> altura(String altura) {
      return (root, query, cb) -> {
          return cb.equal(root.get(Pessoa_.altura), "%" + altura + "%");
      };
  }

  public static Specification<Pessoa> peso(String peso) {
      return (root, query, cb) -> {
          return cb.equal(root.get(Pessoa_.peso), "%" + peso + "%");
      };
  }
}
