package br.com.fatecpg.projeto4;

import java.util.ArrayList;


public class Db {
     private static ArrayList<Banda> banda;
     public static ArrayList<Banda> getBanda(){
        if (banda == null){
            banda = new ArrayList<>();
            banda.add(new Banda("Linkin Park", "Rock", "Estados Unidos", "2007"));
            banda.add(new Banda("Pink Floyd", "Rock", "Estados Unidos", "2005"));
            banda.add(new Banda("Legiao Urbana", "MPB", "Brasil", "1997"));
        }
        return banda;
    } 
     
     private static ArrayList<Musica> musica;
        public static ArrayList<Musica> getMusica(){
        if (musica == null){
            musica = new ArrayList<>();
            Banda b = new Banda("Linkin Park", "", "", "");
            musica.add(new Musica("In the end", "Rock", "2007", b));
            b = new Banda("Pink Floyd", "", "", "");
            musica.add(new Musica("Money", "Rock", "2008", b));
            b = new Banda("Legiao Urbana", "", "", "");
            musica.add(new Musica("Tempo Perdido", "MPB", "2008", b));
            
        }
     return musica;
    }
     

}
