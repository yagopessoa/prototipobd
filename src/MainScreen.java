import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

import com.sun.corba.se.pept.encoding.InputObject;
import com.sun.corba.se.pept.encoding.OutputObject;
import com.sun.corba.se.pept.protocol.MessageMediator;
import com.sun.corba.se.pept.transport.Acceptor;
import com.sun.corba.se.pept.transport.Connection;
import com.sun.corba.se.pept.transport.ConnectionCache;
import com.sun.corba.se.pept.transport.ContactInfo;
import com.sun.corba.se.pept.transport.EventHandler;

public class MainScreen {

	private JFrame frame;
	private JPanel botoes;
	private JPanel filtros;
	private JButton btnCadastrar;
	private JButton btnExcluir;
	private JButton btnAlterar;
	private JButton btnFiltrar;
	private JButton btnLimparFiltro;
	private JMenu menu;
	private JMenuBar barraMenu;
	private JMenuItem testeRelatorio, sobre;
	
	private String strSobre = "Prot�tipo para manipula��o de base de dados\n\n"
			+ "Feito por:\nAlef Segura\nGustavo Moura\nTha�s Lima\nYago Pessoa\n\n"
			+ "Disciplina Base de Dados, 2017-2 - Prof. Robson";

	private String strLabel = "Gerenciamento de acessos de Usu�rios a Dispositivos";
			//+ "da base de dados de Streaming de Video\n";
	
	
	// TESTE LISTA JBOX
	String [] listaDispositivos = {"TV Samsumg", "Tablet", "PC-Sala"};
	String [] listaUsuarios = {"Maria Joana", "Jose da Silva", "Paulo C�sar"};
	

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					MainScreen window = new MainScreen();
					window.frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the application.
	 */
	public MainScreen() {
		initialize();
	}

	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize() {
		frame = new JFrame("Streaming de Video");
		frame.setBounds(100, 100, 600, 600);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setResizable(false);
		
		barraMenu = new JMenuBar();
		menu = new JMenu("Op��es");
		testeRelatorio = new JMenuItem("Gerar relat�rio");
		testeRelatorio.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				IntegrateSQL sqlIntegration = new IntegrateSQL();
				Connection con = new Connection();
				sqlIntegration.viewTable(con, "name"); //colocar nome aqui
			
			}
		});
		sobre = new JMenuItem("Sobre");
		sobre.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				JOptionPane.showMessageDialog(null, strSobre);
			}
		});
		menu.add(testeRelatorio);
		menu.add(sobre);
		barraMenu.add(menu);
		frame.setJMenuBar(barraMenu);
		
		BoxLayout mainLayout = new BoxLayout(frame.getContentPane(), BoxLayout.Y_AXIS);
		frame.setLayout(mainLayout);
		
		JPanel titulo = new JPanel();
		FlowLayout tituloLay = new FlowLayout();
		titulo.setLayout(tituloLay);
		JLabel label = new JLabel(strLabel, SwingConstants.CENTER);
		label.setFont(new Font("Arial", 1,20));
		titulo.add(label);
		frame.add(titulo);
		
		FlowLayout botoesLayout = new FlowLayout();
		botoes = new JPanel();
		botoes.setLayout(botoesLayout);
		frame.add(botoes);
		
		filtros = new JPanel();
		//filtros.setLayout(botoesLayout);
		//frame.add(filtros);
		
		JPanel botoesFiltros = new JPanel();
		//botoesFiltros.setLayout(botoesLayout);
		//frame.add(botoesFiltros);
		
		btnCadastrar = new JButton("Cadastrar");
		btnCadastrar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				btnCadastrar.setEnabled(false);
				insereTupla();
			}
		});
		botoes.add(btnCadastrar);	
		
		btnAlterar = new JButton("Alterar");
		btnAlterar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				// implementar update de tupla aqui
			}
		});
		botoes.add(btnAlterar);
		
		btnExcluir = new JButton("Excluir");
		btnExcluir.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				// implementar delecao de tupla aqui
			}
		});
		botoes.add(btnExcluir);
		
		JLabel filtroLabel = new JLabel("Filtrar por nome:");
		filtroLabel.setFont(new Font("Arial", 1, 14));
		filtros.add(filtroLabel);
		
		JTextField txtFiltro = new JTextField(8);
		txtFiltro.setFont(new Font("Arial", 1, 14));
		filtros.add(txtFiltro);
		
		btnFiltrar = new JButton("Filtrar");
		btnExcluir.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				// filtar pelo palavra-chave do txtFiltro
			}
		});
		botoesFiltros.add(btnFiltrar);
		
		btnLimparFiltro = new JButton("Limpar filtro");
		btnExcluir.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				// atualizar a tabela completa
			}
		});
		botoesFiltros.add(btnLimparFiltro);
		
		// TABELA TESTE
		String [] colunas = {"Dispositivo", "Usu�rio", "Hor�rio", "Endere�o IP"};
		Object [][] dados = {
				{"", "", "", ""}
		};
		
		JTable tabela = new JTable(dados, colunas);
		JScrollPane barraRolagem = new JScrollPane(tabela);
		frame.add(barraRolagem);
		
		//frame.pack();
		frame.setLocationRelativeTo(null);
	}
	
	public void insereTupla() {

		JFrame cadastro = new JFrame("Novo cadastro");
		cadastro.setBounds(100, 100, 700, 250);
		cadastro.setAlwaysOnTop(true);
		cadastro.setDefaultCloseOperation(JFrame.DO_NOTHING_ON_CLOSE);
		cadastro.setResizable(false);
		
		BoxLayout cadastroLay = new BoxLayout(cadastro.getContentPane(), BoxLayout.Y_AXIS);
		cadastro.getContentPane().setLayout(cadastroLay);
		
		JPanel campos = new JPanel();
		GridLayout camposLay = new GridLayout(4, 2);
		//FlowLayout camposLay = new FlowLayout();
		campos.setLayout(camposLay);
		
		JLabel dispositivoLabel = new JLabel("Dispositivo:");
		dispositivoLabel.setFont(new Font("Arial", 1, 14));
		campos.add(dispositivoLabel);
		
		final JComboBox<String> dispositivosJB = new JComboBox<>(listaDispositivos);
		campos.add(dispositivosJB);
		
		JLabel usuarioLabel = new JLabel("Usuario:");
		usuarioLabel.setFont(new Font("Arial", 1, 14));
		campos.add(usuarioLabel);
		
		final JComboBox<String> usuariosJB = new JComboBox<>(listaUsuarios);
		campos.add(usuariosJB);
		
		JLabel horarioLabel = new JLabel("Hor�rio do acesso:");
		horarioLabel.setFont(new Font("Arial", 1, 14));
		campos.add(horarioLabel);
		
		JTextField txtHorario = new JTextField(16);
		txtHorario.setFont(new Font("Arial", 1, 14));
		campos.add(txtHorario);
		
		JLabel ipLabel = new JLabel("Endere�o de IP:");
		ipLabel.setFont(new Font("Arial", 1, 14));
		campos.add(ipLabel);
		
		JTextField txtIP = new JTextField(16);
		txtIP.setFont(new Font("Arial", 1, 14));
		campos.add(txtIP);
		
		
		JPanel botoes = new JPanel();
		FlowLayout botoesLay = new FlowLayout();
		botoes.setLayout(botoesLay);
		
		JButton confirma = new JButton("Confirmar");
		confirma.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				// implementar insercao da tupla no bd aqui
				
				cadastro.dispose();
				btnCadastrar.setEnabled(true);
				frame.setVisible(true);
			}
		});
		botoes.add(confirma);
		
		JButton cancela = new JButton("Cancelar");
		cancela.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				cadastro.dispose();
				btnCadastrar.setEnabled(true);
				frame.setVisible(true);
			}
		});
		botoes.add(cancela);

		cadastro.add(campos);
		cadastro.add(botoes);
		cadastro.pack();
		cadastro.setLocationRelativeTo(null);
		cadastro.setVisible(true);

	}

}
