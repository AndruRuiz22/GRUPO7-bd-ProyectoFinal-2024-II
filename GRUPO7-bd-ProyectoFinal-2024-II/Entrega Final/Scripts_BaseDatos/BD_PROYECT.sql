--------------------------------------------------------
-- Archivo creado  - martes-diciembre-17-2024   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table DIFICULTAD
--------------------------------------------------------

  CREATE TABLE "GUILLERMO"."DIFICULTAD" 
   (	"DIFICULTAD_ID" NUMBER(*,0), 
	"NIVEL_DIFICULTAD" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table ESTUDIANTE
--------------------------------------------------------

  CREATE TABLE "GUILLERMO"."ESTUDIANTE" 
   (	"ESTUDIANTE_ID" NUMBER(*,0), 
	"NOMBRE" VARCHAR2(100 BYTE), 
	"CORREO" VARCHAR2(100 BYTE), 
	"FECHA_REGISTRO" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EXAMEN
--------------------------------------------------------

  CREATE TABLE "GUILLERMO"."EXAMEN" 
   (	"EXAMEN_ID" NUMBER(*,0), 
	"ESTUDIANTE_ID" NUMBER(*,0), 
	"PLANTILLA_ID" NUMBER(*,0), 
	"FECHA_EXAMEN" DATE DEFAULT SYSDATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table EXAMEN_PREGUNTA
--------------------------------------------------------

  CREATE TABLE "GUILLERMO"."EXAMEN_PREGUNTA" 
   (	"PREGUNTA_ID" NUMBER(*,0), 
	"ESTUDIANTE_ID" NUMBER(*,0), 
	"EXAMEN_ID" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table MATERIA
--------------------------------------------------------

  CREATE TABLE "GUILLERMO"."MATERIA" 
   (	"MATERIA_ID" NUMBER(*,0), 
	"NOMBRE_MATERIA" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PLANTILLA
--------------------------------------------------------

  CREATE TABLE "GUILLERMO"."PLANTILLA" 
   (	"PLANTILLA_ID" NUMBER(*,0), 
	"MATERIA_ID" NUMBER(*,0), 
	"NOMBRE_PLANTILLA" VARCHAR2(100 BYTE), 
	"CANTIDAD_PREGUNTAS_FACIL" NUMBER(*,0), 
	"CANTIDAD_PREGUNTAS_INTERMEDIO" NUMBER(*,0), 
	"CANTIDAD_PREGUNTAS_DIFICIL" NUMBER(*,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table PREGUNTA
--------------------------------------------------------

  CREATE TABLE "GUILLERMO"."PREGUNTA" 
   (	"PREGUNTA_ID" NUMBER(*,0), 
	"MATERIA_ID" NUMBER(*,0), 
	"DIFICULTAD_ID" NUMBER(*,0), 
	"CONTENIDO" VARCHAR2(500 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Table RESULTADO_EXAMEN
--------------------------------------------------------

  CREATE TABLE "GUILLERMO"."RESULTADO_EXAMEN" 
   (	"RESULTADO_ID" NUMBER(*,0), 
	"ESTUDIANTE_ID" NUMBER(*,0), 
	"EXAMEN_ID" NUMBER(*,0), 
	"PUNTUACION" NUMBER(*,0), 
	"RETROALIMENTACION" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "USERS" ;
REM INSERTING into GUILLERMO.DIFICULTAD
SET DEFINE OFF;
REM INSERTING into GUILLERMO.ESTUDIANTE
SET DEFINE OFF;
REM INSERTING into GUILLERMO.EXAMEN
SET DEFINE OFF;
REM INSERTING into GUILLERMO.EXAMEN_PREGUNTA
SET DEFINE OFF;
REM INSERTING into GUILLERMO.MATERIA
SET DEFINE OFF;
REM INSERTING into GUILLERMO.PLANTILLA
SET DEFINE OFF;
REM INSERTING into GUILLERMO.PREGUNTA
SET DEFINE OFF;
REM INSERTING into GUILLERMO.RESULTADO_EXAMEN
SET DEFINE OFF;
--------------------------------------------------------
--  DDL for Index IDX_EXAMEN_ESTUDIANTE
--------------------------------------------------------

  CREATE INDEX "GUILLERMO"."IDX_EXAMEN_ESTUDIANTE" ON "GUILLERMO"."EXAMEN" ("ESTUDIANTE_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_EXAMEN_PLANTILLA
--------------------------------------------------------

  CREATE INDEX "GUILLERMO"."IDX_EXAMEN_PLANTILLA" ON "GUILLERMO"."EXAMEN" ("PLANTILLA_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_RESULTADO_EXAMEN
--------------------------------------------------------

  CREATE INDEX "GUILLERMO"."IDX_RESULTADO_EXAMEN" ON "GUILLERMO"."RESULTADO_EXAMEN" ("EXAMEN_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_PREGUNTA_MATERIA
--------------------------------------------------------

  CREATE INDEX "GUILLERMO"."IDX_PREGUNTA_MATERIA" ON "GUILLERMO"."PREGUNTA" ("MATERIA_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_PREGUNTA_DIFICULTAD
--------------------------------------------------------

  CREATE INDEX "GUILLERMO"."IDX_PREGUNTA_DIFICULTAD" ON "GUILLERMO"."PREGUNTA" ("DIFICULTAD_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  DDL for Index IDX_EXAMEN_PREGUNTA
--------------------------------------------------------

  CREATE INDEX "GUILLERMO"."IDX_EXAMEN_PREGUNTA" ON "GUILLERMO"."EXAMEN_PREGUNTA" ("EXAMEN_ID") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table RESULTADO_EXAMEN
--------------------------------------------------------

  ALTER TABLE "GUILLERMO"."RESULTADO_EXAMEN" ADD PRIMARY KEY ("RESULTADO_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table PREGUNTA
--------------------------------------------------------

  ALTER TABLE "GUILLERMO"."PREGUNTA" ADD PRIMARY KEY ("PREGUNTA_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "GUILLERMO"."PREGUNTA" MODIFY ("CONTENIDO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EXAMEN
--------------------------------------------------------

  ALTER TABLE "GUILLERMO"."EXAMEN" ADD PRIMARY KEY ("EXAMEN_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Constraints for Table MATERIA
--------------------------------------------------------

  ALTER TABLE "GUILLERMO"."MATERIA" ADD PRIMARY KEY ("MATERIA_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "GUILLERMO"."MATERIA" MODIFY ("NOMBRE_MATERIA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table DIFICULTAD
--------------------------------------------------------

  ALTER TABLE "GUILLERMO"."DIFICULTAD" ADD PRIMARY KEY ("DIFICULTAD_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "GUILLERMO"."DIFICULTAD" MODIFY ("NIVEL_DIFICULTAD" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ESTUDIANTE
--------------------------------------------------------

  ALTER TABLE "GUILLERMO"."ESTUDIANTE" ADD UNIQUE ("CORREO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "GUILLERMO"."ESTUDIANTE" ADD PRIMARY KEY ("ESTUDIANTE_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "GUILLERMO"."ESTUDIANTE" MODIFY ("CORREO" NOT NULL ENABLE);
  ALTER TABLE "GUILLERMO"."ESTUDIANTE" MODIFY ("NOMBRE" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PLANTILLA
--------------------------------------------------------

  ALTER TABLE "GUILLERMO"."PLANTILLA" ADD PRIMARY KEY ("PLANTILLA_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "GUILLERMO"."PLANTILLA" MODIFY ("NOMBRE_PLANTILLA" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table EXAMEN_PREGUNTA
--------------------------------------------------------

  ALTER TABLE "GUILLERMO"."EXAMEN_PREGUNTA" ADD PRIMARY KEY ("PREGUNTA_ID", "ESTUDIANTE_ID", "EXAMEN_ID")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  TABLESPACE "USERS"  ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EXAMEN
--------------------------------------------------------

  ALTER TABLE "GUILLERMO"."EXAMEN" ADD FOREIGN KEY ("ESTUDIANTE_ID")
	  REFERENCES "GUILLERMO"."ESTUDIANTE" ("ESTUDIANTE_ID") ENABLE;
  ALTER TABLE "GUILLERMO"."EXAMEN" ADD FOREIGN KEY ("PLANTILLA_ID")
	  REFERENCES "GUILLERMO"."PLANTILLA" ("PLANTILLA_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table EXAMEN_PREGUNTA
--------------------------------------------------------

  ALTER TABLE "GUILLERMO"."EXAMEN_PREGUNTA" ADD FOREIGN KEY ("PREGUNTA_ID")
	  REFERENCES "GUILLERMO"."PREGUNTA" ("PREGUNTA_ID") ENABLE;
  ALTER TABLE "GUILLERMO"."EXAMEN_PREGUNTA" ADD FOREIGN KEY ("ESTUDIANTE_ID")
	  REFERENCES "GUILLERMO"."ESTUDIANTE" ("ESTUDIANTE_ID") ENABLE;
  ALTER TABLE "GUILLERMO"."EXAMEN_PREGUNTA" ADD FOREIGN KEY ("EXAMEN_ID")
	  REFERENCES "GUILLERMO"."EXAMEN" ("EXAMEN_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PLANTILLA
--------------------------------------------------------

  ALTER TABLE "GUILLERMO"."PLANTILLA" ADD FOREIGN KEY ("MATERIA_ID")
	  REFERENCES "GUILLERMO"."MATERIA" ("MATERIA_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PREGUNTA
--------------------------------------------------------

  ALTER TABLE "GUILLERMO"."PREGUNTA" ADD FOREIGN KEY ("MATERIA_ID")
	  REFERENCES "GUILLERMO"."MATERIA" ("MATERIA_ID") ENABLE;
  ALTER TABLE "GUILLERMO"."PREGUNTA" ADD FOREIGN KEY ("DIFICULTAD_ID")
	  REFERENCES "GUILLERMO"."DIFICULTAD" ("DIFICULTAD_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RESULTADO_EXAMEN
--------------------------------------------------------

  ALTER TABLE "GUILLERMO"."RESULTADO_EXAMEN" ADD FOREIGN KEY ("ESTUDIANTE_ID")
	  REFERENCES "GUILLERMO"."ESTUDIANTE" ("ESTUDIANTE_ID") ENABLE;
  ALTER TABLE "GUILLERMO"."RESULTADO_EXAMEN" ADD FOREIGN KEY ("EXAMEN_ID")
	  REFERENCES "GUILLERMO"."EXAMEN" ("EXAMEN_ID") ENABLE;

-- Insertar datos en Materia
INSERT INTO Materia (materia_ID, nombre_materia) VALUES (1, 'Matemáticas');
INSERT INTO Materia (materia_ID, nombre_materia) VALUES (2, 'Física');
INSERT INTO Materia (materia_ID, nombre_materia) VALUES (3, 'Química');

-- Insertar datos en Dificultad
INSERT INTO Dificultad (dificultad_ID, nivel_dificultad) VALUES (1, 'Fácil');
INSERT INTO Dificultad (dificultad_ID, nivel_dificultad) VALUES (2, 'Intermedio');
INSERT INTO Dificultad (dificultad_ID, nivel_dificultad) VALUES (3, 'Difícil');

-- Insertar datos en Estudiante
INSERT INTO Estudiante (estudiante_ID, nombre, correo, fecha_registro) 
VALUES (1, 'Juan Pérez', 'juan.perez@mail.com', SYSDATE);
INSERT INTO Estudiante (estudiante_ID, nombre, correo, fecha_registro) 
VALUES (2, 'Ana López', 'ana.lopez@mail.com', SYSDATE);

-- Insertar datos en Plantilla
INSERT INTO Plantilla (plantilla_ID, materia_ID, nombre_plantilla, cantidad_preguntas_facil, cantidad_preguntas_intermedio, cantidad_preguntas_dificil) 
VALUES (1, 1, 'Examen Final Matemáticas', 5, 3, 2);
INSERT INTO Plantilla (plantilla_ID, materia_ID, nombre_plantilla, cantidad_preguntas_facil, cantidad_preguntas_intermedio, cantidad_preguntas_dificil) 
VALUES (2, 2, 'Examen Física Básica', 4, 4, 2);

-- Insertar datos en Pregunta
INSERT INTO Pregunta (pregunta_ID, materia_ID, dificultad_ID, contenido) 
VALUES (1, 1, 1, '¿Cuánto es 2 + 2?');
INSERT INTO Pregunta (pregunta_ID, materia_ID, dificultad_ID, contenido) 
VALUES (2, 1, 2, 'Deriva la función f(x) = 3x^2.');
INSERT INTO Pregunta (pregunta_ID, materia_ID, dificultad_ID, contenido) 
VALUES (3, 2, 3, 'Explica la teoría del campo eléctrico.');

-- Insertar datos en Examen
INSERT INTO Examen (examen_ID, estudiante_ID, plantilla_ID, fecha_examen) 
VALUES (1, 1, 1, SYSDATE);
INSERT INTO Examen (examen_ID, estudiante_ID, plantilla_ID, fecha_examen) 
VALUES (2, 2, 2, SYSDATE);

-- Insertar datos en Resultado_Examen
INSERT INTO Resultado_Examen (resultado_ID, estudiante_ID, examen_ID, puntuacion, retroalimentacion) 
VALUES (1, 1, 1, 85, 'Buen trabajo, sigue practicando.');
INSERT INTO Resultado_Examen (resultado_ID, estudiante_ID, examen_ID, puntuacion, retroalimentacion) 
VALUES (2, 2, 2, 90, 'Excelente desempeño.');

-- Insertar datos en Examen_Pregunta
INSERT INTO Examen_Pregunta (pregunta_ID, estudiante_ID, examen_ID) 
VALUES (1, 1, 1);
INSERT INTO Examen_Pregunta (pregunta_ID, estudiante_ID, examen_ID) 
VALUES (2, 2, 2);


--------------------------------------------------------
--  DDL for Trigger TRG_PREVENT_DUPLICATE_RESULT
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "GUILLERMO"."TRG_PREVENT_DUPLICATE_RESULT" 
BEFORE INSERT ON Resultado_Examen
FOR EACH ROW
DECLARE
    v_count INT;
BEGIN
    SELECT COUNT(*) INTO v_count
    FROM Resultado_Examen
    WHERE estudiante_ID = :NEW.estudiante_ID
      AND examen_ID = :NEW.examen_ID;

    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'El estudiante ya tiene un resultado registrado para este examen.');
    END IF;
END;
/
ALTER TRIGGER "GUILLERMO"."TRG_PREVENT_DUPLICATE_RESULT" ENABLE;
--------------------------------------------------------
--  DDL for Trigger TRG_VALIDATE_SCORE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "GUILLERMO"."TRG_VALIDATE_SCORE" 
BEFORE INSERT OR UPDATE ON Resultado_Examen
FOR EACH ROW
BEGIN
    IF :NEW.puntuacion < 0 OR :NEW.puntuacion > 100 THEN
        RAISE_APPLICATION_ERROR(-20002, 'La puntuaci�n debe estar entre 0 y 100.');
    END IF;
END;
/
ALTER TRIGGER "GUILLERMO"."TRG_VALIDATE_SCORE" ENABLE;
--------------------------------------------------------
--  DDL for Trigger VALIDAR_PLANTILLA_PREGUNTAS
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE TRIGGER "GUILLERMO"."VALIDAR_PLANTILLA_PREGUNTAS" 
BEFORE INSERT OR UPDATE ON Plantilla
FOR EACH ROW
BEGIN
    IF :NEW.cantidad_preguntas_facil + :NEW.cantidad_preguntas_intermedio + :NEW.cantidad_preguntas_dificil > 100 THEN
        RAISE_APPLICATION_ERROR(-20003, 'La suma de preguntas f�ciles, intermedias y dif�ciles no puede exceder 100.');
    END IF;
END;
/
ALTER TRIGGER "GUILLERMO"."VALIDAR_PLANTILLA_PREGUNTAS" ENABLE;
--------------------------------------------------------
--  DDL for Function OBTENER_PROMEDIO_ESTUDIANTE
--------------------------------------------------------

  CREATE OR REPLACE EDITIONABLE FUNCTION "GUILLERMO"."OBTENER_PROMEDIO_ESTUDIANTE" (
    p_estudiante_ID IN INT
) RETURN NUMBER IS
    v_promedio NUMBER;
BEGIN
    SELECT NVL(AVG(puntuacion), 0)
    INTO v_promedio
    FROM Resultado_Examen
    WHERE estudiante_ID = p_estudiante_ID;

    RETURN v_promedio;
END;

/
--------------------------------------------------------
--  DDL for Procedure MOSTRAR_DETALLE_EXAMEN
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "GUILLERMO"."MOSTRAR_DETALLE_EXAMEN" (
    p_estudiante_ID IN INT
) AS
BEGIN

    FOR r IN (
        SELECT E.examen_ID, P.nombre_plantilla, R.puntuacion, R.retroalimentacion, E.fecha_examen
        FROM Examen E
        JOIN Plantilla P ON E.plantilla_ID = P.plantilla_ID
        JOIN Resultado_Examen R ON E.examen_ID = R.examen_ID AND E.estudiante_ID = R.estudiante_ID
        WHERE E.estudiante_ID = p_estudiante_ID
    ) LOOP
        DBMS_OUTPUT.PUT_LINE('Examen ID: ' || r.examen_ID);
        DBMS_OUTPUT.PUT_LINE('Plantilla: ' || r.nombre_plantilla);
        DBMS_OUTPUT.PUT_LINE('Puntuaci�n: ' || r.puntuacion);
        DBMS_OUTPUT.PUT_LINE('Retroalimentaci�n: ' || r.retroalimentacion);
        DBMS_OUTPUT.PUT_LINE('Fecha Examen: ' || r.fecha_examen);
        DBMS_OUTPUT.PUT_LINE('----------------------------');
    END LOOP;
END;

/
--------------------------------------------------------
--  DDL for Procedure REGISTRAR_EXAMEN_RESULTADO
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "GUILLERMO"."REGISTRAR_EXAMEN_RESULTADO" (
    p_examen_ID IN INT,
    p_estudiante_ID IN INT,
    p_plantilla_ID IN INT,
    p_fecha_examen IN DATE,
    p_puntuacion IN INT,
    p_retroalimentacion IN VARCHAR
) AS
BEGIN
    -- Insertar en Examen
    INSERT INTO Examen (examen_ID, estudiante_ID, plantilla_ID, fecha_examen)
    VALUES (p_examen_ID, p_estudiante_ID, p_plantilla_ID, p_fecha_examen);

    -- Insertar en Resultado_Examen
    INSERT INTO Resultado_Examen (resultado_ID, estudiante_ID, examen_ID, puntuacion, retroalimentacion)
    VALUES (p_examen_ID, p_estudiante_ID, p_examen_ID, p_puntuacion, p_retroalimentacion);

    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Examen y resultado registrado con �xito.');
EXCEPTION
    WHEN OTHERS THEN
        ROLLBACK;
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;

/
