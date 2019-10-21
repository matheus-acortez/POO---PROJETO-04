<%@page import="java.net.URL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.projeto4.Db"%>
<%@page import="br.com.fatecpg.projeto4.Discos"%>
<%@page import="br.com.fatecpg.projeto4.Banda"%>
<%@page import="br.com.fatecpg.projeto4.Musica"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="../estilo.css">
        <title>Cadastro de Discos</title>
    </head>
    <body>
       <div class="container">                                                                                         
        <%@include file="../WEB-INF/jspf/header.jspf"%>
            <div class="card">
            <div class="card-header">
                <h4>Cadastro de Discos</h4>
                <% 
           

                 if (request.getParameter("cadastro") != null) {
                        String nome = request.getParameter("nome");
                        String genero = request.getParameter("genero");
                        String ano = request.getParameter("ano");
                        String banda = request.getParameter("banda");
                        String musica = request.getParameter("musica");
                        Banda b = new Banda(banda, "","", "");
                        Db.getMusica().add(new Musica(nome, genero, ano, b));
                        response.sendRedirect(request.getRequestURI());    
                        
                    }else if (request.getParameter("remover") !=null){
                         int i = Integer.parseInt(request.getParameter("index"));
                         Db.getMusica().remove(i);
                         response.sendRedirect(request.getRequestURI());   
                         
                     } else if (request.getParameter("salvar") != null) { 
                        
                        int index = Integer.parseInt(request.getParameter("index"));
                        String nome = request.getParameter("nome");
                        String genero = request.getParameter("genero");
                        String ano = request.getParameter("ano");
                        String banda = request.getParameter("banda");
                        String musica = request.getParameter("musica");
                        Banda b = new Banda(banda, "","", "");
                        Db.getMusica().set(index, new Musica(nome, genero, ano, b));
                        response.sendRedirect(request.getRequestURI()); 
                    
                    
                 }
                          
        
                %>
    </div>
    <div class="card-body">
        <form class="">
        <div class="form-group row">
          <label for="nomeLabel" class="col-sm-2 col-form-label">Nome</label>
          <div class="col-sm-3">
            <input type="text" name="nome" class="form-control" id="nomeLabel" placeholder="Nome do Disco">
          </div>
        </div>
        <div class="form-group row">
          <label for="generoLabel" class="col-sm-2 col-form-label">Gênero</label>
          <div class="col-sm-3">
            <input type="text" name="genero" class="form-control" id="generoLabel" placeholder="Gênero Musical">
          </div>
           </div>
           <div class="form-group row">
          <label for="generoLabel" class="col-sm-2 col-form-label">Ano</label>
          <div class="col-sm-3">
            <input type="text" name="ano" class="form-control" id="generoLabel" placeholder="Ano de lançamento">
          </div>
           </div>
            <div class="form-group row">
                    <label for="nome" class="col-sm-1 col-form-label"></label>
                    <div class="row form-bandas">
                    <div class="col-sm-12">
                        <select name="disco" class="custom-select" required>
                            <option>Selecione um disco</option>
                            <%for (Discos discos : Db.getDiscos()) {%>
                            <option value="<%=discos.getNome()%>"><%=discos.getNome()%></option>
                            <%}%>
                        </select>
                    </div>
                    </div>
            </div>
                
        <input class="btn btn-info" name="cadastro" type="submit" value="Cadastrar">
    </form>      
            <div class="row form-band">
            <div class="col-sm-12 col-md-12">
                <h4>Lista de Músicas</h4>
                <table class="table table-striped table-dark">
                <thead>
                  <tr>
                    <th scope="col">Índice</th>
                    <th scope="col">Nome</th>
                    <th scope="col">Genêro</th>
                    <th scope="col">Ano</th>
                    <th scope="col">Banda</th>
                  </tr>
                </thead>
                <tbody>
                </tbody>
                <%if(request.getParameter("alterar") == null) {
                    for (int i=0; i<Db.getMusica().size(); i++){%>
                        <%Musica c= Db.getMusica().get(i);%>
                <tr>
                    <td><%=i+1%></td>
                    <td><%=c.getNome()%></td>
                    <td><%=c.getGenero()%></td>
                    <td><%=c.getAno()%></td>
                    <td><%=c.getBanda().getNome()%></td>
                    <td>
                        <form>
                            <input type="hidden" name="index" value="<%=i%>"/>
                            <input class="btn btn-danger"  type="submit" name="remover" value="Excluir"/>
                        </form>
                        </td>
                        <td>
                        <form>
                            <input type="hidden" name="index" value="<%=i%>"/>
                            <input class="btn btn-info" type="submit" name="alterar" value="Alterar"/>
                        </form>
                        </td>
                        </tr>

                </tr>
                <%}} 
                else {
                    for (int i=0; i<Db.getMusica().size(); i++){
                              Musica c = Db.getMusica().get(i);
                                if(i != Integer.parseInt(request.getParameter("index"))){%>
                                    <!-- Aqui é somente a exibição dos valores, retornando o valor atual do atributo. -->
                                    <tr>
                                        <td><%=i+1%></td>
                                        <td><%=c.getNome()%></td>
                                        <td><%=c.getGenero()%></td>
                                        <td><%=c.getAno()%></td>
                                        <td><%=c.getBanda().getNome()%></td>
                                            
                                    <td>
                                        <form>
                                            <input type="hidden" name="index" value="<%=i%>"/>
                                            <input class="btn btn-danger" type="submit" name="remover" value="Excluir"/>
                                        </form>
                                    </td>
                                    <td>
                                        <form>
                                            <input type="hidden" name="index" value="<%=i%>"/>
                                            <input class="btn btn-info" type="submit" name="alterar" value="Alterar"/>
                                        </form>
                                    </td>
                                    </tr>
                                    <%}else {%>

                                    <!-- Form do 'alterar' -->
                                    <tr>
                                        <form>
                                        <td><%=i+1%></td>
                                        <td><input class="form-control" type="text" name="nome"  value="<%=c.getNome()%>"></td>
                                        <td><input class="form-control" type="text" name="genero" value="<%=c.getGenero()%>"></td>
                                        <td><input class="form-control" type="text" name="ano" value="<%=c.getAno()%>"></td>
                                 
                                        <td>
                                            <select name="banda" class="custom-select" required>
                                                <option selected value="-1">Selecione uma banda</option>
                                                <%for (Banda banda : Db.getBanda()){ 
                                                       if (banda.getNome().equals(c.getBanda().getNome())){%>
                                                           <option selected="selected" value="<%=banda.getNome()%>"><%=banda.getNome()%></option>
                                                       <%}else{%>
                                                            <option value="<%=banda.getNome()%>"><%=banda.getNome()%></option>
                                                                
                                                       <%}%>
                                          
                                                <%}%>
                                            </select>
                                        </td>
           
                                         
                                        
                                        <input type="hidden" name="index" value="<%=i%>"/>
                                        <td><input class="btn btn-success" type="submit" value="Salvar" name="salvar"</td>
                                        </form>
                                    </tr>

                                <%}}}%>
            
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
 
   

