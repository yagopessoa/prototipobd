
public class Filme {

	private int codigo;
	private String titulo;
	private String sinopse;
	private int faixaEtaria;	// 1..18 anos
	private int duracao;	// 1..* minutos
	private int ano;
	private String idioma;	// original/dublado
	private String legenda;	// pt/spn/ing/nenhuma
	/*	thumb?	*/
	
	public Filme(int codigo, String titulo, String sinopse, int faixaEtaria, 
			int duracao, int ano, String idioma, String legenda) {
		this.codigo = codigo;
		this.titulo = titulo;
		this.sinopse = sinopse;
		this.faixaEtaria = faixaEtaria;
		this.duracao = duracao;
		this.ano = ano;
		this.idioma = idioma;
		this.legenda = legenda;
	}

	public int getCodigo() {
		return codigo;
	}
	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public int getFaixaEtaria() {
		return faixaEtaria;
	}
	public void setFaixaEtaria(int faixaEtaria) {
		this.faixaEtaria = faixaEtaria;
	}
	public String getSinopse() {
		return sinopse;
	}
	public void setSinopse(String sinopse) {
		this.sinopse = sinopse;
	}
	public int getDuracao() {
		return duracao;
	}
	public void setDuracao(int duracao) {
		this.duracao = duracao;
	}
	public int getAno() {
		return ano;
	}
	public void setAno(int ano) {
		this.ano = ano;
	}
	public String getIdioma() {
		return idioma;
	}
	public void setIdioma(String idioma) {
		this.idioma = idioma;
	}
	public String getLegenda() {
		return legenda;
	}
	public void setLegenda(String legenda) {
		this.legenda = legenda;
	}
	
	
}
