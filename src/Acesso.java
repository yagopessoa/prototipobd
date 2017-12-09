import java.sql.Time;

public class Acesso {

	private String codigo;
	private String usuario;
	private Time horario;
	private String endIP;
	
	public Acesso(String codigo, String usuario, Time horario, String endIP) {
		this.setCodigo(codigo);
		this.setUsuario(usuario);
		this.setHorario(horario);
		this.setEndIP(endIP);
	}

	public String getCodigo() {
		return codigo;
	}

	public void setCodigo(String codigo) {
		this.codigo = codigo;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public Time getHorario() {
		return horario;
	}

	public void setHorario(Time horario) {
		this.horario = horario;
	}

	public String getEndIP() {
		return endIP;
	}

	public void setEndIP(String endIP) {
		this.endIP = endIP;
	}
	
}
