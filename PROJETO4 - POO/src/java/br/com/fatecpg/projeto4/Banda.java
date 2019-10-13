package br.com.fatecpg.projeto4;

import java.util.ArrayList;
import java.net.URL;

public class Banda {
    
    private String nome;
    private String genero;
    private String integrantes;
    private String pais;
    private ArrayList<Discos> discos = new ArrayList<>();
    
    public Banda(String nome, String genero, String integrantes, String pais) {
        this.nome = nome;
        this.genero = genero;
        this.integrantes = integrantes;
        this.pais = pais;
        
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
    
     public String getIntegrantes() {
        return integrantes;
    }

    public void setIntegrantes(String integrantes) {
        this.integrantes = integrantes;
    }

    public ArrayList<Discos> getDiscos() {
        return discos;
    }

    public void setDiscos(ArrayList<Discos> discos) {
        this.discos = discos;
    }
    
    
}
