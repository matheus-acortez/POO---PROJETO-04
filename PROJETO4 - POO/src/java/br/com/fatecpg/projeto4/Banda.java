package br.com.fatecpg.projeto4;

import java.util.ArrayList;
import java.net.URL;

public class Banda {
    
    private String nome;
    private String genero;
    private String pais;
    private String ano; 
    
    public Banda(String nome, String genero, String pais, String ano) {
        this.nome = nome;
        this.genero = genero;
        this.pais = pais;
        this.ano = ano;
        
    }

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
    
     public String getAno(){
        return ano;
    }
    
    public void setAno(String ano){
         this.ano = ano;
     }

   
    
    
}
