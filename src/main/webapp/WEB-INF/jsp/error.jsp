<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:base title="Ocorreu um erro!">

    <div >
      <h4 class="alert alert-dark">Erro ${status} - ${error}</h4>
    </div>

  <div class="card my-2">
      <div class="card-header" data-toggle="collapse" href="#table-erro" aria-expanded="false">
          Mais informações
      </div>
      <div class="card-body collapse" id="table-erro">
          <table class="table">
              <tr scope="row">
                  <td>Mensagem: </td>
                  <td>${message}</td>
              </tr>
              <tr scope="row">
                  <td>Data: </td>
                  <td>${timestamp}</td>
              </tr>
              <tr scope="row">
                  <td>Exception: </td>
                  <td>${exception}</td>
              </tr>
              <tr scope="row">
                  <td>Trace: </td>
                  <td>
                      <pre>${trace}</pre>
                  </td>
              </tr>
          </table>
      </div>
  </div>

</t:base>
