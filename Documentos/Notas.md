# Arquitectura general de MisViandas

Para empezar, necesitamos algo simple, escalable y rápido de construir.

👉 Arquitectura de 3 capas:

📱 App (Frontend)
↓
🌐 API (Backend)
↓
🗄 Base de datos


# Frontend (la app)

Es lo que ve el usuario.
Responsabilidades:
mostrar pantallas
enviar preferencias
mostrar plan semanal
mostrar recetas
mostrar lista de compras
compartir por WhatsApp
Tecnologías posibles:
React Native (recomendado)
Flutter

# Backend (el “cerebro”)

Acá pasa toda la lógica importante.

## Responsabilidades:
guardar usuarios
guardar preferencias
guardar recetas
generar plan semanal
generar lista de compras

## Endpoints principales (API)
Ejemplo real:
POST /user/preferences
GET /recipes
POST /generate-week
GET /shopping-list

---

# Base de datos

Estructura de base de datos – MisViandas (MVP)

## 1.Profiles (Perfiles)

Representa cada persona (usuario, hijos, etc.)
profiles
- id (PK)
- name
👉 Ejemplo:
Darío
Hijo
Pareja

## 2.Preferences (Preferencias)
Qué le gusta y qué no a cada perfil.
preferences
- id (PK)
- profile_id (FK)
- ingredient_id (FK)
- type ("like" | "dislike")
👉 Ejemplo:
profile
ingrediente
tipo
Hijo
pescado
dislike
Darío
pollo
like


## 3.Ingredients (Ingredientes)
Lista de todos los ingredientes posibles.
ingredients
- id (PK)
- name
- category (opcional: carnicería, verdulería, etc.)

## 4.Recipes (Recetas)
Las recetas disponibles en la app.
recipes
- id (PK)
- name
- time_minutes
- servings

## 5.Recipe_Ingredients
Relación entre recetas e ingredientes.
recipe_ingredients
- id (PK)
- recipe_id (FK)
- ingredient_id (FK)
- quantity
👉 Esto permite saber:
“esta receta lleva pollo + arroz + tomate”

## 6.Weekly_Plans (Planes semanales)
Un plan generado para un perfil.
weekly_plans
- id (PK)
- profile_id (FK)
- created_at

## 7.Weekly_Plan_Items
Las recetas de cada día.
weekly_plan_items
- id (PK)
- plan_id (FK)
- day (lunes, martes…)
- recipe_id (FK)

# Relación entre tablas (simplificado)

Profile
 ↓
Preferences → Ingredients

Recipes → Recipe_Ingredients → Ingredients

Profile → Weekly_Plans → Weekly_Plan_Items → Recipes

# Cómo se genera la lista de compras

La app hace:
1. toma recetas del plan semanal
2. busca sus ingredientes
3. agrupa y suma cantidades
4. agrupa por categoría (verdulería, carnicería)

# Qué incluye este diseño
✔ perfiles múltiples
 ✔ preferencias por persona
 ✔ recetas reutilizables
 ✔ generación de planes
 ✔ lista de compras automática

# Qué NO incluye (por ahora)
Para mantenerlo simple (MVP):
❌ usuarios/login
 ❌ comentarios
 ❌ puntajes
 ❌ recetas de usuarios
👉 Todo eso va en fase 2.

# Decisión importante que tomamos
En vez de:
👤 Usuario → Preferencias
Ahora tenemos:
👤 Perfil → Preferencias
👉 Esto hace que la app sea mucho más flexible desde el inicio.

# Script SQL completo (MVP)
Vamos a crear:
✔ tablas
 ✔ relaciones
 ✔ listo para usar en una app


-- =====================
-- PROFILES
-- =====================
CREATE TABLE profiles (
   id SERIAL PRIMARY KEY,
   name TEXT NOT NULL
);

-- =====================
-- INGREDIENTS
-- =====================
CREATE TABLE ingredients (
   id SERIAL PRIMARY KEY,
   name TEXT NOT NULL,
   category TEXT
);

-- =====================
-- PREFERENCES
-- =====================
CREATE TABLE preferences (
   id SERIAL PRIMARY KEY,
   profile_id INTEGER REFERENCES profiles(id),
   ingredient_id INTEGER REFERENCES ingredients(id),
   type TEXT CHECK (type IN ('like', 'dislike'))
);

-- =====================
-- RECIPES
-- =====================
CREATE TABLE recipes (
   id SERIAL PRIMARY KEY,
   name TEXT NOT NULL,
   time_minutes INTEGER,
   servings INTEGER
);

-- =====================
-- RECIPE INGREDIENTS
-- =====================
CREATE TABLE recipe_ingredients (
   id SERIAL PRIMARY KEY,
   recipe_id INTEGER REFERENCES recipes(id),
   ingredient_id INTEGER REFERENCES ingredients(id),
   quantity TEXT
);

-- =====================
-- WEEKLY PLANS
-- =====================
CREATE TABLE weekly_plans (
   id SERIAL PRIMARY KEY,
   profile_id INTEGER REFERENCES profiles(id),
   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- =====================
-- WEEKLY PLAN ITEMS
-- =====================
CREATE TABLE weekly_plan_items (
   id SERIAL PRIMARY KEY,
   plan_id INTEGER REFERENCES weekly_plans(id),
   day TEXT,
   recipe_id INTEGER REFERENCES recipes(id)
);



