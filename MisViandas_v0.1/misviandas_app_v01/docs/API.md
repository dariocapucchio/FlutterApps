# MisViandas - API Documentation

## Resumen

Este documento define cómo la aplicación Flutter interactúa con la base de datos (Supabase/PostgreSQL) y qué operaciones se realizan desde el backend.

También aclara qué lógica pertenece a la base de datos y qué lógica vive en la app (Flutter).

---

# Arquitectura de comunicación

```text id="api_arch_1"
Flutter App
    ↓
Supabase API
    ↓
PostgreSQL Database
```

---

# Principio clave

## 🔴 Todo lo que sea datos estructurados vive en la base de datos

Incluye:

* perfiles
* preferencias
* recetas
* ingredientes
* planes semanales

---

## 🟢 Todo lo que sea lógica de UI o interacción vive en Flutter

Incluye:

* selección de perfil
* navegación entre pantallas
* render de recetas
* botones de UI
* compartir por WhatsApp

---

## 🟡 Todo lo que sea lógica de negocio simple puede vivir en ambos

Ejemplo:

* filtrar recetas por ingredientes
* agrupar lista de compras
* ordenar recetas por tiempo

---

# Endpoints principales (Supabase)

Supabase expone automáticamente tablas como API REST.

---

## 1. Profiles

### Obtener perfiles

```http id="api_p1"
GET /profiles
```

### Crear perfil

```http id="api_p2"
POST /profiles
```

### Relación con DB

Tabla: `profiles`

---

## 2. Preferences

### Obtener preferencias de un perfil

```http id="api_p3"
GET /preferences?profile_id=eq.{id}
```

### Crear preferencia

```http id="api_p4"
POST /preferences
```

### Relación con DB

Tabla: `preferences`

---

## 3. Ingredients

### Obtener ingredientes

```http id="api_p5"
GET /ingredients
```

### Relación con DB

Tabla: `ingredients`

---

## 4. Recipes

### Obtener recetas

```http id="api_p6"
GET /recipes
```

### Obtener receta específica

```http id="api_p7"
GET /recipes?id=eq.{id}
```

### Relación con DB

Tabla: `recipes`

---

## 5. Recipe Ingredients

### Obtener ingredientes de receta

```http id="api_p8"
GET /recipe_ingredients?recipe_id=eq.{id}
```

### Relación con DB

Tabla: `recipe_ingredients`

---

## 6. Weekly Plans

### Crear plan semanal

```http id="api_p9"
POST /weekly_plans
```

### Obtener planes de un perfil

```http id="api_p10"
GET /weekly_plans?profile_id=eq.{id}
```

### Relación con DB

Tabla: `weekly_plans`

---

## 7. Weekly Plan Items

### Obtener items del plan

```http id="api_p11"
GET /weekly_plan_items?plan_id=eq.{id}
```

### Crear items del plan

```http id="api_p12"
POST /weekly_plan_items
```

### Relación con DB

Tabla: `weekly_plan_items`

---

# Lógica de negocio (NO en base de datos)

Estas operaciones NO existen como endpoints directos en Supabase y se implementan en Flutter o en funciones futuras.

---

## 1. Generación de plan semanal

### Lógica:

1. Obtener perfil
2. Obtener preferencias
3. Obtener recetas
4. Filtrar recetas con dislikes
5. Priorizar recetas con likes
6. Seleccionar 5 recetas (lunes a viernes)
7. Guardar en `weekly_plans` + `weekly_plan_items`

### Implementación:

* Flutter (MVP)
* Futuro: Supabase Edge Function

---

## 2. Generación de lista de compras

### Lógica:

1. Obtener `weekly_plan_items`
2. Obtener recetas
3. Obtener ingredientes de cada receta
4. Agrupar ingredientes iguales
5. Agrupar por categoría

### Implementación:

* Flutter (MVP)

---

## 3. Filtrado de recetas por preferencias

### Lógica:

* Excluir recetas que contengan ingredientes en `dislike`
* Priorizar recetas con ingredientes en `like`

### Implementación:

* Flutter (MVP)

---

## 4. Compartir por WhatsApp

### Lógica:

* Convertir lista de compras en texto
* Abrir intent de WhatsApp

### Implementación:

* Flutter (solo UI)

---

# Qué vive en cada capa

## 🗄 Base de datos (Supabase)

* almacenamiento de datos
* relaciones entre entidades
* queries simples

---

## 📱 Flutter App

* generación de planes
* filtrado de recetas
* armado de lista de compras
* UI / UX
* navegación
* compartir contenido

---

## ☁️ Backend futuro (opcional)

* generación de planes más inteligente
* recomendaciones automáticas
* scoring de recetas
* algoritmos avanzados

---

# Flujo completo de la app

```text id="flow_1"
Flutter
  ↓ obtiene perfiles
Supabase
  ↓ devuelve datos
Flutter
  ↓ filtra recetas
Flutter
  ↓ genera plan semanal
Supabase
  ↓ guarda plan
Flutter
  ↓ genera lista de compras
Flutter
  ↓ comparte por WhatsApp
```

---

# Reglas del sistema

## Regla 1

No duplicar lógica en backend y Flutter.

---

## Regla 2

MVP = lógica simple en Flutter.

---

## Regla 3

Supabase solo almacena datos, no decisiones complejas.

---

## Regla 4

Todo algoritmo complejo se puede migrar a backend en fase 2.

---

# Estado del sistema

Versión:

* MVP v1.0

Arquitectura:

* Flutter + Supabase

Complejidad:

* Baja (intencional para validación rápida)
