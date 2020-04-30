package br.com.fiap.repository;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import br.com.fiap.model.EletronicosModel;

public class EletronicosRepository {
	private Map<Long, EletronicosModel> eletronicos;

	public EletronicosRepository() {
		eletronicos = new HashMap<Long, EletronicosModel>();

		eletronicos.put(1L, new EletronicosModel(1L, "Hardware", "HD SSL 500GB", "Lorem Ipsum Lolor 1", 280.95));
		eletronicos.put(2L, new EletronicosModel(2L, "Televisor", "Televisao 49'", "Lorem Ipsum Lolor 2", 1500));
		eletronicos.put(3L, new EletronicosModel(3L, "Celular", "Iphone X", "Lorem Ipsum Lolor 3", 2300));
		eletronicos.put(4L, new EletronicosModel(4L, "Acessorio", "Carregador de Notebook", "Lorem Ipsum Lolor 4", 60));
		eletronicos.put(5L, new EletronicosModel(5L, "Notebook", "Lell I5 8GB", "Lorem Ipsum Lolor 5", 3600));
		eletronicos.put(6L, new EletronicosModel(6L, "Desktop", "PC Gamer Gygabite", "Lorem Ipsum Lolor 6",4500));
	}
	
	public List<EletronicosModel> listarEletronicos(){
		return new LinkedList<EletronicosModel>(eletronicos.values());
	}
	
	public EletronicosModel buscar(long id) {
		return eletronicos.get(id);
		}
}
