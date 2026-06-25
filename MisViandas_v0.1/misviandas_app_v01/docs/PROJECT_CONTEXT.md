# MisViandas - Project Context

## Resumen

MisViandas es una aplicación móvil desarrollada en Flutter para ayudar a las personas a organizar y preparar viandas semanales mediante recetas rápidas y generación automática de listas de compras.

El foco inicial es el meal prep para trabajadores, estudiantes y familias.

---

## Objetivo Principal

Resolver el problema:

"No sé qué cocinar para llevar durante la semana."

La aplicación debe reducir el tiempo de planificación y simplificar la preparación de viandas.

---

## Estado Actual

Fase: MVP

Tecnologías:

* Flutter (Frontend)
* Supabase (Backend y Base de Datos)
* PostgreSQL

---

## Funcionalidades MVP

### Perfiles

Un usuario puede crear múltiples perfiles.

Ejemplos:

* Darío
* Hijo
* Hija
* Pareja

Cada perfil posee:

* Preferencias de alimentos
* Restricciones de alimentos
* Plan semanal independiente

---

### Preferencias

Cada perfil puede indicar:

Likes:

* pollo
* carne
* arroz
* pasta

Dislikes:

* pescado
* brócoli
* cebolla

Las recetas deben filtrarse según estas preferencias.

---

### Plan Semanal

Generar automáticamente un plan de viandas para lunes a viernes.

El usuario podrá regenerar o reemplazar recetas individuales.

---

### Recetas

Cada receta contiene:

* nombre
* ingredientes
* pasos
* tiempo de preparación
* porciones

Las recetas deben ser rápidas y aptas para viandas.

---

### Lista de Compras

Generada automáticamente a partir del plan semanal.

Agrupada por categorías:

* Carnicería
* Verdulería
* Almacén

Debe poder compartirse por WhatsApp.

---

## Modelo de Datos Principal

Tablas:

* profiles
* ingredients
* preferences
* recipes
* recipe_ingredients
* weekly_plans
* weekly_plan_items

La documentación completa se encuentra en DATABASE.md.

---

## Principios del Producto

* Simplicidad primero
* MVP antes que funcionalidades avanzadas
* Optimizado para meal prep
* Pensado para familias
* Reducir tiempo de planificación
* Reducir esfuerzo de compra

---

## Funcionalidades Futuras

* Recetas creadas por usuarios
* Puntuación de recetas
* Comentarios
* Favoritos
* Planes compartidos tipo playlist
* Algoritmos de recomendación
* Planes económicos reutilizando ingredientes

---

## Instrucciones para Asistentes IA

Antes de generar código:

1. Leer PRD.md
2. Leer DATABASE.md
3. Respetar la arquitectura definida
4. Mantener compatibilidad con Flutter y Supabase
5. Priorizar soluciones simples para MVP

No introducir complejidad innecesaria.
