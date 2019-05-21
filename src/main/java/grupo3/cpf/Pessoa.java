package grupo3.cpf;

import java.text.ParseException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.swing.text.MaskFormatter;

@Entity
public class Pessoa {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String nome;
    // @Column(unique = true)
    private String rg;
    // @Column(unique = true)
    private String cpf;
    // @Column(unique = true)
    private String email;
    private String nomeDaMae;
    private String nomeDoPai;
    private LocalDate dataDeNascimento;
    private String cidade;
    private String estado;
    private int peso;
    private String sexo;
    private int altura;
    private String tipoSanguineo;

    /**
     * @return the id
     */
    public Long getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(Long id) {
        this.id = id;
    }

    /**
     * @return the nome
     */
    public String getNome() {
        return nome;
    }

    /**
     * @param nome the nome to set
     */
    public void setNome(String nome) {
        this.nome = nome;
    }

    /**
     * @return the rg
     */
    public String getRg() {
        return rg;
    }

    /**
     * @param rg the rg to set
     */
    public void setRg(String rg) {
        this.rg = rg;
    }

    /**
     * @return the cpf
     */
    public String getCpf() {
        return cpf;
    }

    public String getCpf(boolean shouldFormat) {
        if (shouldFormat) {
            MaskFormatter mask;
            try {
                mask = new MaskFormatter("###.###.###-##");
                mask.setValueContainsLiteralCharacters(false);
                return mask.valueToString(cpf);
            } catch (ParseException e) {
                e.printStackTrace();
                return getCpf();
            }
        } else {
            return getCpf();
        }
    }

    /**
     * @param cpf the cpf to set
     */
    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the nomeDaMae
     */
    public String getNomeDaMae() {
        return nomeDaMae;
    }

    /**
     * @param nomeDaMae the nomeDaMae to set
     */
    public void setNomeDaMae(String nomeDaMae) {
        this.nomeDaMae = nomeDaMae;
    }

    /**
     * @return the nomeDoPai
     */
    public String getNomeDoPai() {
        return nomeDoPai;
    }

    /**
     * @param nomeDoPai the nomeDoPai to set
     */
    public void setNomeDoPai(String nomeDoPai) {
        this.nomeDoPai = nomeDoPai;
    }

    /**
     * @return the cidade
     */
    public String getCidade() {
        return cidade;
    }

    /**
     * @param cidade the cidade to set
     */
    public void setCidade(String cidade) {
        this.cidade = cidade;
    }

    /**
     * @return the estado
     */
    public String getEstado() {
        return estado;
    }

    /**
     * @param estado the estado to set
     */
    public void setEstado(String estado) {
        this.estado = estado;
    }

    /**
     * @return the peso
     */
    public int getPeso() {
        return peso;
    }

    /**
     * @param peso the peso to set
     */
    public void setPeso(int peso) {
        this.peso = peso;
    }

    /**
     * @return the sexo
     */
    public String getSexo() {
        return sexo;
    }

    /**
     * @param sexo the sexo to set
     */
    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    /**
     * @return the altura
     */
    public int getAltura() {
        return altura;
    }

    /**
     * @param altura the altura to set
     */
    public void setAltura(int altura) {
        this.altura = altura;
    }

    /**
     * @return the tipoSanguineo
     */
    public String getTipoSanguineo() {
        return tipoSanguineo;
    }

    /**
     * @param tipoSanguineo the tipoSanguineo to set
     */
    public void setTipoSanguineo(String tipoSanguineo) {
        this.tipoSanguineo = tipoSanguineo;
    }

    /**
     * @return the dataDeNascimento
     */
    public LocalDate getDataDeNascimento() {
        return dataDeNascimento;
    }

    public String getDataDeNascimento(String format) {
        return dataDeNascimento.format(DateTimeFormatter.ofPattern(format));
    }

    /**
     * @param dataDeNascimento the dataDeNascimento to set
     */
    public void setDataDeNascimento(LocalDate dataDeNascimento) {
        this.dataDeNascimento = dataDeNascimento;
    }

    @Override
    public String toString() {
        return "Pessoa [altura=" + altura + ", cidade=" + cidade + ", cpf=" + cpf + ", dataDeNascimento="
                + dataDeNascimento + ", email=" + email + ", estado=" + estado + ", nome=" + nome + ", nomeDaMae="
                + nomeDaMae + ", nomeDoPai=" + nomeDoPai + ", peso=" + peso + ", rg=" + rg + ", sexo=" + sexo
                + ", tipoSanguineo=" + tipoSanguineo + "]";
    }

}