import java.sql.*;

public class Estudiante {

    private final int estudianteID;
    private final String nombre;
    private final String correo;
    private final Date fechaRegistro;

    public Estudiante(int estudianteID, String nombre, String correo, Date fechaRegistro) {
        this.estudianteID = estudianteID;
        this.nombre = nombre;
        this.correo = correo;
        this.fechaRegistro = fechaRegistro;
    }

    // Getter para 'nombre'
    public String getNombre() {
        return this.nombre;
    }

    // Getters y Setters adicionales

    // Método para obtener un estudiante por su ID
    public static Estudiante getEstudianteById(int estudianteID) {
        Estudiante estudiante = null;
        try (Connection conn = DBConnection.getConnection()) {
            String sql = "SELECT * FROM ESTUDIANTE WHERE ESTUDIANTE_ID = ?";
            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                stmt.setInt(1, estudianteID);
                ResultSet rs = stmt.executeQuery();
                if (rs.next()) {
                    estudiante = new Estudiante(
                            rs.getInt("ESTUDIANTE_ID"),
                            rs.getString("NOMBRE"),
                            rs.getString("CORREO"),
                            rs.getDate("FECHA_REGISTRO")
                    );
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return estudiante;
    }

    // Método para insertar estudiante
    public static void insertarEstudiante(Estudiante estudiante) {
        try (Connection conn = DBConnection.getConnection()) {
            String sql = "INSERT INTO ESTUDIANTE (ESTUDIANTE_ID, NOMBRE, CORREO, FECHA_REGISTRO) VALUES (?, ?, ?, ?)";
            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                stmt.setInt(1, estudiante.estudianteID);
                stmt.setString(2, estudiante.nombre);
                stmt.setString(3, estudiante.correo);
                stmt.setDate(4, estudiante.fechaRegistro);
                stmt.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

