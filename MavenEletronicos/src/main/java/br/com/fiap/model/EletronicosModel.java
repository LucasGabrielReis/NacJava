package br.com.fiap.model;

public class EletronicosModel {
	private Long id;
	private String tipo;
	private String nome;
	private String descricao;
	private double preco;
	
	public EletronicosModel() {
		
	}
	
	public EletronicosModel(long id, String tipo, String nome, String descricao, double preco) {
		this.id = id;
		this.tipo = tipo;
		this.nome = nome;
		this.descricao = descricao;
		this.preco = preco;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public double getPreco() {
		return preco;
	}

	public void setPreco(Long preco) {
		this.preco = preco;
	}
	
	
}