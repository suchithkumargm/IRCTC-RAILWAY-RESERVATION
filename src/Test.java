import javax.swing.*;  
import java.awt.*;  
public class Test extends JFrame {  
  public Test() { 
    JLabel label=new JLabel("a;ldfkjad;flkjadf;lkj");
    label.setBounds(0,0,1000,700);
    label.setForeground(Color.decode("#e87020"));
    // Color mycolor=Color.FromArgb(100);
    // label.setBackground(Color.blue);
    // label.setOpaque(true);
    label.setFont(new Font("Raleway", Font.BOLD, 40));
    
    add(label);
   
    JPanel panel=new JPanel();
    panel.setBounds(0,0,1000,700);
    JSlider b=new JSlider(0,100,100);
    panel.setOpacity(b.getValue()*0.01f);
    add(panel);

    getContentPane().setBackground(Color.BLACK);
    setLocation(180, 20);
        setSize(1000, 700);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setVisible(true);
  }  
  public static void main(String[] args) {  
      new Test(); 
  }  
}  