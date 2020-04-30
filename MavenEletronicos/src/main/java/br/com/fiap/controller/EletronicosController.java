package br.com.fiap.controller;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import br.com.fiap.model.EletronicosModel;
import br.com.fiap.repository.EletronicosRepository;


@Controller
public class EletronicosController {
	
	@RequestMapping (value= {"/eletronicos", "/"}, method = RequestMethod.GET)
	public String getEletronicos(Model model) {
		List<EletronicosModel> listaEletronicos = new EletronicosRepository().listarEletronicos();
		model.addAttribute("lista", listaEletronicos);
		return "eletronicos";
	}
	
	@RequestMapping (value = "/eletronicos/{id}", method = RequestMethod.GET)
	public String buscarProduto(@PathVariable("id") long id, Model model) {
		EletronicosModel produtoEncontrado = new EletronicosRepository().buscar(id);	
		model.addAttribute("eletronico", produtoEncontrado);
		return "eletronicos-detalhe";
	}
}
