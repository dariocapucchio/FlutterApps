# MisViandas - Product Requirements Document (PRD)

## 1. Visión del producto

MisViandas es una aplicación móvil que ayuda a las personas a organizar y preparar viandas semanales de forma rápida y sencilla.

La app genera planes de comidas (meal prep) para la semana, propone recetas rápidas y crea listas de compras automáticamente, permitiendo ahorrar tiempo al planificar la comida para el trabajo o la escuela.

### Objetivo principal

Resolver el problema:

> "No sé qué cocinar para llevar durante la semana."

---

# 2. Problema que resuelve

Muchas personas necesitan llevar comida preparada al trabajo o al colegio, pero enfrentan varios problemas:

- No saben qué cocinar cada día.
- Planificar comidas lleva tiempo.
- Buscar recetas es tedioso.
- No todos los ingredientes gustan a todos.
- Hacer la lista de compras es una tarea adicional.

MisViandas simplifica todo ese proceso.

---

# 3. Usuarios objetivo

La app está pensada para personas que preparan comida para llevar.

## Trabajadores

- Llevan comida al trabajo.
- Quieren organizar la semana.
- Buscan recetas rápidas.

## Padres

- Preparan viandas para chicos.
- Necesitan adaptar comidas según gustos de cada integrante.

## Personas que hacen Meal Prep

- Cocinan varias comidas para toda la semana.
- Buscan optimizar tiempo y compras.

---

# 4. Propuesta de valor

MisViandas permite:

- Organizar viandas en pocos segundos.
- Encontrar recetas rápidas.
- Evitar ingredientes que no gustan.
- Generar listas de compras automáticas.
- Compartir listas de compras fácilmente.

### Idea central del producto

> "Planificá tus viandas de la semana en segundos."

---

# 5. Funcionalidades del MVP

## 5.1 Perfiles múltiples

Un usuario puede crear varios perfiles.

Ejemplos:

- Darío
- Hijo
- Hija
- Pareja

Cada perfil tiene:

- Preferencias de alimentos propias.
- Restricciones propias.
- Plan semanal independiente.

---

## 5.2 Preferencias de alimentos

Cada perfil puede indicar:

### Le gusta

- Pollo
- Carne vacuna
- Arroz
- Pasta
- etc.

### No le gusta

- Pescado
- Brócoli
- Cebolla
- etc.

La app filtra recetas automáticamente según estas preferencias.

---

## 5.3 Generar plan semanal de viandas

La app genera automáticamente una propuesta semanal.

Ejemplo:

| Día | Comida |
|------|---------|
| Lunes | Pollo con arroz |
| Martes | Wrap de pollo |
| Miércoles | Pasta con verduras |
| Jueves | Milanesa con ensalada |
| Viernes | Arroz salteado con huevo |

---

## 5.4 Ver recetas

Cada receta incluye:

- Nombre
- Ingredientes
- Preparación paso a paso
- Tiempo estimado
- Porciones

Las recetas estarán orientadas a:

- Viandas
- Meal prep
- Preparaciones rápidas

---

## 5.5 Lista de compras automática

La app genera una lista consolidada a partir del plan semanal.

Ejemplo:

### Carnicería

- Pollo
- Carne vacuna

### Verdulería

- Lechuga
- Tomate
- Zanahoria

### Almacén

- Arroz
- Tortillas

---

## 5.6 Compartir lista de compras

Opciones:

- WhatsApp
- Copiar texto
- Compartir con otras aplicaciones

Ejemplo:

```text
Lista de compras de la semana

- pollo
- arroz
- huevos
- tomate
- lechuga

Generado con MisViandas
```

---

# 6. Flujo principal del usuario

```text
Abrir app
↓
Seleccionar perfil
↓
Generar plan semanal
↓
Revisar recetas
↓
Generar lista de compras
↓
Compartir lista
```

Este flujo se repetirá semanalmente.

---

# 7. Pantallas principales

## 7.1 Selección de perfil

Permite elegir:

- Darío
- Hijo
- Pareja

Y crear nuevos perfiles.

---

## 7.2 Inicio

Acciones principales:

- Generar plan semanal
- Ver recetas
- Ver lista de compras

---

## 7.3 Preferencias

Configuración de:

- Alimentos que gustan
- Alimentos que no gustan

---

## 7.4 Plan semanal

Visualización de:

- Lunes
- Martes
- Miércoles
- Jueves
- Viernes

Permite cambiar recetas sugeridas.

---

## 7.5 Receta

Detalle completo de la receta seleccionada.

Incluye:

- Ingredientes
- Pasos
- Tiempo de preparación
- Porciones

---

## 7.6 Lista de compras

Lista agrupada por categorías.

Permite compartir.

---

# 8. Arquitectura funcional del MVP

## Base de datos

Entidades principales:

- Profiles
- Ingredients
- Preferences
- Recipes
- RecipeIngredients
- WeeklyPlans
- WeeklyPlanItems

## Backend

Responsabilidades:

- Filtrar recetas.
- Generar planes semanales.
- Generar listas de compras.

## Frontend

Flutter.

Responsabilidades:

- Mostrar pantallas.
- Administrar perfiles.
- Visualizar recetas.
- Compartir listas.

---

# 9. Funcionalidades futuras (Fase 2)

## Recetas de usuarios

Los usuarios podrán subir recetas propias.

---

## Sistema de puntuación

Valoración mediante estrellas.

Ejemplo:

⭐⭐⭐⭐⭐ 4.8

---

## Comentarios

Los usuarios podrán comentar recetas.

---

## Favoritos

Guardar recetas favoritas.

---

## Búsquedas avanzadas

Filtros:

- Más valoradas
- Más rápidas
- Más utilizadas
- Menor tiempo de preparación

---

## Compartir planes semanales

Inspirado en playlists.

Ejemplo:

- Plan Fitness
- Plan Económico
- Plan Oficina

Otros usuarios podrán guardarlos.

---

# 10. Mejoras futuras

## Plan económico

Generar planes reutilizando ingredientes para reducir costos.

Ejemplo:

Comprar pollo una vez y utilizarlo en varias recetas.

---

## Tiempo máximo de preparación

Filtros:

- Hasta 10 minutos
- Hasta 20 minutos
- Hasta 30 minutos

---

## Aprendizaje de preferencias

La aplicación aprenderá de:

- Recetas utilizadas.
- Recetas descartadas.
- Favoritos.

---

# 11. Tecnologías seleccionadas

## Frontend

- Flutter

## Base de datos

- PostgreSQL

## Backend

- Supabase

---

# 12. Estado actual del proyecto

## Completado

- Idea validada.
- Nombre definido.
- MVP definido.
- Arquitectura inicial definida.
- Modelo de datos definido.
- Mockups iniciales definidos.

## Próximos pasos

1. Implementar base de datos.
2. Crear modelo de datos en Flutter.
3. Implementar gestión de perfiles.
4. Implementar preferencias.
5. Implementar generador de planes semanales.
6. Implementar lista de compras.