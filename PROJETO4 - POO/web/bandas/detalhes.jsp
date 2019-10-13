<%@page import="br.com.fatecpg.projeto4.Discos"%>
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
        <link rel="stylesheet" type="text/css" href="../estilo.css">
        <title>Detalhes da Banda ou Artista</title>
    </head>
    <body>
       <div class="container">                                                                                         
        <%@include file="../WEB-INF/jspf/header.jspf"%>
            <div class="card">
            <div class="card-header">
                 <h1>Detalhes da Banda ou Artista</h1>
                
    </div>
    <div class="card-body">
            
            <div class="row form-band">
            <div class="col-sm-12 col-md-12">
               
               
            </div>
                
            </div>
        <%if(request.getParameter("i")==null){%>
            <div>Épreciso informar o indice do artista</div>
        <% }else{%>
            <% try{%>
                <%int i = Integer.parseInt(request.getParameter("i"));%>
                <%Banda banda = Db.getBanda().get(i);%>
               
                <h3>Nome</h3><div><%= banda.getNome()%></div>
                <h3>Gênero</h3><div><%= banda.getGenero()%></div>
                <h3>Integrantes</h3><div><%= banda.getIntegrantes()%></div>
                <h3>País</h3><div><%= banda.getPais()%></div>
                <h3>Discos</h3>
    <table border="i">
        <tr>
            <th>Nome</th>
            <th>Banda ou Artista</th>
            <th>Ano</th>
            <th>Gravadora</th>
            <th>Músicas</th>
        </tr>
        <%  for(Discos disco: banda.getDiscos()){%>
        <tr>
            <td><% %></td>
            <td><%%></td>
            <td><%%></td>
            <td><%%></td>
            <td><% %></td>
        </tr>
        <%  }%>
    </table>
                <%}catch(Exception e){%>
                    <div>Artista não encontrado.</div>
            <%}%>
        <% }%>
        
    </div>
</div>
</div>
<%@include file="../WEB-INF/jspf/footer.jspf"%>
</body>
</html>

   