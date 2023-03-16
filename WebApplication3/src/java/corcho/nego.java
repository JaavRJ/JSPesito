package corcho;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author corcho
 */
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class nego implements Serializable{
    private List<datos>lista;

    public nego() {
    }

    public boolean loadLista(){
        datos datito = null;
        lista = new ArrayList<datos>();
        for (int i = 1; i <= 5; i++) {
            datito = new datos();
            datito.setCal((float)(Math.random()*10));
            datito.setNombre(String.format("Javi %d", i));
            lista.add(datito);
        }
        return lista != null && !lista.isEmpty();
    }
    
    public List<datos> getLista() {
        if (lista==null || lista.isEmpty()) {
            if (!loadLista()) {
                return null;
            }
        }
        return lista;
    }

    public void setLista(List<datos> lista) {
        this.lista = lista;
    }
    
}


