package br.com.fatecpg.projeto4;

import java.util.ArrayList;


public class Db {
     private static ArrayList<Banda> banda;
     public static ArrayList<Banda> getBanda(){
        if (banda == null){
            banda = new ArrayList<>();
            banda.add(new Banda("Linkin Park", "Rock", "Estados Unidos"));
            banda.add(new Banda("Pink Floyd", "Rock", "Estados Unidos"));
            banda.add(new Banda("Legião Urbana", "MPB", "Brasil"));
          
        }
        return banda;
    } 
     
     private static ArrayList<Musica> musica;
        public static ArrayList<Musica> getMusica(){
        if (musica == null){
            musica = new ArrayList<>();
            musica.add(new Musica("In the end", "Rock", "2007"));
            musica.add(new Musica("Money", "Rock", "2008"));
            musica.add(new Musica("Tempo Perdido", "MPB", "2008"));
            
        }
     return musica;
    }
     

}
