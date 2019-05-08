package grupo3.cpf;

import org.springframework.data.jpa.domain.Specification;

public class PessoaSpecs {

    public static Specification<Pessoa> nome(String nome) {
        return (root, query, cb) -> {
            return cb.like(root.get(Pessoa_.nome), "%" + nome + "%");
        };
    }

    public static Specification<Pessoa> nomeDoPai(String nomeDoPai) {
        return (root, query, cb) -> {
            return cb.like(root.get(Pessoa_.nomeDoPai), "%" + nomeDoPai + "%");
        };
    }

    public static Specification<Pessoa> nomeDaMae(String nomeDaMae) {
        return (root, query, cb) -> {
            return cb.like(root.get(Pessoa_.nomeDaMae), "%" + nomeDaMae + "%");
        };
    }

    public static Specification<Pessoa> cidade(String cidade) {
        return (root, query, cb) -> {
            return cb.equal(root.get(Pessoa_.cidade), cidade);
        };
    }

    public static Specification<Pessoa> estado(String estado) {
        return (root, query, cb) -> {
            return cb.equal(root.get(Pessoa_.estado), estado);
        };
    }

}