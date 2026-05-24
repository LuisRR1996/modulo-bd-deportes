# Base de Datos: Empresa Deportiva (BD Sports) ⚽

Este directorio contiene el desarrollo práctico de la **Semana 02** del módulo Database Foundations. El proyecto se centra en el Lenguaje de Manipulación de Datos (DML) y la extracción de información estratégica mediante consultas avanzadas en MySQL.

## 🛠️ Tecnologías y Conceptos Aplicados
- **Motor de Base de Datos:** MySQL
- **DDL (Data Definition Language):** Creación de base de datos y tablas maestras con llaves primarias (`tb_clientes`, `tb_empleados`, `tb_productos`).
- **DML (Data Manipulation Language):** Inserción masiva de datos (20 registros reales por tabla) preparados para pruebas de estrés y filtrado.

## 📊 Consultas y Filtros Desarrollados
El script principal incluye sentencias de consulta (`SELECT`) aplicando las siguientes reglas de negocio:
- Operadores lógicos y relacionales (`AND`, `OR`, `<`, `>`, `<=`).
- Exclusión de rangos numéricos (`NOT BETWEEN`).
- Concatenación de campos de texto para interfaces de usuario (`CONCAT`).
- Búsqueda por patrones y comodines con `LIKE` (búsqueda por iniciales, terminaciones y coincidencias internas).
- Ordenamiento de resultados (`ORDER BY ASC / DESC`).
