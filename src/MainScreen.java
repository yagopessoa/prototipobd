import java.awt.EventQueue;
import java.awt.FlowLayout;
import java.awt.GridLayout;

import javax.swing.*;

public class MainScreen {

	private JFrame frame;
	private JPanel botoes;

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
		frame.setBounds(100, 100, 800, 300);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frame.setLocationRelativeTo(null);
		
		GridLayout mainLayout = new GridLayout(2, 1);
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
		
		// TESTE TABELA
		String [] colunas = {"Nome", "Telefone", "Email"};
		Object [][] dados = {
				{"Ana Monteiro", "48 9923-7898", "ana.monteiro@gmail.com"},
				{"João da Silva", "48 8890-3345", "joaosilva@hotmail.com"},
				{"Pedro Cascaes", "48 9870-5634", "pedrinho@gmail.com"}
		};
		
		JTable tabela = new JTable(dados, colunas);
		JScrollPane barraRolagem = new JScrollPane(tabela);
		frame.add(barraRolagem);
	}

}
