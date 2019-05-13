<%@ tag description="Ficha component" pageEncoding="UTF-8" %>
<%@ attribute name="pessoa" required="true" type="grupo3.cpf.Pessoa" %>
<div class="ficha">
  <div class="flex-row d-flex">
    <div class="col-5">
      <label class="font-weight-bold">Nome: </label>
      <label id="nome">${pessoa.nome}</label>
    </div>
    <div class="col-7">
      <label class="font-weight-bold">E-mail: </label>
      <label id="email">${pessoa.email}</label>
    </div>
  </div>

  <div class="flex-row d-flex">
    <div class="col-5">
      <label class="font-weight-bold">RG: </label>
      <label id="rg">${pessoa.rg}</label>
    </div>
    <div class="col-7">
      <label class="font-weight-bold">CPF: </label>
      <label id="cpf">${pessoa.getCpf(true)}</label>
    </div>
  </div>

  <div class="flex-row d-flex">
    <div class="col-5">
      <label class="font-weight-bold">Nome da Mãe: </label>
      <label id="nomeDaMae">${pessoa.nomeDaMae}</label>
    </div>
    <div class="col-7">
      <label class="font-weight-bold">Nome do Pai: </label>
      <label id="nomeDoPai">${pessoa.nomeDoPai}</label>
    </div>
  </div>

  <div class="flex-row d-flex">
    <div class="col-5">
      <label class="font-weight-bold">Estado: </label>
      <label id="estado">${pessoa.estado}</label>
    </div>
    <div class="col-7">
      <label class="font-weight-bold">Cidade: </label>
      <label id="cidade">${pessoa.cidade}</label>
    </div>
  </div>

  <div class="flex-row d-flex">
    <div class="col-5">
      <label class="font-weight-bold">Peso: </label>
      <label id="peso">${pessoa.peso} Kg</label>
    </div>
    <div class="col-7">
      <label class="font-weight-bold">Altura: </label>
      <label id="altura">${pessoa.altura/100} m</label>
    </div>
  </div>

  <div class="flex-row d-flex">
    <div class="col-5">
      <label class="font-weight-bold">Sexo: </label>
      <label id="sexo">${pessoa.sexo}</label>
    </div>
    <div class="col-7">
      <label class="font-weight-bold">Tipo Sanguíneo: </label>
      <label id="tipoSanguineo">${pessoa.tipoSanguineo}</label>
    </div>
  </div>

  <div class="flex-row d-flex">
    <div class="col-12">
      <label class="font-weight-bold">Data de Nascimento: </label>
      <label id="dataDeNascimento">${pessoa.getDataDeNascimento("dd/MM/yyyy")}</label>
    </div>
  </div>
</div>
