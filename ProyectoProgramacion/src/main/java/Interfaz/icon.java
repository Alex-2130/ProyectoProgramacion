/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Interfaz;

import java.awt.Graphics;
import javax.swing.ImageIcon;
import javax.swing.JLabel;
import javax.swing.JPanel;

/**
 *
 * @author Alex
 */
public class icon extends JLabel{
    int x, y;
    
    public icon(JPanel panel) {
        this.x = panel.getWidth();
        this.y = panel.getHeight();
        this.setSize(panel.getWidth(), panel.getHeight());
    }
    
    public void paint(Graphics g){
        ImageIcon img = new ImageIcon(getClass().getResource("/fotos/alhambra.png"));
        g.drawImage(img.getImage(), 0, 0, x, y, null);
    }    
}
