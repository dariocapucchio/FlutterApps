# MisViandas - Coding Guidelines

## Objetivo

Este documento define las reglas de desarrollo del proyecto MisViandas.

Todo el código generado por desarrolladores o asistentes IA (Codex, ChatGPT, Cursor, Copilot, etc.) debe respetar estas convenciones.

La prioridad es escribir código limpio, mantenible y consistente.

---

# Filosofía del proyecto

## Simplicidad primero

Siempre elegir la solución más simple que resuelva el problema.

Evitar sobreingeniería.

El MVP es más importante que una arquitectura perfecta.

---

## Código legible

El código debe ser fácil de leer.

Debe priorizarse claridad sobre inteligencia.

Si una solución es más corta pero más difícil de entender, no utilizarla.

---

## Una responsabilidad por clase

Cada clase debe tener una única responsabilidad.

Ejemplos:

* ProfileService → administra perfiles.
* RecipeService → administra recetas.
* ShoppingListService → genera listas de compras.

Nunca mezclar responsabilidades.

---

# Arquitectura

Se utiliza arquitectura Feature First.

```text
lib/

core/

features/

shared/
```

Cada feature contiene:

* models
* services
* screens
* widgets

---

# Organización de carpetas

Ejemplo:

```text
features/

profiles/

    models/

    services/

    screens/

    widgets/
```

No crear carpetas innecesarias.

---

# Convención de nombres

## Archivos

snake_case

Ejemplos:

profile_service.dart

weekly_plan_screen.dart

shopping_list_widget.dart

---

## Clases

PascalCase

Ejemplos:

ProfileService

Recipe

WeeklyPlan

---

## Variables

camelCase

Ejemplo:

activeProfile

shoppingList

recipeName

---

## Constantes

camelCase precedidas por "k".

Ejemplo:

kPrimaryColor

kAnimationDuration

---

# Widgets

Los Widgets deben ser pequeños.

Si un Widget supera aproximadamente las 150 líneas considerar dividirlo.

Cada Widget debe tener una única responsabilidad.

---

# Pantallas

Todas las pantallas terminan con:

Screen

Ejemplos:

HomeScreen

ProfileScreen

RecipeDetailScreen

ShoppingListScreen

---

# Servicios

Todos los servicios terminan con:

Service

Ejemplos:

ProfileService

RecipeService

WeeklyPlanService

ShoppingListService

Los Services son los únicos que pueden acceder a Supabase.

Los Widgets nunca deben consultar directamente la base de datos.

---

# Modelos

Cada tabla posee un modelo Flutter.

Ejemplos:

Profile

Recipe

Ingredient

Preference

WeeklyPlan

WeeklyPlanItem

Los modelos deben incluir:

* constructor
* fromJson()
* toJson()
* copyWith()
* igualdad (==) cuando corresponda

---

# Estado

Para el MVP utilizar Riverpod.

No utilizar variables globales.

Todo estado compartido debe estar centralizado en Providers.

---

# Navegación

Toda la navegación debe centralizarse.

Evitar Navigator.push() distribuido por toda la aplicación.

La navegación deberá estar definida en un único Router.

---

# Supabase

Nunca escribir consultas SQL directamente dentro de Widgets.

Siempre utilizar Services.

Incorrecto:

Widget

↓

Supabase

Correcto:

Widget

↓

Service

↓

Supabase

---

# Manejo de errores

Todo acceso a Supabase debe estar protegido mediante manejo de excepciones.

Nunca ignorar errores.

Siempre devolver un mensaje entendible para el usuario.

Registrar errores útiles para depuración.

---

# Asincronía

Toda operación remota debe utilizar:

async / await

Evitar callbacks anidados.

---

# Const

Utilizar const siempre que sea posible.

Esto mejora el rendimiento de Flutter.

---

# Comentarios

No comentar código obvio.

Comentar únicamente:

* decisiones complejas
* reglas de negocio
* algoritmos importantes

El código debe ser autoexplicativo.

---

# Diseño de UI

Mantener una interfaz:

* limpia
* minimalista
* moderna

Evitar pantallas sobrecargadas.

Priorizar:

* pocos botones
* navegación simple
* tipografía clara
* mucho espacio en blanco

---

# Colores

Mantener una paleta reducida.

No utilizar colores arbitrarios.

Todos los colores deben provenir del Theme.

---

# Strings

Evitar textos escritos directamente dentro de Widgets.

Centralizar textos reutilizables cuando sea posible.

Preparar la aplicación para futura internacionalización.

---

# Reutilización

Si un Widget se repite más de dos veces, convertirlo en un Widget reutilizable.

No duplicar código.

---

# Algoritmos

Toda lógica compleja debe vivir en Services.

Nunca dentro de los Widgets.

Ejemplos:

* generar plan semanal
* filtrar recetas
* generar lista de compras

---

# Testing

En futuras etapas:

* Unit Tests para Services.
* Widget Tests para componentes importantes.
* Integration Tests para flujos principales.

---

# Pull Requests

Antes de incorporar código verificar:

* Compila correctamente.
* No rompe funcionalidades existentes.
* Respeta estas guías.
* Mantiene consistencia con el resto del proyecto.

---

# Reglas para Asistentes IA

Antes de escribir código:

1. Leer PROJECT_CONTEXT.md.
2. Leer APP_FLOW.md.
3. Leer DATABASE.md.
4. Leer API.md.
5. Leer TECH_DECISIONS.md.
6. Respetar este documento.

Nunca introducir nuevas arquitecturas sin justificación.

No cambiar tecnologías seleccionadas.

No mover lógica de negocio a Widgets.

No acceder directamente a Supabase desde la UI.

No duplicar código existente.

Siempre priorizar simplicidad.

---

# Objetivo del Proyecto

El objetivo no es construir la aplicación más compleja.

El objetivo es construir una aplicación que cualquier desarrollador pueda entender, mantener y ampliar fácilmente durante los próximos años.
