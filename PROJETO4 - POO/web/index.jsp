<%@page import="br.com.fatecpg.projeto4.Musica"%>
<%@page import="br.com.fatecpg.projeto4.Db"%>
<%@page import="br.com.fatecpg.projeto4.Banda"%>
<%@page import="br.com.fatecpg.projeto4.Discos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>Cadastro de Músicas, bandas e discos.</title>
    </head>
    <body>
        <div class='container'>
            <%@include file="WEB-INF/jspf/header.jspf"%>
            <div id="accordion" class="amort">
            <div class="card">
                <div class="card-header" id="headingOne" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                    <h5 class="mb-0 text-secondary">Bandas 
                        <span class="float-right"><%=Db.getBanda().size()%></span>
                    </h5>
                </div>
            </div>
             <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
        <div class="card-body">
            <table class="table table-striped">
            <thead>
              <tr>
                <th scope="col">#</th>
                <th scope="col">Nome</th>
                <th scope="col">Genêro</th>
                <th scope="col">Pais</th>
                <th scope="col">Ano</th>
               
                
             
              </tr>
            </thead>
            <tbody>
        </tbody>

        <%for (int i=0; i<Db.getBanda().size(); i++){%>
            <%Banda c= Db.getBanda().get(i);%>
        <tr>
            <td><%=i+1%></td>
            <td> <%=c.getNome()%>
            <td><%=c.getGenero()%></td>
            <td><%=c.getPais()%></td>
            <td><%=c.getAno()%></td>
            

        </tr>
        <%}%>
            </table>
        </div>
        </div>
        </div>
        <div class="card">
            <div class="card-header" id="headingOne" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                <h5 class="mb-0 text-secondary">Musicas 
                    <span class="float-right"><%=Db.getMusica().size()%></span>
                </h5>
            </div>
        </div>
        <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
            <div class="card-body">
                <table class="table table-striped">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">Nome</th>
                        <th scope="col">Genêro</th>
                        <th scope="col">Ano</th>
                        <th scope="col">Banda</th>
                      </tr>
                    </thead>
                    <tbody>

                        <%for (int i=0; i<Db.getMusica().size(); i++){%>
                            <%Musica c= Db.getMusica().get(i);%>
                        <tr>
                            <td><%=i+1%></td>
                            <td><%=c.getNome()%></td>
                            <td><%=c.getGenero()%></td>
                            <td><%=c.getAno()%></td>
                            <td><%=c.getBanda().getNome()%></td>

                        </tr>
                        <%}%>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="card">
            <div class="card-header" id="headingOne" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                <h5 class="mb-0 text-secondary">Discos
                    <span class="float-right"><%=Db.getDiscos().size()%></span>
                </h5>
            </div>
        </div>
        <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordion">
            <div class="card-body">
                <table class="table table-striped">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">Nome</th>
                        <th scope="col">Genêro</th>
                        <th scope="col">Ano</th>
                        <th scope="col">Banda</th>
                      </tr>
                    </thead>
                    <tbody>

                        <%for (int i=0; i<Db.getDiscos().size(); i++){%>
                            <%Discos c= Db.getDiscos().get(i);%>
                        <tr>
                            <td><%=i+1%></td>
                            <td><%=c.getNome()%></td>
                            <td><%=c.getGenero()%></td>
                            <td><%=c.getAno()%></td>
                            <td><%=c.getBanda().getNome()%></td>

                        </tr>
                        <%}%>
                    </tbody>
                </table>
            </div>
        </div>
    
    <%@include file="WEB-INF/jspf/time.jspf"%>
    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <%@include file="WEB-INF/jspf/footer.jspf"%>
    </body>
</html>
