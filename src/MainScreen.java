import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class MainScreen {

	private JFrame frame;
	private JPanel botoes;
	private JMenu menu;
	private JMenuBar barraMenu;
	private JMenuItem testeRelatorio, sobre;
	
	private String strSobre = "Protótipo para manipulação de base de dados\n\n"
			+ "Feito por:\nAlef Segura\nGustavo Moura\nThaís Lima\nYago Pessoa\n\n"
			+ "Disciplina Base de Dados, 2017-2 - Prof. Robson";
	

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
		frame.setBounds(100, 100, 600, 800);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		
		barraMenu = new JMenuBar();
		menu = new JMenu("Opções");
		testeRelatorio = new JMenuItem("Gerar relatório");
		testeRelatorio.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				// implementar a consulta na base de dados
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

		FlowLayout botoesLayout = new FlowLayout();
		botoes = new JPanel();
		botoes.setLayout(botoesLayout);
		frame.add(botoes);
		
		JButton btnCadastrar = new JButton("Cadastrar");
		botoes.add(btnCadastrar);	
		JButton btnAlterar = new JButton("Alterar");
		botoes.add(btnAlterar);
		JButton btnExcluir = new JButton("Excluir");
		botoes.add(btnExcluir);
		
		// TABELA TESTE
		String [] colunas = {"Nome", "Telefone", "Email"};
		Object [][] dados = {
				{"Maria da Silva", "11 1111-1111", "maria@gmail.com"},
				{"José Luiz", "22 2222-2222", "jose@gmail.com"},
				{"Yago Pessoa", "33 3333-3333", "yago@gmail.com"},
				{"Maria da Silva", "11 1111-1111", "maria@gmail.com"},
				{"José Luiz", "22 2222-2222", "jose@gmail.com"},
				{"Yago Pessoa", "33 3333-3333", "yago@gmail.com"},
				{"Maria da Silva", "11 1111-1111", "maria@gmail.com"},
				{"José Luiz", "22 2222-2222", "jose@gmail.com"},
				{"Yago Pessoa", "33 3333-3333", "yago@gmail.com"}
		};
		
		JTable tabela = new JTable(dados, colunas);
		JScrollPane barraRolagem = new JScrollPane(tabela);
		frame.add(barraRolagem);
		
		frame.pack();
		frame.setLocationRelativeTo(null);
	}

}
