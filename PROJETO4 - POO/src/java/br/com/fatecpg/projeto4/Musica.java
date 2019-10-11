package br.com.fatecpg.projeto4;

import java.util.ArrayList;

public class Musica {
    
    private String nome;
    private String genero;
    private String ano;
    private Banda banda;
    
    
    
    public void setAno(String ano) {
        this.ano = ano;
    }

    public String getAno() {
        return ano;
    }
   
    public Musica(String nome, String genero, String ano, Banda banda) {
        this.nome = nome;
        this.genero = genero;
        this.ano = ano;
        this.banda = banda;
    }
    
     public String getNome() {
        return nome;
    }
     
    public void setNome(String nome) {
        this.nome = nome;
    }
    
    public String getGenero() {
        return genero;
    }

    public void setGenero(String genero) {
        this.genero = genero;
    }
    
     public Banda getBanda() {
        return banda;
    }

    public void setBanda(Banda banda) {
        this.banda = banda;
    }
    
 
    
   
 
}
