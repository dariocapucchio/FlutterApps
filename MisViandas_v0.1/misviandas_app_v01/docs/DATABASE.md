# MisViandas - Database Documentation

## Resumen

La base de datos de MisViandas está diseñada para soportar:

* Múltiples perfiles
* Preferencias alimentarias por perfil
* Recetas
* Ingredientes
* Planes semanales
* Generación de listas de compras

Base de datos:

PostgreSQL (Supabase)

---

# Diagrama Conceptual

```text
Profiles
    │
    ├── Preferences
    │       │
    │       └── Ingredients
    │
    └── Weekly Plans
            │
            └── Weekly Plan Items
                        │
                        └── Recipes
                                    │
                                    └── Recipe Ingredients
                                                │
                                                └── Ingredients
```

---

# Tabla: profiles

Representa una persona para la cual se planifican viandas.

Ejemplos:

* Darío
* Hijo
* Hija
* Pareja

## Estructura

| Campo | Tipo   | Descripción         |
| ----- | ------ | ------------------- |
| id    | SERIAL | Identificador único |
| name  | TEXT   | Nombre del perfil   |

## SQL

```sql
CREATE TABLE profiles (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);
```

---

# Tabla: ingredients

Contiene todos los ingredientes disponibles.

## Ejemplos

* pollo
* arroz
* tomate
* pescado

## Estructura

| Campo    | Tipo   | Descripción         |
| -------- | ------ | ------------------- |
| id       | SERIAL | Identificador       |
| name     | TEXT   | Nombre ingrediente  |
| category | TEXT   | Categoría de compra |

## Categorías sugeridas

* Carnicería
* Verdulería
* Almacén
* Lácteos
* Congelados

## SQL

```sql
CREATE TABLE ingredients (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    category TEXT
);
```

---

# Tabla: preferences

Define gustos y restricciones por perfil.

## Tipos

* like
* dislike

## Ejemplo

Darío:

* like → pollo
* dislike → pescado

## Estructura

| Campo         | Tipo    |
| ------------- | ------- |
| id            | SERIAL  |
| profile_id    | INTEGER |
| ingredient_id | INTEGER |
| type          | TEXT    |

## SQL

```sql
CREATE TABLE preferences (
    id SERIAL PRIMARY KEY,
    profile_id INTEGER REFERENCES profiles(id),
    ingredient_id INTEGER REFERENCES ingredients(id),
    type TEXT CHECK (type IN ('like', 'dislike'))
);
```

---

# Tabla: recipes

Almacena recetas.

## Estructura

| Campo        | Tipo    |
| ------------ | ------- |
| id           | SERIAL  |
| name         | TEXT    |
| time_minutes | INTEGER |
| servings     | INTEGER |

## SQL

```sql
CREATE TABLE recipes (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    time_minutes INTEGER,
    servings INTEGER
);
```

---

# Tabla: recipe_ingredients

Relaciona recetas con ingredientes.

Permite que una receta tenga múltiples ingredientes.

## Estructura

| Campo         | Tipo    |
| ------------- | ------- |
| id            | SERIAL  |
| recipe_id     | INTEGER |
| ingredient_id | INTEGER |
| quantity      | TEXT    |

## SQL

```sql
CREATE TABLE recipe_ingredients (
    id SERIAL PRIMARY KEY,
    recipe_id INTEGER REFERENCES recipes(id),
    ingredient_id INTEGER REFERENCES ingredients(id),
    quantity TEXT
);
```

---

# Tabla: weekly_plans

Representa un plan semanal generado.

## Estructura

| Campo      | Tipo      |
| ---------- | --------- |
| id         | SERIAL    |
| profile_id | INTEGER   |
| created_at | TIMESTAMP |

## SQL

```sql
CREATE TABLE weekly_plans (
    id SERIAL PRIMARY KEY,
    profile_id INTEGER REFERENCES profiles(id),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

---

# Tabla: weekly_plan_items

Almacena las recetas asignadas a cada día.

## Estructura

| Campo     | Tipo    |
| --------- | ------- |
| id        | SERIAL  |
| plan_id   | INTEGER |
| day       | TEXT    |
| recipe_id | INTEGER |

## SQL

```sql
CREATE TABLE weekly_plan_items (
    id SERIAL PRIMARY KEY,
    plan_id INTEGER REFERENCES weekly_plans(id),
    day TEXT,
    recipe_id INTEGER REFERENCES recipes(id)
);
```

---

# Flujo de Generación de Plan Semanal

## Paso 1

Seleccionar perfil.

Ejemplo:

Darío

---

## Paso 2

Leer preferencias.

Likes:

* pollo
* arroz

Dislikes:

* pescado

---

## Paso 3

Filtrar recetas.

Eliminar recetas que contengan ingredientes marcados como dislike.

---

## Paso 4

Priorizar recetas que contengan ingredientes marcados como like.

---

## Paso 5

Seleccionar recetas para:

* lunes
* martes
* miércoles
* jueves
* viernes

---

# Generación de Lista de Compras

La lista de compras se genera a partir de las recetas seleccionadas.

## Proceso

1. Obtener recetas del plan semanal.
2. Obtener ingredientes de cada receta.
3. Agrupar ingredientes repetidos.
4. Agrupar por categoría.

Resultado:

```text
Carnicería
- pollo

Verdulería
- tomate
- zanahoria

Almacén
- arroz
```

---

# Datos Iniciales Recomendados

## Ingredientes

* pollo
* carne vacuna
* pescado
* arroz
* pasta
* tomate
* lechuga
* zanahoria
* cebolla
* huevo

---

## Recetas

* Pollo con arroz
* Wrap de pollo
* Pasta fría
* Milanesa con ensalada
* Arroz salteado
* Ensalada de pasta

---

# Futuras Extensiones

No forman parte del MVP.

## recipes_ratings

Valoraciones de recetas.

---

## recipes_comments

Comentarios de usuarios.

---

## favorite_recipes

Recetas favoritas.

---

## shared_plans

Planes compartidos entre usuarios.

---

# Convenciones

## Nombres de tablas

Plural:

* profiles
* ingredients
* recipes

## Claves primarias

Siempre:

```sql
id SERIAL PRIMARY KEY
```

## Claves foráneas

Siempre:

```sql
REFERENCES tabla(id)
```

## Fechas

Usar:

```sql
TIMESTAMP
```

## Estado del Modelo

Versión:

1.0 MVP

Estado:

Aprobado para implementación inicial.
