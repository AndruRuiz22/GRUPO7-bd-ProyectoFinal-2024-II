import java.sql.*;

public class Examen {

    private final int examenID;
    private final int estudianteID;
    private final int plantillaID;
    private final Date fechaExamen;

    public Examen(int examenID, int estudianteID, int plantillaID, Date fechaExamen) {
        this.examenID = examenID;
        this.estudianteID = estudianteID;
        this.plantillaID = plantillaID;
        this.fechaExamen = fechaExamen;
    }

    // Método para obtener exámenes de un estudiante
    public static Examen getExamenById(int examenID) {
        Examen examen = null;
        try (Connection conn = DBConnection.getConnection()) {
            String sql = "SELECT * FROM EXAMEN WHERE EXAMEN_ID = ?";
            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                stmt.setInt(1, examenID);
                ResultSet rs = stmt.executeQuery();
                if (rs.next()) {
                    examen = new Examen(
                            rs.getInt("EXAMEN_ID"),
                            rs.getInt("ESTUDIANTE_ID"),
                            rs.getInt("PLANTILLA_ID"),
                            rs.getDate("FECHA_EXAMEN")
                    );
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return examen;
    }
}
