# MisViandas - Flutter Application Flow

# Objetivo

Este documento describe la arquitectura funcional de la aplicación Flutter.

Debe servir como guía para cualquier desarrollador o asistente IA (Codex, ChatGPT, Cursor, etc.) antes de implementar nuevas funcionalidades.

---

# Arquitectura General

La aplicación se organiza por funcionalidades (Feature First).

Cada funcionalidad contiene:

* modelos
* servicios
* pantallas
* widgets

Las funcionalidades deben ser independientes entre sí.

---

# Estructura propuesta

```text
lib/

core/
    constants/
    router/
    theme/
    widgets/
    utils/

features/

    profiles/
    recipes/
    weekly_plan/
    shopping_list/

shared/

main.dart
```

---

# Navegación principal

```text
Splash

↓

Profile Selection

↓

Home

↓

┌──────────────┐
│ Plan Semanal │
├──────────────┤
│ Recetas      │
├──────────────┤
│ Compras      │
├──────────────┤
│ Perfil       │
└──────────────┘
```

La navegación principal debe mantenerse simple.

---

# Flujo de Inicio

## Splash

Responsabilidades:

* inicializar Supabase
* cargar configuración
* verificar datos locales

Luego navegar a:

Profile Selection

---

# Pantalla: Profile Selection

Responsabilidades:

* listar perfiles
* crear perfil
* editar perfil
* eliminar perfil

Cuando el usuario selecciona un perfil:

guardar perfil activo

navegar a Home

---

# Pantalla: Home

La pantalla Home funciona como menú principal.

Acciones:

* Generar plan semanal
* Ver recetas
* Lista de compras
* Configuración

Debe mostrar siempre el perfil actualmente seleccionado.

---

# Pantalla: Preferencias

Responsabilidades:

* seleccionar alimentos favoritos
* seleccionar alimentos no deseados

Guardar cambios automáticamente.

---

# Pantalla: Generar Plan

Proceso:

1. Obtener perfil activo.
2. Obtener preferencias.
3. Obtener recetas.
4. Filtrar recetas.
5. Generar propuesta semanal.
6. Guardar plan.

Luego navegar a:

Plan Semanal

---

# Pantalla: Plan Semanal

Mostrar:

Lunes

Martes

Miércoles

Jueves

Viernes

Cada receta debe permitir:

* abrir detalle
* reemplazar receta

---

# Pantalla: Detalle de Receta

Mostrar:

* ingredientes
* preparación
* tiempo
* porciones

Acciones:

* volver
* reemplazar receta (futuro)

---

# Pantalla: Lista de Compras

Proceso:

leer plan semanal

↓

obtener ingredientes

↓

agrupar ingredientes

↓

mostrar lista

Acciones:

* marcar comprado (opcional futuro)
* compartir por WhatsApp

---

# Gestión del Estado

Para el MVP utilizar una solución simple.

Se recomienda:

Riverpod

Estados principales:

* Perfil activo
* Preferencias
* Plan semanal
* Lista de compras

Evitar estados globales innecesarios.

---

# Servicios

Cada feature tendrá su propio servicio.

Ejemplo:

ProfileService

Responsable de:

* obtener perfiles
* crear perfiles
* editar perfiles

---

RecipeService

Responsable de:

* obtener recetas
* obtener ingredientes

---

WeeklyPlanService

Responsable de:

* generar plan
* guardar plan
* recuperar plan

---

ShoppingListService

Responsable de:

* generar lista
* compartir lista

---

# Modelos

Cada tabla de Supabase tendrá un modelo Flutter.

Ejemplo:

Profile

Recipe

Ingredient

Preference

WeeklyPlan

WeeklyPlanItem

---

# Flujo de Datos

```text
Flutter UI

↓

Service

↓

Supabase

↓

PostgreSQL

↓

Service

↓

Flutter UI
```

La UI nunca debe acceder directamente a Supabase.

Siempre debe utilizar Services.

---

# Principios de Desarrollo

* Una pantalla = una responsabilidad.
* Una feature = una carpeta.
* La lógica de negocio nunca debe estar dentro de los Widgets.
* Los Widgets deben ser lo más simples posible.
* La navegación debe estar centralizada.
* Todos los modelos deben mapearse desde la base de datos.

---

# Convenciones

Pantallas:

ProfileSelectionScreen

HomeScreen

WeeklyPlanScreen

RecipeDetailScreen

ShoppingListScreen

Servicios:

ProfileService

RecipeService

WeeklyPlanService

ShoppingListService

Modelos:

Profile

Recipe

Ingredient

Preference

WeeklyPlan

WeeklyPlanItem

---

# Objetivo del MVP

La aplicación debe ser simple.

Antes de agregar nuevas funcionalidades verificar:

* ¿Aporta valor al usuario?
* ¿Complica la arquitectura?
* ¿Puede esperar a una fase futura?

Siempre priorizar simplicidad y mantenibilidad.
