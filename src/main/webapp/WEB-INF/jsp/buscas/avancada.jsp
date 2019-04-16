<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:base title="Busca avançada">
    <form action="" method="get">
        <label for="nome">Nome</label>
        <input class="form-control" id="nome" type="text" name="nome">
        <label for="nome_do_pai">Nome do pai</label>
        <input class="form-control" id="nome_do_pai" type="text" name="nome_do_pai">
        <label for="nome_da_mae">Nome da mãe</label>
        <input class="form-control" id="nome_da_mae" type="text" name="nome_da_mae">
        <label for="cidade">Cidade</label>
        <input class="form-control" id="cidade" type="text" name="cidade">
        <label for="estado">Estado</label>
        <input class="form-control" id="estado" type="text" name="estado">
        <input class="btn btn-primary my-2" type="submit" value="Buscar">
    </form>
    <table class="table table-bordered table-striped">
        <caption>Lista de cadastros</caption>
        <thead>
            <tr>
                <th>Nome</th>
                <th>CPF</th>
                <th>Data de nascimento</th>
                <th>Cidade</th>
                <th>Estado</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>David Bezerra Galvão</td>
                <td>420.445.808-45</td>
                <td>1924-06-27</td>
                <td>Furtado do Norte</td>
                <td>SE</td>
            </tr>
            <tr>
                <td>Daniela Garcia</td>
                <td>910.882.537-84</td>
                <td>1924-05-27</td>
                <td>Porto Constância</td>
                <td>SE</td>
            </tr>
            <tr>
                <td>David Vicente Matos</td>
                <td>889.625.763-84</td>
                <td>1956-03-01</td>
                <td>Aaron do Leste</td>
                <td>RN</td>
            </tr>
            <tr>
                <td>Mia Maia Godói Jr.</td>
                <td>755.099.275-42</td>
                <td>1943-11-02</td>
                <td>São Emílio</td>
                <td>GO</td>
            </tr>
            <tr>
                <td>Emiliano Anderson Serra</td>
                <td>226.099.691-47</td>
                <td>1994-03-30</td>
                <td>Rocha do Sul</td>
                <td>BA</td>
            </tr>
            <tr>
                <td>Ashley Sales Prado Sobrinho</td>
                <td>154.873.887-50</td>
                <td>1969-11-09</td>
                <td>Padrão d&#39;Oeste</td>
                <td>SP</td>
            </tr>
            <tr>
                <td>Pablo Mascarenhas</td>
                <td>535.526.371-25</td>
                <td>1971-08-13</td>
                <td>Natal do Sul</td>
                <td>PE</td>
            </tr>
            <tr>
                <td>Adriano David de Oliveira</td>
                <td>073.954.354-78</td>
                <td>1961-05-02</td>
                <td>São Gabriel</td>
                <td>SC</td>
            </tr>
            <tr>
                <td>Joana Sophie Montenegro</td>
                <td>050.468.426-45</td>
                <td>1955-06-29</td>
                <td>Porto Catarina do Norte</td>
                <td>DF</td>
            </tr>
            <tr>
                <td>Christopher Andres Paes</td>
                <td>654.459.078-99</td>
                <td>1954-07-18</td>
                <td>Santa Carlos do Norte</td>
                <td>AP</td>
            </tr>
            <tr>
                <td>Mel Duarte</td>
                <td>317.163.103-26</td>
                <td>1932-09-16</td>
                <td>Rocha d&#39;Oeste</td>
                <td>DF</td>
            </tr>
            <tr>
                <td>Joana Azevedo Jr.</td>
                <td>216.212.787-35</td>
                <td>1964-12-18</td>
                <td>Vila João</td>
                <td>MG</td>
            </tr>
            <tr>
                <td>Suzana Barros Batista</td>
                <td>640.746.924-49</td>
                <td>1952-05-09</td>
                <td>Galvão do Sul</td>
                <td>PB</td>
            </tr>
            <tr>
                <td>Paulo Evandro Ramos</td>
                <td>842.421.513-30</td>
                <td>1974-02-03</td>
                <td>Porto Gustavo</td>
                <td>SE</td>
            </tr>
            <tr>
                <td>Andrea Bonilha</td>
                <td>513.734.220-33</td>
                <td>1999-01-05</td>
                <td>Leon do Leste</td>
                <td>PA</td>
            </tr>
            <tr>
                <td>Valentina Casanova Neto</td>
                <td>596.153.570-30</td>
                <td>1930-01-18</td>
                <td>Santa Luciano</td>
                <td>BA</td>
            </tr>
            <tr>
                <td>Paulo Christopher Vale</td>
                <td>804.352.502-13</td>
                <td>1990-04-03</td>
                <td>Vila Miguel</td>
                <td>SP</td>
            </tr>
            <tr>
                <td>Ariadna Azevedo</td>
                <td>843.151.714-09</td>
                <td>1944-02-27</td>
                <td>Uchoa do Norte</td>
                <td>DF</td>
            </tr>
            <tr>
                <td>Rebeca Serra Sobrinho</td>
                <td>762.958.296-00</td>
                <td>1933-11-06</td>
                <td>Porto Ricardo do Leste</td>
                <td>RO</td>
            </tr>
            <tr>
                <td>Hugo Giovane Fidalgo Filho</td>
                <td>024.633.013-92</td>
                <td>1985-08-06</td>
                <td>Cortês d&#39;Oeste</td>
                <td>ES</td>
            </tr>
            <tr>
                <td>Violeta Ortega Cortês Filho</td>
                <td>309.625.160-66</td>
                <td>1954-08-22</td>
                <td>João do Sul</td>
                <td>RN</td>
            </tr>
            <tr>
                <td>Luana Juliana Bittencourt</td>
                <td>758.088.950-14</td>
                <td>1943-07-18</td>
                <td>Santa Helena do Sul</td>
                <td>GO</td>
            </tr>
            <tr>
                <td>Gabriela Assunção Neto</td>
                <td>662.013.265-02</td>
                <td>1993-06-26</td>
                <td>Vila Ariadna do Norte</td>
                <td>AL</td>
            </tr>
            <tr>
                <td>Agustina Paes</td>
                <td>917.321.379-94</td>
                <td>1970-01-08</td>
                <td>Santa Felipe do Sul</td>
                <td>SC</td>
            </tr>
            <tr>
                <td>Isabel das Dores Escobar Filho</td>
                <td>933.096.270-04</td>
                <td>1992-10-04</td>
                <td>Alonso do Sul</td>
                <td>AP</td>
            </tr>
            <tr>
                <td>Ivan Rosa Leal Jr.</td>
                <td>966.526.921-63</td>
                <td>1958-11-29</td>
                <td>Maldonado do Norte</td>
                <td>SC</td>
            </tr>
            <tr>
                <td>Vitória Fontes</td>
                <td>040.512.561-54</td>
                <td>1964-03-26</td>
                <td>Leandro do Leste</td>
                <td>PR</td>
            </tr>
            <tr>
                <td>Regina Camacho Neto</td>
                <td>684.992.245-98</td>
                <td>1971-06-06</td>
                <td>Noel do Leste</td>
                <td>AM</td>
            </tr>
            <tr>
                <td>Fernando Queirós Aragão Filho</td>
                <td>205.679.019-04</td>
                <td>1968-09-12</td>
                <td>Máximo do Norte</td>
                <td>MT</td>
            </tr>
            <tr>
                <td>Leonardo Campos Neto</td>
                <td>899.463.609-93</td>
                <td>1962-04-17</td>
                <td>Santa Paulina do Sul</td>
                <td>RN</td>
            </tr>
        </tbody>
    </table>
    <nav aria-label="Page navigation example">
        <ul class="pagination">
            <li class="page-item"><a class="page-link" href="#">Anterior</a></li>
            <li class="page-item"><a class="page-link" href="#">1</a></li>
            <li class="page-item"><a class="page-link" href="#">2</a></li>
            <li class="page-item"><a class="page-link" href="#">3</a></li>
            <li class="page-item"><a class="page-link" href="#">Próxima</a></li>
        </ul>
    </nav>
</t:base>