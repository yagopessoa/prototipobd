import java.awt.*;
import java.awt.event.*;
import javax.swing.*;
import java.sql.*;

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
	
	private String strSobre = "Prototipo para manipulacao de base de dados\n\n"
			+ "Feito por:\nAlef Segura\nGustavo Moura\nThais Lima\nYago Pessoa\n\n"
			+ "Disciplina Base de Dados, 2017-2 - Prof. Robson";

	private String strLabel = "Gerenciamento de Filmes"
			+ " para Streaming de Video\n";
	
	String [] listaFaixaEt = {"Livre", "10+", "12+", "14+", "16+", "18+"};
	String [] listaIdioma = {"English-USA", "Português-Brasil", "Español", "Deutsch", "Français"};
	String [] listaLegenda = {"Português-Brasil", "Português-Portugal", "Español", "Français", "Deutsch", "English-USA", "English-UK"};
	
	// CREDENCIAS BD
	private String usuario ="9896218";
	private String senha ="a";
	
	// TABELA TESTE
	String [] colunas = {"Titulo", "Sinopse", "Classificacao Etaria", "Duracao (min)", "Ano", "Idioma", "Legenda"};
	Object [][] dados = {
			{"", "", "", "", "", "", "", ""}
	};	
	JTable tabela;
	JScrollPane barraRolagem;
	
	
	// VARIAVEIS DE CONEXAO
	private Statement stmt;
	private ResultSet rs;
	private Connection connection;
	private PreparedStatement pstmt;
	

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
		/*CONEXAO*/
		try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            connection = DriverManager.getConnection(
                    "jdbc:oracle:thin:@grad.icmc.usp.br:15215:orcl",	
                    usuario,
                    senha);
		} catch (Exception ex) {
			JOptionPane.showMessageDialog(null, "Erro na conexao: "+ex.getMessage());
		}
		/*CONEXAO*/
		
		frame = new JFrame("Streaming de Video");
		frame.setBounds(100, 100, 860, 480);
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		//frame.setResizable(false);
		
		barraMenu = new JMenuBar();
		menu = new JMenu("Opcoes");
		testeRelatorio = new JMenuItem("Gerar relatorio");
		testeRelatorio.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				/*
				Fazer a consulta solicitada e oferecer opcao de gerar PDF
 				*/
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
				try {
					String codigo = tabela.getValueAt(tabela.getSelectedRow(), 0).toString();
					btnAlterar.setEnabled(false);
					atualizaTupla(codigo);
				} catch (Exception ex) { /* fazer mensasgem de "selecione uma linha da tabela" */ }
			}
		});
		botoes.add(btnAlterar);
		
		btnExcluir = new JButton("Excluir");
		btnExcluir.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try {
					String codigo = tabela.getValueAt(tabela.getSelectedRow(), 0).toString();
					
					try {
						String select = "SELECT titulo FROM video WHERE (codigo = '" + codigo + "')";
	                    System.out.println(select);
	                    
	                    stmt = connection.createStatement();
	                    rs = stmt.executeQuery(select);
	                    rs.next();
	                    String titulo = rs.getString(1);
	                    
						String mensagem = "Deseja realmente excluir o video '"+titulo+"' do registro de filmes?";
						int result = JOptionPane.showConfirmDialog((Component) null, mensagem,
								"Excluir registro", JOptionPane.OK_CANCEL_OPTION);	/* OK=0, CANCEL=2 */
						
						if(result == 0) {
							String sql = "DELETE FROM filme WHERE (video='"+codigo+"')";
		                    System.out.println(sql);
							pstmt = connection.prepareStatement(sql);							
			                try{
			                    pstmt.executeUpdate();
								JOptionPane.showMessageDialog(frame, "Registro removido com sucesso!");
			                    pstmt.close();
								updateTable();
			                } catch (SQLException ex) {
								JOptionPane.showMessageDialog(frame, "Registro NAO foi removido! Erro: "+ex.getMessage());
			                }
						}
					} catch (Exception exc) {
						JOptionPane.showMessageDialog(frame, "Erro: "+exc.getMessage());
					}
				} catch (Exception ex) { /* fazer mensasgem de "selecione uma linha da tabela" */ }
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
		
		tabela = new JTable(dados, colunas);
		barraRolagem = new JScrollPane(tabela);
		frame.add(barraRolagem);

		updateTable();
		
		//frame.pack();
		frame.setLocationRelativeTo(null);
	}
	
	public void insereTupla() {

		JFrame cadastro = new JFrame("Novo cadastro");
		cadastro.setBounds(100, 100, 700, 250);
		//cadastro.setAlwaysOnTop(true);
		cadastro.setDefaultCloseOperation(JFrame.DO_NOTHING_ON_CLOSE);
		cadastro.setResizable(false);
		
		BoxLayout cadastroLay = new BoxLayout(cadastro.getContentPane(), BoxLayout.Y_AXIS);
		cadastro.getContentPane().setLayout(cadastroLay);
		
		JPanel campos = new JPanel();
		GridLayout camposLay = new GridLayout(7, 2);
		campos.setLayout(camposLay);
		
		JLabel videosLabel = new JLabel("Videos sem cadastro:");
		videosLabel.setFont(new Font("Arial", 1, 14));
		campos.add(videosLabel);
		
		// exibir codigo(PENDENTE) + nome do video(OK)
		// trazer videos do tipo "filme"(OK) e que nao tenha cadastro na tabela filmes(PENDENTE)
		JComboBox<String> videosJB = new JComboBox<String>();
		try {
			String select = "SELECT titulo FROM video WHERE (tipoVideo = 'Filme' AND codigo NOT IN (SELECT video FROM filme))";
            stmt = connection.createStatement();
            rs = stmt.executeQuery(select);
            while(rs.next()) {
        		videosJB.addItem(rs.getString(1));
            }
    		campos.add(videosJB);
		} catch (Exception ex) {
			JOptionPane.showMessageDialog(frame, "Erro: "+ex.getMessage());
		}	
		
		JLabel sinopseLabel = new JLabel("Sinopse:");
		sinopseLabel.setFont(new Font("Arial", 1, 14));
		campos.add(sinopseLabel);
		
		JTextField txtSinopse = new JTextField(14);
		txtSinopse.setFont(new Font("Arial", 1, 14));
		campos.add(txtSinopse);
		
		JLabel faixaEtLabel = new JLabel("Classificação Etaria:");
		faixaEtLabel.setFont(new Font("Arial", 1, 14));
		campos.add(faixaEtLabel);
		
		final JComboBox<String> faixaEtJB = new JComboBox<>(listaFaixaEt);
		campos.add(faixaEtJB);
		
		JLabel duracaoLabel = new JLabel("Duracao (min):");
		duracaoLabel.setFont(new Font("Arial", 1, 14));
		campos.add(duracaoLabel);
		
		JTextField txtDuracao = new JTextField(14);
		txtDuracao.setFont(new Font("Arial", 1, 14));
		campos.add(txtDuracao);
		
		JLabel anoLabel = new JLabel("Ano:");
		anoLabel.setFont(new Font("Arial", 1, 14));
		campos.add(anoLabel);
		
		JTextField txtAno = new JTextField(14);
		txtAno.setFont(new Font("Arial", 1, 14));
		campos.add(txtAno);
		
		JLabel idiomaLabel = new JLabel("Idioma:");
		idiomaLabel.setFont(new Font("Arial", 1, 14));
		campos.add(idiomaLabel);
		
		final JComboBox<String> idiomaJB = new JComboBox<>(listaIdioma);
		campos.add(idiomaJB);
		
		JLabel legendaLabel = new JLabel("Legenda:");
		legendaLabel.setFont(new Font("Arial", 1, 14));
		campos.add(legendaLabel);
		
		final JComboBox<String> legendaJB = new JComboBox<>(listaLegenda);
		campos.add(legendaJB);
		
		
		JPanel botoes = new JPanel();
		FlowLayout botoesLay = new FlowLayout();
		botoes.setLayout(botoesLay);
		
		JButton confirma = new JButton("Confirmar");
		confirma.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try {
					String select = "SELECT codigo FROM video WHERE (titulo = '" + videosJB.getSelectedItem().toString() + "')";
                    System.out.println(select);
                    
                    stmt = connection.createStatement();
                    rs = stmt.executeQuery(select);
                    rs.next();
					String cod_filme = rs.getString(1);
                    System.out.println(cod_filme);
					
					String sql = "INSERT INTO filme (video, sinopse, faixa_etaria, duracao, ano, idioma, legenda)"
							+ " VALUES ("+cod_filme+", '"+txtSinopse.getText()+"', '"+faixaEtJB.getSelectedItem().toString()+"', '"+txtDuracao.getText()
							+"min', "+txtAno.getText()+", '"+idiomaJB.getSelectedItem().toString()+"', '"+legendaJB.getSelectedItem().toString()+"')";
                    System.out.println(sql);
					
					pstmt = connection.prepareStatement(sql);
	                try{
	                    pstmt.executeUpdate();
	    				cadastro.dispose();
						JOptionPane.showMessageDialog(frame, "Dados inseridos!");
	                    pstmt.close();
						updateTable();
	                } catch (SQLException ex) {
	    				cadastro.dispose();
						JOptionPane.showMessageDialog(frame, "Dados NAO inseridos! Erro: "+ex.getMessage());
	                }
				} catch (Exception ex) {
					JOptionPane.showMessageDialog(frame, "Erro: "+ex.getMessage());
				}
				
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
		cadastro.setLocationRelativeTo(frame);
		cadastro.setVisible(true);
	}
	
	public void atualizaTupla(String codigo) {

		JFrame cadastro = new JFrame("Atualizar cadastro");
		cadastro.setBounds(100, 100, 700, 250);
		//cadastro.setAlwaysOnTop(true);
		cadastro.setDefaultCloseOperation(JFrame.DO_NOTHING_ON_CLOSE);
		cadastro.setResizable(false);
		
		BoxLayout cadastroLay = new BoxLayout(cadastro.getContentPane(), BoxLayout.Y_AXIS);
		cadastro.getContentPane().setLayout(cadastroLay);
		
		JPanel campos = new JPanel();
		GridLayout camposLay = new GridLayout(7, 2);
		campos.setLayout(camposLay);
		
		JLabel videosLabel = new JLabel("Videos sem cadastro:");
		videosLabel.setFont(new Font("Arial", 1, 14));
		campos.add(videosLabel);
		
		boolean erro = false;
		try {
			String select = "SELECT titulo FROM video WHERE (codigo = '" + codigo + "')";
            stmt = connection.createStatement();
            rs = stmt.executeQuery(select);
            String titulo;
            rs.next();
       		titulo = rs.getString("titulo");
       		
    		JLabel tituloLabel = new JLabel(titulo);
    		videosLabel.setFont(new Font("Arial", 1, 14));
    		campos.add(tituloLabel);
		} catch (Exception ex) {
			erro = true;
			cadastro.dispose();
			JOptionPane.showMessageDialog(frame, "Erro: "+ex.getMessage());
		}	
		
		JLabel sinopseLabel = new JLabel("Sinopse:");
		sinopseLabel.setFont(new Font("Arial", 1, 14));
		campos.add(sinopseLabel);
		
		JTextField txtSinopse = new JTextField(14);
		txtSinopse.setFont(new Font("Arial", 1, 14));
		campos.add(txtSinopse);
		
		JLabel faixaEtLabel = new JLabel("Classificação Etaria:");
		faixaEtLabel.setFont(new Font("Arial", 1, 14));
		campos.add(faixaEtLabel);
		
		final JComboBox<String> faixaEtJB = new JComboBox<>(listaFaixaEt);
		campos.add(faixaEtJB);
		
		JLabel duracaoLabel = new JLabel("Duracao (min):");
		duracaoLabel.setFont(new Font("Arial", 1, 14));
		campos.add(duracaoLabel);
		
		JTextField txtDuracao = new JTextField(14);
		txtDuracao.setFont(new Font("Arial", 1, 14));
		campos.add(txtDuracao);
		
		JLabel anoLabel = new JLabel("Ano:");
		anoLabel.setFont(new Font("Arial", 1, 14));
		campos.add(anoLabel);
		
		JTextField txtAno = new JTextField(14);
		txtAno.setFont(new Font("Arial", 1, 14));
		campos.add(txtAno);
		
		JLabel idiomaLabel = new JLabel("Idioma:");
		idiomaLabel.setFont(new Font("Arial", 1, 14));
		campos.add(idiomaLabel);
		
		final JComboBox<String> idiomaJB = new JComboBox<>(listaIdioma);
		campos.add(idiomaJB);
		
		JLabel legendaLabel = new JLabel("Legenda:");
		legendaLabel.setFont(new Font("Arial", 1, 14));
		campos.add(legendaLabel);
		
		final JComboBox<String> legendaJB = new JComboBox<>(listaLegenda);
		campos.add(legendaJB);
		
		try {
			String select = "SELECT * FROM filme WHERE (video = '" + codigo + "')";
            stmt = connection.createStatement();
            rs = stmt.executeQuery(select);
            rs.next();
       		txtSinopse.setText(rs.getString("sinopse"));
       		faixaEtJB.setSelectedItem(rs.getString("faixa_etaria"));
       		String duracao = rs.getString("duracao");
       		txtDuracao.setText(duracao.substring(0, duracao.length()-3));
       		txtAno.setText(rs.getString("ano"));
       		idiomaJB.setSelectedItem(rs.getString("idioma"));
       		legendaJB.setSelectedItem(rs.getString("legenda"));
		} catch (Exception ex) {
			erro = true;
			cadastro.dispose();
			JOptionPane.showMessageDialog(frame, "Erro: "+ex.getMessage());
		}
		
		
		JPanel botoes = new JPanel();
		FlowLayout botoesLay = new FlowLayout();
		botoes.setLayout(botoesLay);
		
		JButton confirma = new JButton("Confirmar");
		confirma.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				try {
					String sql = "UPDATE filme SET sinopse='"+txtSinopse.getText()+"', faixa_etaria='"+faixaEtJB.getSelectedItem().toString()+"', "
							+ "duracao='"+txtDuracao.getText()+"min', ano='"+txtAno.getText()+"', idioma='"+idiomaJB.getSelectedItem().toString()+"', "
							+ "legenda='"+legendaJB.getSelectedItem().toString()+"' WHERE video='"+codigo+"'";
                    System.out.println(sql);

					pstmt = connection.prepareStatement(sql);
	                try{
	                    pstmt.executeUpdate();
	    				cadastro.dispose();
						JOptionPane.showMessageDialog(frame, "Dados atualizados!");
	                    pstmt.close();
						updateTable();
	                } catch (SQLException ex) {
	    				cadastro.dispose();
						JOptionPane.showMessageDialog(frame, "Dados NAO foram atualizados! Erro: "+ex.getMessage());
	                }
				} catch (Exception ex) {
					JOptionPane.showMessageDialog(frame, "Erro: "+ex.getMessage());
				}
				
				btnAlterar.setEnabled(true);
				frame.setVisible(true);
			}
		});
		botoes.add(confirma);
		
		JButton cancela = new JButton("Cancelar");
		cancela.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				cadastro.dispose();
				btnAlterar.setEnabled(true);
				frame.setVisible(true);
			}
		});
		botoes.add(cancela);

		cadastro.add(campos);
		cadastro.add(botoes);
		cadastro.pack();
		cadastro.setLocationRelativeTo(frame);
		if(!erro) cadastro.setVisible(true);
	}
	
	public void updateTable() {
		try {
            String sql = "SELECT * FROM filme";
            stmt = connection.createStatement();
            rs = stmt.executeQuery(sql);
		    tabela.setModel(DbUtils.resultSetToTableModel(rs));
		    barraRolagem.repaint();
		    frame.repaint();
		} catch (Exception ex) {
			JOptionPane.showMessageDialog(frame, "Erro: "+ex.getMessage());
		}
	}

}
