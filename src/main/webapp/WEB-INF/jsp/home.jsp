<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:base title="Página Inicial">
  <p>Bem-vindo ao sistema de Cadastro de Pessoa Física</p>
  <div class="card">
    <div class="card-body">
      <h5 class="card-title">Buscas</h5>
      <p class="card-text">Busque por um cadastro utilizando suas informações</p>
      <a href="/buscas/rg" class="btn btn-outline-primary">Busca por RG</a>
      <a href="/buscas/cpf" class="btn btn-outline-primary">Busca por CPF</a>
      <a href="/buscas/email" class="btn btn-outline-primary">Busca por E-Mail</a>
      <a href="/buscas/avancada" class="btn btn-outline-primary">Busca Avançada</a>
    </div>
  </div>

  <div class="card">
    <div class="card-body">
      <h5 class="card-title">Gráficos</h5>
      <p class="card-text">Visualize graficamente informações sobre os dados</p>
      <a href="/graficos/altura" class="btn btn-outline-primary">Altura</a>
      <a href="/graficos/peso" class="btn btn-outline-primary">Peso</a>
      <a href="/graficos/sexo" class="btn btn-outline-primary">Sexo</a>
      <a href="/graficos/tipo-sanguineo" class="btn btn-outline-primary">Tipo Sanguíneo</a>
    </div>
  </div>

</t:base>
