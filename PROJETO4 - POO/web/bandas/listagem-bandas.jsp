<%@page import="java.net.URL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.projeto4.Db"%>
<%@page import="br.com.fatecpg.projeto4.Banda"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="estilo.css">
        <title>Cadastro de Bandas</title>
    </head>
    <body>
       <div class="container">                                                                                         
        <%@include file="../WEB-INF/jspf/header.jspf"%>
            <div class="card">
            <div class="card-header">
                <h4>Lista de Bandas</h4>
                
    </div>
    <div class="card-body">
            <div class="row form-band">
            <div class="col-sm-12 col-md-12">
                <table class="table table-striped table-dark">
                <thead>
                  <tr>
                    <th scope="col">Índice</th>
                    <th scope="col">Nome</th>
                    <th scope="col">Genêro</th>
                  </tr>
                </thead>
                <tbody>
                </tbody>
                
                <%for (Banda banda : Db.getBanda()){%>
        
                <tr>
                    <td><%=Db.getBanda().indexOf(banda)%></td>
                    <td><%=banda.getNome()%></td>
                    <td><%=banda.getGenero()%></td>

                </tr>
                <%}%>
            </table>
        </div>
            <a class="btn btn-success" href="../home.jsp" role="button">NOVA BANDA</a>
    </div>
    </div>

                        
                </tbody>
                </table>
                 
            </div>
        </div>
    </div>
</div>
</div>
<%@include file="../WEB-INF/jspf/footer.jspf"%>
</body>
</html>

   