import java.sql.Date;

public class App {

    public static void main(String[] args) {

        // Crear estudiante
        Estudiante estudiante = new Estudiante(3, "Carlos López", "carlos.lopez@mail.com", new Date(System.currentTimeMillis()));
        Estudiante.insertarEstudiante(estudiante);

        // Obtener estudiante
        Estudiante estudianteRecuperado = Estudiante.getEstudianteById(3);
        System.out.println("Estudiante: " + estudianteRecuperado.getNombre());

        // Crear examen
        Examen examen = new Examen(1, 3, 1, new Date(System.currentTimeMillis()));
        // Aquí puedes agregar el código para insertar el examen en la base de datos si lo deseas

        // Crear resultado de examen
        ResultadoExamen resultado = new ResultadoExamen(1, 3, 1, 90, "Buen trabajo.");
        ResultadoExamen.insertarResultado(resultado);

        System.out.println("Resultado del examen registrado.");
    }
}
//