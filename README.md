# Proyecto-gimnasio-Furlani---Entrega-final
Entrega final proyecto SQL 
## Proyecto gimnasio Rodrigo Furlani 
Alumno: Rodrigo Furlani

Comisión: 57190

Profesor: Anderson Ocaña

Tutor: Ariel-annone

## Proyecto Final proyecto SQL

## Explicacion de objetivo de la Base
# TABLAS y objetivos para lo cual fue creada 
Cada tabla tiene una tabla tiene una clave primaria (PRIMARY KEY) y las relaciones entre las tablas 
se establecen mediante claves foreanas (FOREIGN KEY).

## Descripción del Problema de Negocio
Un gimnasio moderno enfrenta varios desafíos relacionados con la gestión eficiente de sus operaciones diarias. Con un número creciente de clientes, clases, entrenadores y equipos, la administración manual de estos elementos se vuelve cada vez más complicada y propensa a errores. Además, los clientes esperan una experiencia fluida, desde la inscripción hasta la participación en clases y el pago de membresías.

El gimnasio necesita un sistema integral que simplifique y automatice la gestión de clientes, membresías, clases, entrenadores y equipos. Un sistema bien diseñado no solo mejorará la eficiencia operativa sino que también aumentará la satisfacción del cliente al proporcionar una experiencia más organizada y profesional.


## Requisitos del Sistema
### Funcionales
 # descripción de cada tabla creada:

1. **Clientes**: Almacena los datos personales de los clientes, como su nombre, apellido, fecha de nacimiento, email, teléfono y CUIL (número único de identificación en Argentina). Cada cliente tiene un identificador único (`id_cliente`).

2. **Empleados**: Contiene información sobre los empleados, incluyendo su nombre, apellido, puesto, teléfono y correo electrónico. El identificador único es `id_empleado`.

3. **Membresias**: Almacena los diferentes tipos de membresías disponibles, junto con su precio y duración en meses. El campo `id_membresia` es el identificador único.

4. **Entrenadores**: Guarda los datos de los entrenadores, incluyendo nombre, apellido, especialidad (si aplica) y teléfono. Cada entrenador tiene un identificador único (`id_entrenador`).

5. **Clases**: Contiene información sobre las clases ofrecidas, como su nombre, descripción y el entrenador asignado a la clase. El campo `id_clase` es la clave primaria.

6. **LogsClientes**: Registra las operaciones realizadas por los clientes (como actualizaciones o eliminaciones), junto con la fecha y hora. La clave primaria es `id_log`, y cada registro está relacionado con un cliente específico mediante `id_cliente`.

7. **Inscripciones**: Registra las inscripciones de los clientes en clases, con la fecha de inscripción. Está vinculada tanto a la tabla de `Clientes` como a la de `Clases`.

8. **Pagos**: Almacena los pagos realizados por los clientes, especificando el monto, la fecha y la membresía correspondiente. Está vinculada a las tablas de `Clientes` y `Membresias`.

9. **Equipos**: Contiene la información sobre los equipos utilizados en el gimnasio, incluyendo su nombre, marca, estado y el entrenador responsable. Está relacionada con la tabla de `Entrenadores`.

10. **Rutinas**: Guarda las rutinas asignadas a los clientes por los entrenadores, con una descripción y la fecha de asignación. Está vinculada a las tablas de `Clientes` y `Entrenadores`.

11. **Horarios**: Define los horarios de las clases, indicando el día de la semana y las horas de inicio y fin. Está relacionada con la tabla de `Clases`.

12. **Asistencias**: Registra la asistencia de los clientes a las clases, especificando si estuvieron presentes o no. Está relacionada con las tablas de `Clientes` y `Clases`.

13. **Reservas**: Almacena las reservas que los clientes realizan para asistir a clases, junto con la fecha de reserva y el estado de la misma. Está vinculada a las tablas de `Clientes` y `Clases`.

14. **Servicios**: Contiene los servicios ofrecidos por los empleados a los clientes, con una descripción y un precio. Está vinculada a las tablas de `Empleados` y `Clientes`.

15. **Contrataciones**: Registra las contrataciones de servicios por parte de los clientes, especificando la fecha de contratación. Está relacionada con las tablas de `Clientes` y `Servicios`.

16. **Facturas**: Almacena las facturas emitidas por los pagos realizados, incluyendo la fecha de emisión y el total. Está vinculada a la tabla de `Pagos`.

17. **Feedback**: Registra la calificación y los comentarios de los clientes sobre las clases, con una calificación del 1 al 5. Está vinculada a las tablas de `Clientes` y `Clases`.
## Beneficios Esperados
* Mejora en la Eficiencia Operativa: Reducir el tiempo y esfuerzo necesarios para gestionar las operaciones diarias del gimnasio.
* Incremento en la Satisfacción del Cliente: Proporcionar una experiencia más fluida y profesional a los clientes.
* Toma de Decisiones Informada: Acceso a datos precisos y actualizados para tomar decisiones estratégicas
* Reducción de Errores: Minimizar los errores humanos asociados con la gestión manual
# las vistas
![image](https://github.com/user-attachments/assets/40dc3719-3e8a-47d9-9560-f0d6c5c9fc94)

## Vista de Feedback
### Objetivo:
Su objtivo es dar una visión consolidada de los comentarios y calificaciones de los clientes sobre las clases que han tomado, incluyendo detalles del cliente y la clase.

### Tablas que la componen:

* Feedback (f)
* Clientes (c)
* Clases (cl)

# Script de creacin
![image](https://github.com/user-attachments/assets/ed6fbcd8-df28-4506-803e-268bfc9b9168)

## Vista de Reservas
### Objetivo:
Su objetivo es mostrar las reservas realizadas por los clientes para las diferentes clases, incluyendo el estado de la reserva y los detalles del cliente y la clase.
## Tablas que la componen:

* Reservas (r)
* Clientes (c)
* Clases (cl)

# Script de creacion
![image](https://github.com/user-attachments/assets/69aad670-69e8-4f38-a5b7-ed45ce245bde)

## Vista de Asistencias
### Objetivo:
Proporcionar información sobre la asistencia de los clientes a las clases, indicando si estuvieron presentes y los detalles de la clase.

# Tablas que la componen:

* Asistencias (a)
* Clientes (c)
* Clases (cl)

# Script de creacion
![image](https://github.com/user-attachments/assets/50338475-f369-4622-bdb1-d39c396a7df0)

## Vista de Clases y Horarios
### Objetivo:
Proveer un resumen de las clases y sus horarios, facilitando la consulta de la programación de clases.

# Tablas que la componen:

* Clases (c)
* Horarios (h)

# Script de creacion
![image](https://github.com/user-attachments/assets/1a9e6339-d8ee-4eec-923b-f6f15fa38e09)

## Vista de Clientes y Rutinas
### Objetivo:
Mostrar las rutinas asignadas a los clientes, incluyendo detalles del cliente, la rutina y el entrenador responsable.

# Tablas que la componen:

* Clientes (c)
* Rutinas (r)
* Entrenadores (e)

# Script de creacion:
![image](https://github.com/user-attachments/assets/44e2e7a2-9e9a-406c-bfc1-4724dbb4a856)

## Vista de Entrenadores y Clases
### Objetivo:
Proporcionar una visión de las clases impartidas por cada entrenador, detallando tanto la especialidad del entrenador como la descripción de las clases.

Tablas que la componen:

* Entrenadores (e)
* Clases (c)
# Script de creacion:
![image](https://github.com/user-attachments/assets/7cb2754a-00f0-4123-b145-13cc9c8a14cb)

# Funciones 
![image](https://github.com/user-attachments/assets/b3f49b19-aabd-4ece-b8bc-30fc41f733bb)
## 1) Función calcularTotalPagado
## Objetivo:
La función calcularTotalPagado tiene de objetivo calcular el total de pagos realizados por un cliente específico identificado por su CUIL.
# Script de creacion:
![image](https://github.com/user-attachments/assets/432c7e25-45b0-4535-84e5-7306966658fd)

*Funcionamiento:
1) Declara una variable total_pagado para almacenar el total de pagos.
2) Ejecuta una consulta que suma todos los montos de la tabla Pagos asociados al cliente cuyo CUIL coincide con el parámetro de entrada.
3) Almacena el resultado en la variable total_pagado.
4) Retorna el valor de total_pagado.
# Script de uso:
![image](https://github.com/user-attachments/assets/9d4579cd-17f2-49e4-9eed-b49dba5af6f6)

## 2) Función obtenerNombreCompletoCliente
## Objetivo:
La función "obtenerNombreCompletoCliente" tiene de objetivo obtener el nombre completo de un cliente específico identificado por su CUIL.
# Script de creacion:
![image](https://github.com/user-attachments/assets/a5d1cd20-cc1f-4f08-9b84-901791a0e05c)

#Descripción Detallada:

* Parámetro de Entrada: in_cuil de tipo VARCHAR(100), que representa el CUIL del cliente.
* Valor de Retorno: Un valor de tipo VARCHAR(200) que representa el nombre completo del cliente.
# Funcionamiento:
1) Declara una variable nombre_completo para almacenar el nombre completo del cliente.
2) Ejecuta una consulta que concatena el nombre y el apellido del cliente cuyo CUIL coincide con el parámetro de entrada.
3) Almacena el resultado en la variable nombre_completo.
4) Retorna el valor de nombre_completo.
# script de uso:
![image](https://github.com/user-attachments/assets/1844b2ce-470e-42b9-8fcb-075a4a6be51f)

# Stored Procedures
## 1) Procedimiento ReporteAsistenciaCliente
Descripción:

* Objetivo: Generar un reporte detallado de la asistencia de un cliente específico a las clases.
* Funcionamiento:
1) Parámetro de Entrada: p_id_cliente (ID del cliente).
2) Consulta: Se seleccionan los nombres de las clases, las fechas de asistencia y el estado de presencia (Presente) de la tabla Asistencias y se unen con la tabla Clases para obtener el nombre de las clases.
3) Condición: La consulta filtra los registros de asistencia para el cliente específico cuyo ID se proporciona como parámetro.
## Beneficios para el Proyecto:

1) Monitoreo de Asistencia: Facilita el seguimiento de la participación de los clientes en las clases, lo que puede ser bueno para evaluar el compromiso y la regularidad.
2) Personalización del Servicio: Permite a los entrenadores y al personal del gimnasio personalizar el seguimiento y las recomendaciones basadas en la asistencia del cliente.
3) Análisis de Comportamiento: Proporciona datos valiosos para analizar los patrones de comportamiento de los clientes y ajustar las ofertas de clases y horarios en consecuencia.
# Script de uso:
![image](https://github.com/user-attachments/assets/20bc4e54-81b0-4a30-9051-509309745e98)

# call consulta:
![image](https://github.com/user-attachments/assets/944706ab-01de-48cc-9170-7d3b73beeef3)

## 2) Procedimiento RegistrarCliente
Descripción:

* Objetivo: Registrar un nuevo cliente en la base de datos.
* Funcionamiento:
1) Parámetros de Entrada: p_nombre, p_apellido, p_fecha_nacimiento, p_email, p_telefono, p_cuil.
2) Inserción: Inserta un nuevo registro en la tabla Clientes con los datos proporcionados.
## Beneficios para el Proyecto:

* Automatización del Registro: Simplifica y automatiza el proceso de registrar nuevos clientes, reduciendo el riesgo de errores humanos.
* Eficiencia Operativa: Aumenta la eficiencia en la gestión de datos de clientes, permitiendo una inserción rápida y estructurada de la información.
* Consistencia de Datos: Asegura que todos los campos necesarios para un nuevo cliente sean proporcionados y almacenados correctamente en la base de datos.
# Script de creacion:
![image](https://github.com/user-attachments/assets/110525e5-58cf-43d6-b2cf-7f23fa11aeb6)
# call consulta:
![image](https://github.com/user-attachments/assets/671c21b8-9dff-4f03-b918-e77eaa8884b0)

## 3) Procedimiento verCliente
Descripción:

* Objetivo: Consultar y mostrar la información de un cliente específico basado en su CUIL.
* Funcionamiento:
1) Parámetro de Entrada: p_cuil (CUIL del cliente).
2) Consulta: Selecciona todos los campos de la tabla Clientes donde el CUIL coincide con el parámetro proporcionado.
## Beneficios para el Proyecto:

* Acceso Rápido a Información: Permite obtener rápidamente toda la información relevante de un cliente, mejorando la atención al cliente y la toma de decisiones.
* Precisión en las Consultas: Facilita consultas precisas basadas en el CUIL, asegurando que se obtiene la información del cliente correcto.
* Soporte Administrativo: Ayuda al personal administrativo y de atención al cliente a gestionar de manera eficiente las consultas y solicitudes de información sobre clientes.

# Script de creacion:

![image](https://github.com/user-attachments/assets/8a1aa99f-5998-431f-b69d-98d5377b9121)

# call consulta:
![image](https://github.com/user-attachments/assets/5e627100-e0b3-4dba-b7fb-eeb4da9eb47c)
## Triggers nuevos 
* descripción de cada **trigger** y su uso:

1. **Trigger: `after_cliente_insert`**  
   **Descripción**: Este trigger se activa automáticamente **después de que un nuevo cliente es insertado** en la tabla `Clientes`.  
   **Uso**: Su propósito es registrar en la tabla `LogsClientes` la operación de inserción, creando un log que almacena el `id_cliente` recién agregado y la operación `'INSERT'`. Esto permite rastrear las inserciones de clientes.

   **Script**:  
   ```SQL
   INSERT INTO LogsClientes (id_cliente, operacion)
   VALUES (NEW.id_cliente, 'INSERT');
   ```

2. **Trigger: `after_cliente_update`**  
   **Descripción**: Este trigger se ejecuta **después de que un cliente es actualizado** en la tabla `Clientes`.  
   **Uso**: Se utiliza para registrar actualizaciones en la tabla `LogsClientes`. Cada vez que un cliente es actualizado, se guarda un log con el `id_cliente` y la operación `'UPDATE'` en la tabla de logs. Esto permite rastrear qué clientes han sido modificados.

   **Script**:  
   ```SQL
   INSERT INTO LogsClientes (id_cliente, operacion)
   VALUES (NEW.id_cliente, 'UPDATE');
   ```

3. **Trigger: `after_cliente_delete`**  
   **Descripción**: Este trigger se activa **después de que un cliente es eliminado** de la tabla `Clientes`.  
   **Uso**: Registra en la tabla `LogsClientes` la operación de eliminación. Cuando se elimina un cliente, el `id_cliente` eliminado y la operación `'DELETE'` se registran en los logs, lo que facilita el seguimiento de eliminaciones.

   **Script**:  
   ```SQL
   INSERT INTO LogsClientes (id_cliente, operacion)
   VALUES (OLD.id_cliente, 'DELETE');
   ```

4. **Trigger: `before_pago_insert`**  
   **Descripción**: Este trigger se ejecuta **antes de insertar un nuevo pago** en la tabla `Pagos`.  
   **Uso**: Su función es **validar** que el monto del pago no sea negativo. Si el valor del pago (`monto`) es menor que 0, el trigger lanza un error mediante la instrucción `SIGNAL`, deteniendo la inserción y mostrando un mensaje de error. Esto asegura la integridad de los datos al evitar pagos inválidos.

   **Script**:  
   ```SQL
   IF NEW.monto < 0 THEN
       SIGNAL SQLSTATE '40000'
       SET MESSAGE_TEXT = 'El pago no tiene que ser un valor negativo';
   END IF;
   ```

# ROLES
## Descripcion de Roles creados
### 1. **ROL: Gerencia**
   - **Descripción**: Este rol tiene **todos los privilegios** sobre la base de datos `proyecto_gimnasio`.
   - **Uso**: El rol `Gerencia` tiene control total, lo que incluye crear, modificar, eliminar tablas, vistas, procedimientos almacenados, funciones y manipular datos. Los usuarios con este rol pueden realizar cualquier operación en la base de datos sin restricciones.

   ```sql
   GRANT ALL PRIVILEGES ON proyecto_gimnasio TO 'Gerencia';
   ```

### 2. **ROL: Administración**
   - **Descripción**: Este rol tiene permisos **DML** (Data Manipulation Language) sobre ciertas tablas, permisos para ejecutar funciones y procedimientos específicos, y permisos de selección sobre varias vistas.
   - **Uso**:
     - **Permisos sobre tablas**: Los usuarios con este rol pueden **seleccionar, insertar, actualizar y eliminar** datos en las tablas `clases`, `clientes`, `pagos` y `reservas`. Este rol está diseñado para administrar las operaciones cotidianas relacionadas con la gestión de clientes y pagos.
     - **Permisos para funciones y procedimientos**: Pueden ejecutar dos funciones (`calcularTotalPagado` y `obtenerNombreCompletoCliente`) y dos procedimientos almacenados (`RegistrarCliente` y `verCliente`). Estas funciones y procedimientos permiten obtener información clave y gestionar clientes.
     - **Permisos sobre vistas**: Tienen acceso de solo lectura a cuatro vistas (`vista_clases_horarios`, `vista_reservas`, `vista_clientes_rutinas` y `vista_feedback`), que proporcionan resúmenes importantes de datos.

   ```sql
   GRANT SELECT, INSERT, UPDATE, DELETE ON proyecto_gimnasio.clases TO 'Administracion';
   GRANT SELECT, INSERT, UPDATE, DELETE ON proyecto_gimnasio.clientes TO 'Administracion';
   GRANT SELECT, INSERT, UPDATE, DELETE ON proyecto_gimnasio.pagos TO 'Administracion';
   GRANT SELECT, INSERT, UPDATE, DELETE ON proyecto_gimnasio.reservas TO 'Administracion';

   GRANT EXECUTE ON FUNCTION proyecto_gimnasio.calcularTotalPagado TO 'Administracion';
   GRANT EXECUTE ON FUNCTION proyecto_gimnasio.obtenerNombreCompletoCliente TO 'Administracion';
   GRANT EXECUTE ON PROCEDURE proyecto_gimnasio.RegistrarCliente TO 'Administracion';
   GRANT EXECUTE ON PROCEDURE proyecto_gimnasio.verCliente TO 'Administracion';

   GRANT SELECT ON proyecto_gimnasio.vista_clases_horarios TO 'Administracion';
   GRANT SELECT ON proyecto_gimnasio.vista_reservas TO 'Administracion';
   GRANT SELECT ON proyecto_gimnasio.vista_clientes_rutinas TO 'Administracion';
   GRANT SELECT ON proyecto_gimnasio.vista_feedback TO 'Administracion';
   ```

### 3. **ROL: Empleados**
   - **Descripción**: Este rol tiene permisos **DML** para gestionar datos sobre entrenadores, empleados, equipos, horarios, inscripciones y servicios. Además, pueden ejecutar funciones y procedimientos, y consultar algunas vistas específicas.
   - **Uso**:
     - **Permisos sobre tablas**: Los usuarios con este rol pueden **seleccionar, insertar y actualizar** datos en las tablas `entrenadores`, `empleados`, `equipos`, `horarios`, `inscripciones` y `servicios`. Esto les permite administrar los recursos y servicios del gimnasio.
     - **Permisos para funciones y procedimientos**: Pueden ejecutar la función `calcularTotalPagado` y el procedimiento `RegistrarCliente`, lo que les permite gestionar los pagos y registrar nuevos clientes.
     - **Permisos sobre vistas**: Tienen acceso de solo lectura a tres vistas (`vista_clases_horarios`, `vista_reservas` y `vista_entrenadores_clases`), que les proporcionan información sobre los horarios de clases, reservas y la asignación de entrenadores a clases.

   ```sql
   GRANT SELECT, INSERT, UPDATE ON entrenadores TO 'Empleados';
   GRANT SELECT, INSERT, UPDATE ON empleados TO 'Empleados';
   GRANT SELECT, INSERT, UPDATE ON equipos TO 'Empleados';
   GRANT SELECT, INSERT, UPDATE ON horarios TO 'Empleados';
   GRANT SELECT, INSERT, UPDATE ON inscripciones TO 'Empleados';
   GRANT SELECT, INSERT, UPDATE ON servicios TO 'Empleados';

   GRANT EXECUTE ON FUNCTION proyecto_gimnasio.calcularTotalPagado TO 'Empleados';
   GRANT EXECUTE ON PROCEDURE proyecto_gimnasio.RegistrarCliente TO 'Empleados';

   GRANT SELECT ON proyecto_gimnasio.vista_clases_horarios TO 'Empleados';
   GRANT SELECT ON proyecto_gimnasio.vista_reservas TO 'Empleados';
   GRANT SELECT ON proyecto_gimnasio.vista_entrenadores_clases TO 'Empleados';
   ```

### Resumen:
- **Gerencia**: Control total de la base de datos, todos los permisos.
- **Administración**: Permisos completos sobre ciertas tablas clave (clases, clientes, pagos, reservas), ejecución de funciones y procedimientos específicos, y acceso a vistas para gestión.
- **Empleados**: Permisos de gestión para entrenadores, empleados, equipos, horarios, inscripciones y servicios, así como acceso a vistas específicas y funciones/procedimientos necesarios para su labor diaria.
# la base esta formada con 17 tablas
* aqui adjunto el diagrama entidad relacion actualizado
![image](https://github.com/user-attachments/assets/74e9eb8d-578a-42a7-b44e-b025d1bc402a)











