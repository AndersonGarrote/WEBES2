<%@ tag description="Ficha component" pageEncoding="UTF-8" %>
<%@ attribute name="pessoa" required="true" type="grupo3.cpf.Pessoa" %>
<div class="ficha">
  <table class="table text-justify">
    <tbody>
      <tr class="d-flex">
        <th scope="row">Nome:</th>
        <td id="nome">${pessoa.nome}</td>
      </tr>
      <tr class="d-flex">
        <th scope="row">RG:</th>
        <td id="rg">${pessoa.rg}</td>
      </tr>
      <tr class="d-flex">
        <th scope="row">CPF:</th>
        <td id="cpf">${pessoa.getCpf(true)}</td>
      </tr>
      <tr class="d-flex">
        <th scope="row">E-mail:</th>
        <td id="email">${pessoa.email}</td>
      </tr>

      <tr class="d-flex">
        <th scope="row">Nome da Mãe:</th>
        <td id="nomeDaMae">${pessoa.nomeDaMae}</td>
      </tr>
      <tr class="d-flex">
        <th scope="row">Nome do Pai:</th>
        <td id="nomeDoPai">${pessoa.nomeDoPai}</td>
      </tr>
      <tr class="d-flex">
        <th scope="row">Data de Nascimento:</th>
        <td id="dataDeNascimento">${pessoa.getDataDeNascimento("dd/MM/yyyy")}</td>
      </tr>

      <tr class="d-flex">
        <th scope="row">Cidade:</th>
        <td id="cidade">${pessoa.cidade}</td>
      </tr>
      <tr class="d-flex">
        <th scope="row">Estado:</th>
        <td id="estado">${pessoa.estado}</td>
      </tr>

      <tr class="d-flex">
        <th scope="row">Sexo:</th>
        <td id="sexo">${pessoa.sexo}</td>
      </tr>
      <tr class="d-flex">
        <th scope="row">Peso:</th>
        <td id="peso">${pessoa.peso} Kg</td>
      </tr>
      <tr class="d-flex">
        <th scope="row">Altura:</th>
        <td id="altura">${pessoa.altura/100} m</td>
      </tr>
      <tr class="d-flex">
        <th scope="row">Tipo Sanguíneo:</th>
        <td id="tipoSanguineo">${pessoa.tipoSanguineo}</td>
      </tr>
    </tbody>
  </table>
</div>
