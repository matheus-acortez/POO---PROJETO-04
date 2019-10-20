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
    
    private static ArrayList<Discos> discos;
        public static ArrayList<Discos> getDiscos(){
        if (discos == null){
            discos = new ArrayList<>();
            Banda b = new Banda("Linkin Park", "", "", "");
            Musica m = new Musica("In The End", "", "", b);
            discos.add(new Discos("Meteora", "2003", "Rock", m, b));
            b = new Banda("Pink Floyd", "", "", "");
            m = new Musica("Money", "", "", b);
            discos.add(new Discos("Dark Side of The Moon", "1973", "Rock", m, b));
            b = new Banda("Legiao Urbana", "", "", "");
            m = new Musica("Tempo Perdido", "", "", b);
            discos.add(new Discos("Disco", "1986", "MPB", m, b));
            
        }
     return discos;
    }
     

}
