package br.com.fatecpg.projeto4;

import java.util.ArrayList;


public class Db {
     private static ArrayList<Banda> banda;
     public static ArrayList<Banda> getBanda(){
        if (banda == null){
            banda = new ArrayList<>();
            banda.add(new Banda("Linkin Park", "Rock", " Chester Bennington, Mike Shinoda, Joe Hahn, Brad Delson, Rob Bourdon, Dave Farrell, Mark Wakefield, Kyle Christener, Scott Koziol","Estados Unidos"));
            banda.add(new Banda("Pink Floyd", "Rock", "Roger Waters, David Gilmour, Syd Barrett, Richard Wright, Nick Mason, Bob Klose","Estados Unidos"));
            banda.add(new Banda("Legiao Urbana", "MPB", " Renato Russo, Dado Villa-Lobos, Marcelo Bonfá, Renato Rocha, André Frateschi, Ico Ouro-Preto, Paulo Paulista, Eduardo Paraná ","Brasil"));
          
        }
        return banda;
    } 
     
     private static ArrayList<Musica> musica;
        public static ArrayList<Musica> getMusica(){
        if (musica == null){
            musica = new ArrayList<>();
            Banda b = new Banda("Linkin Park", "","", "");
            musica.add(new Musica("In the end", "Rock", "2007", b));
            b = new Banda("Pink Floyd", "","", "");
            musica.add(new Musica("Money", "Rock", "2008", b));
            b = new Banda("Legiao Urbana", "","", "");
            musica.add(new Musica("Tempo Perdido", "MPB", "2008", b));
            
        }
     return musica;
    }
     

}
