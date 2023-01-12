import javax.swing.*;
import java.awt.*;
import java.awt.event.*;
import java.sql.SQLException;

public class Test extends JFrame implements ActionListener{
	JButton button,button1;
	JLabel image,image1;
	JPanel panel,panel1;
	public Test() {
		// JLabel label=new JLabel("a;ldfkjad;flkjadf;lkj");
		// label.setBounds(0,0,1000,700);
		// label.setForeground(Color.decode("#e87020"));
		// // Color mycolor=Color.FromArgb(100);
		// // label.setBackground(Color.blue);
		// // label.setOpaque(true);
		// label.setFont(new Font("Raleway", Font.BOLD, 40));

		// add(label);

		// JPanel panel=new JPanel();
		// panel.setBounds(0,0,1000,700);
		// JSlider b=new JSlider(0,100,100);
		// panel.setOpacity(b.getValue()*0.01f);
		// add(panel);

		// getContentPane().setBackground(Color.BLACK);
		setLayout(null);
		ImageIcon i1 = new ImageIcon(ClassLoader.getSystemResource("img/adminLogin.png"));
		Image i2 = i1.getImage().getScaledInstance(983, 660, Image.SCALE_DEFAULT);
		ImageIcon i3 = new ImageIcon(i2);
		image = new JLabel(i3);
		image.setBounds(0, 0, 983, 660);
		panel=new JPanel();
		panel.add(image);
		panel.setBounds(0,0,983,660);
		panel.setBackground(Color.black);

		ImageIcon i11 = new ImageIcon(ClassLoader.getSystemResource("img/adminLogin.png"));
		Image i22 = i11.getImage().getScaledInstance(983, 660, Image.SCALE_DEFAULT);
		ImageIcon i33 = new ImageIcon(i22);
		image1 = new JLabel(i3);
		image1.setBounds(0, 0, 983, 660);
		panel1=new JPanel();
		panel1.add(image1);
		panel1.setBounds(0,0,983,660);
		panel1.setBackground(Color.black);
		

		button=new JButton();
		button.setBounds(100,100,100,100);
		button.addActionListener(this);
		add(button);

		button1=new JButton();
		button1.setBounds(100,100,100,100);
		button1.addActionListener(this);
		add(button1);

		setLocation(180, 20);
		setSize(1000, 700);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setVisible(true);
	}

	public static void main(String[] args) {
		// new Test();
		// Conn c=new Conn();
		// try {
		// c.s.executeUpdate("call fore();");
		// } catch (SQLException e) {
		// // TODO Auto-generated catch block
		// e.printStackTrace();
		// }
		// new Test();
		String train_no="100";
		String query3="""
                            delimiter $$
                            create trigger cost
                            before INSERT 
                            on """+
                            "`"+train_no+"`"+"""
                            for each row 
                                BEGIN"""+
"                                    IF (select count(*) from `"+train_no+"`)=0 THEN"+"""
                                        set new.cost=0;
                                    ELSE 
                                        BEGIN
                                            declare id_val int default 0;
                                            SELECT LAST_INSERT_ID() into id_val;
                                            set new.cost = id_val*10;
                                        END;
                                    END IF;
                                END;
                            $$
                            delimiter ;
                                    """;
									System.out.println(query3);
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		if(e.getSource()==button){
			add(panel);
			repaint();
			revalidate();
			// pack();
		}
	}
}