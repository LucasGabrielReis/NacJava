package br.com.fiap.repository;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import br.com.fiap.model.EletronicosModel;

@Repository
public class EletronicosRepository {

	@Autowired
	private static Map<Long, EletronicosModel> eletronicos;

	public EletronicosRepository() {
	}

	public List<EletronicosModel> findAll() {
	}

	public EletronicosModel findById(long id) {
		return eletronicos.get(id);
	}

	public void save(EletronicosModel eletronicos) {
		Long newId = (long) (eletronicos.size() + 1);
		eletronicos.setId(newId);
		eletronicos.put(newId, eletronicos);

	}

	public void update(EletronicosModel eletronicos) {
		eletronicos.put(eletronicos.getId(), eletronicos);
	}

	public void deleteById(long id) {
		eletronicos.remove(id);
	}
}