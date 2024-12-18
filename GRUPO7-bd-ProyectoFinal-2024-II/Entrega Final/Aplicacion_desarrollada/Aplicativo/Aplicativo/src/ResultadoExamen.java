import java.sql.*;

public class ResultadoExamen {

    private int resultadoID;
    private int estudianteID;
    private int examenID;
    private int puntuacion;
    private String retroalimentacion;

    public ResultadoExamen(int resultadoID, int estudianteID, int examenID, int puntuacion, String retroalimentacion) {
        this.resultadoID = resultadoID;
        this.estudianteID = estudianteID;
        this.examenID = examenID;
        this.puntuacion = puntuacion;
        this.retroalimentacion = retroalimentacion;
    }

    // Método para insertar resultado
    public static void insertarResultado(ResultadoExamen resultado) {
        try (Connection conn = DBConnection.getConnection()) {
            String sql = "INSERT INTO RESULTADO_EXAMEN (RESULTADO_ID, ESTUDIANTE_ID, EXAMEN_ID, PUNTUACION, RETROALIMENTACION) VALUES (?, ?, ?, ?, ?)";
            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                stmt.setInt(1, resultado.resultadoID);
                stmt.setInt(2, resultado.estudianteID);
                stmt.setInt(3, resultado.examenID);
                stmt.setInt(4, resultado.puntuacion);
                stmt.setString(5, resultado.retroalimentacion);
                stmt.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
