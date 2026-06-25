# MisViandas - Technical Decisions

## Propósito

Este documento registra las decisiones técnicas y de arquitectura del proyecto.

Su objetivo es evitar rediscutir decisiones ya tomadas y documentar el razonamiento detrás de cada elección.

---

# Decisiones Iniciales

## DEC-001: Plataforma Mobile

Fecha: Junio 2026

Decisión:

Utilizar Flutter para el desarrollo de la aplicación móvil.

Motivos:

* Un único código para Android e iOS.
* Excelente rendimiento.
* Curva de aprendizaje razonable.
* Amplia comunidad.
* Integración sencilla con Supabase.

Estado:

✅ Aprobada

---

## DEC-002: Backend

Fecha: Junio 2026

Decisión:

Utilizar Supabase como backend principal.

Motivos:

* PostgreSQL administrado.
* API automática.
* Autenticación integrada para futuras versiones.
* Menor complejidad para el MVP.
* Escalable para futuras etapas.

Estado:

✅ Aprobada

---

## DEC-003: Base de Datos

Fecha: Junio 2026

Decisión:

Utilizar PostgreSQL.

Motivos:

* Base relacional robusta.
* Excelente soporte en Supabase.
* Ideal para relaciones entre recetas, ingredientes y perfiles.

Estado:

✅ Aprobada

---

## DEC-004: Estrategia de MVP

Fecha: Junio 2026

Decisión:

Priorizar simplicidad sobre funcionalidades avanzadas.

Motivos:

* Validar rápidamente la idea.
* Reducir tiempo de desarrollo.
* Obtener feedback antes de agregar complejidad.

Estado:

✅ Aprobada

---

## DEC-005: Sistema de Perfiles

Fecha: Junio 2026

Decisión:

Permitir múltiples perfiles dentro de la aplicación.

Ejemplos:

* Padre
* Madre
* Hijo
* Hija

Motivos:

* Orientación familiar.
* Diferentes gustos alimentarios.
* Diferentes planes semanales.

Estado:

✅ Aprobada

---

## DEC-006: Preferencias por Perfil

Fecha: Junio 2026

Decisión:

Las preferencias alimentarias pertenecen al perfil y no al usuario.

Motivos:

* Cada integrante tiene gustos distintos.
* Mayor flexibilidad.
* Mejor experiencia para familias.

Estado:

✅ Aprobada

---

## DEC-007: Generación de Planes

Fecha: Junio 2026

Decisión:

Cada perfil posee su propio plan semanal.

Motivos:

* Simplicidad de implementación.
* Menor complejidad algorítmica.
* Escalable para futuras mejoras.

Estado:

✅ Aprobada

---

## DEC-008: Compartir Lista de Compras

Fecha: Junio 2026

Decisión:

Permitir compartir listas mediante WhatsApp.

Motivos:

* Uso cotidiano.
* Facilita compras familiares.
* Implementación sencilla.

Estado:

✅ Aprobada

---

## DEC-009: Login de Usuarios

Fecha: Junio 2026

Decisión:

No implementar login en la primera versión.

Motivos:

* Reducir complejidad.
* Acelerar desarrollo.
* Validar funcionalidades principales primero.

Estado:

✅ Aprobada

---

# Funcionalidades Postergadas

Estas funcionalidades fueron identificadas pero no forman parte del MVP.

## Comunidad

* Comentarios
* Valoraciones
* Ranking de recetas

Estado:

⏳ Fase 2

---

## Recetas de Usuarios

* Crear recetas
* Editar recetas
* Compartir recetas

Estado:

⏳ Fase 2

---

## Planes Compartidos

Inspirado en playlists.

Ejemplos:

* Plan Fitness
* Plan Económico
* Plan Oficina

Estado:

⏳ Fase 3

---

## Recomendaciones Inteligentes

Aprendizaje basado en:

* Recetas utilizadas
* Favoritos
* Historial

Estado:

⏳ Futuro

---

# Principios de Desarrollo

Antes de implementar una funcionalidad nueva verificar:

1. ¿Resuelve un problema real del usuario?
2. ¿Aporta valor al MVP?
3. ¿Aumenta significativamente la complejidad?
4. ¿Puede postergarse para una fase posterior?

Prioridad:

Simplicidad > Complejidad

Validación > Optimización

Producto usable > Producto perfecto
