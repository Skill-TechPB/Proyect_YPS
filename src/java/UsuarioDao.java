import java.util.*;
import java.sql.*;
public class UsuarioDao {
    
    public static Connection getConnection(){
        String url, username, password;
        url="jdbc:mysql://localhost:3306/yps2";
        username="root";
        password="destiny1154235";
        
        /*Para realizar la conexion*/
        Connection con = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection(url, username, password);
            System.out.println("Si se conecto a BD");
        }catch(Exception e){
            System.out.println("Solo juego contigo again");
            System.out.println(e.getMessage());
            System.out.println(e.getStackTrace());
        }
          return con;
    }
    
    public static int Guardar(Usuario e){
        int estatus=0;
        
        try{
            Connection con = UsuarioDao.getConnection();
            String q, i, nom;
            q="insert into usuario(Nombre, Apellido, Correo, Contrasenia) "
                    + "values(?,?,?,?)";
            PreparedStatement ps=con.prepareStatement(q);
            nom=e.getNombre();
            ps.setString(1, e.getNombre());
            ps.setString(2, e.getApellido());
            ps.setString(3, e.getCorreo());
            ps.setString(4, e.getContrasenia());
           
            estatus=ps.executeUpdate();
            con.close();
            
        }catch(Exception d){
            System.out.println("Solo juego contigo again");
            System.out.println(d.getMessage());
            System.out.println(d.getStackTrace());
        }
        return estatus;
    }
    
    public static int Carrito(Usuario e){
        int estatus=0;
        
        try{
            Connection con = UsuarioDao.getConnection();
            String q, i, nom;
            q="insert into compra(id_producto, id_carrito, id_color, Cantidad) "
                    + "values(?,?,?,?)";
            PreparedStatement ps=con.prepareStatement(q);
            ps.setString(1, e.getId());
            ps.setString(2, e.getUsuario());
            ps.setString(3, e.getColor());
            ps.setString(4, e.getCantidad());
           
            estatus=ps.executeUpdate();
            con.close();
            
        }catch(Exception d){
            System.out.println("Solo juego contigo again");
            System.out.println(d.getMessage());
            System.out.println(d.getStackTrace());
        }
        return estatus;
    }
    
    public static int GuardarP(Usuario e){
        int estatus=0;
        
        try{
            Connection con = UsuarioDao.getConnection();
            String q, i, nom;
            q="insert into papeleria(NomPap, Ubicacion, CorrPap, Contrasenia) "
                    + "values(?,?,?,?)";
            PreparedStatement ps=con.prepareStatement(q);
            nom=e.getNombre();
            ps.setString(1, e.getNombre());
            ps.setString(2, e.getUbicacion());
            ps.setString(3, e.getCorreo());
            ps.setString(4, e.getContrasenia());
           
            estatus=ps.executeUpdate();
            con.close();
            
        }catch(Exception d){
            System.out.println("Solo juego contigo again");
            System.out.println(d.getMessage());
            System.out.println(d.getStackTrace());
        }
        return estatus;
    }

    static Usuario VerificarUsuario(String mail, String pass) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
}
