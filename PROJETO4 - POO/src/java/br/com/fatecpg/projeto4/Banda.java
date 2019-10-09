package br.com.fatecpg.projeto4;

import java.util.ArrayList;
import java.net.URL;

public class Banda {
    
    private String nome;
    private String genero;
    private String pais;

    public String getNome(){
        return nome;
    }
    
    public void setNome(String nome){
         this.nome = nome;
     }
    
    public String getGenero(){
        return genero;
    }
    
    public void setGenero(String genero){
         this.genero = genero;
     }
    
    public String getPais(){
        return pais;
    }
    
    public void setPais(String pais){
         this.pais = pais;
     }
    
    public Banda(String nome, String genero, String pais) {
        this.nome = nome;
        this.genero = genero;
        this.pais = pais;
    }

    
    
}
