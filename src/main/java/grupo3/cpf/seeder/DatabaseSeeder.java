package grupo3.cpf.seeder;

import grupo3.cpf.pessoa.Pessoa;
import grupo3.cpf.pessoa.PessoaRepository;
import grupo3.cpf.util.GeraCpfCnpj;

import java.time.ZoneId;
import java.util.ArrayList;
import java.util.Locale;

import com.github.javafaker.Faker;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.context.event.EventListener;
import org.springframework.stereotype.Component;

@Component
public class DatabaseSeeder {

    PessoaRepository pessoaRepository;
    Faker faker;

    @Autowired
    public DatabaseSeeder(PessoaRepository pessoaRepository) {
        this.pessoaRepository = pessoaRepository;
        this.faker = new Faker(new Locale("pt_BR"));
    }

    @EventListener
    public void seed(ContextRefreshedEvent event) {

        for (int j = 0; j < 1; j++) {

            ArrayList<Pessoa> pessoas = new ArrayList<Pessoa>();

            for (int i = 0; i < 1000; i++) {
                Pessoa pessoa = new Pessoa();
                pessoa.setNome(faker.name().fullName());
                pessoa.setCpf(GeraCpfCnpj.cpf(false));
                pessoa.setRg(faker.number().digits(14));
                pessoa.setNomeDaMae(faker.name().fullName());
                pessoa.setNomeDoPai(faker.name().fullName());
                pessoa.setAltura(faker.number().numberBetween(100, 200));
                pessoa.setCidade(faker.address().city());
                pessoa.setEstado(faker.address().state());
                pessoa.setPeso(faker.number().numberBetween(30, 200));
                pessoa.setDataDeNascimento(
                        faker.date().birthday().toInstant().atZone(ZoneId.systemDefault()).toLocalDate());
                pessoa.setSexo(faker.options().option("Masculino", "Feminino"));
                pessoa.setEmail(faker.internet().emailAddress());
                pessoa.setTipoSanguineo(faker.options().option("A", "B", "AB", "O") + faker.options().option("+", "-"));
                pessoas.add(pessoa);
            }

            pessoaRepository.saveAll(pessoas);

        }

    }

}