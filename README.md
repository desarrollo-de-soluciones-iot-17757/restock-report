# Restock Report

Repositorio oficial del informe académico del proyecto **Restock**, desarrollado por el equipo **UI-Topic** para el curso **Desarrollo de Soluciones IoT** de la Universidad Peruana de Ciencias Aplicadas.

Restock es una solución IoT orientada a la gestión inteligente de inventarios para restaurantes y negocios retail. La propuesta integra dispositivos de monitoreo, aplicaciones web/móviles y servicios backend para mejorar el control de stock, detectar discrepancias y apoyar la toma de decisiones operativas.

---

## Información del Proyecto

| Campo             | Descripción                              |
| ----------------- | ----------------------------------------- |
| Universidad       | Universidad Peruana de Ciencias Aplicadas |
| Carrera           | Ingeniería de Software                   |
| Curso             | Desarrollo de Soluciones IoT              |
| Código del curso | 1ASI0572                                  |
| NRC               | 17757                                     |
| Startup           | UI-Topic                                  |
| Producto          | Restock                                   |
| Ciclo académico  | 202610                                    |

---

## Propósito del Repositorio

Este repositorio contiene el **informe académico del proyecto Restock**.

El informe se gestiona como un documento versionado mediante archivos Markdown, imágenes, diagramas y evidencias del proyecto.

Aunque este repositorio está orientado a documentación, se trabaja con un flujo similar al desarrollo de software para mantener trazabilidad, colaboración ordenada y control de calidad en los cambios realizados.

---

## Estructura del Repositorio

```text
restock-report/
├── assets/
│   └── images/
├── 00-cover.md
├── 01-chap1-introduction.md
├── 02-chap2-requirements-elicitation-and-analysis.md
├── 03-chap3-requirements-specification.md
├── 04-chap4-solution-software-design.md
├── 05-chap5-solution-ui-ux-design.md
├── 06-chap6-product-implementation-validation-and-deployment.md
├── 07-conclusions.md
├── 08-bibliography.md
├── 09-annexes.md
└── README.md
```

---

## Secciones Principales

| Archivo                                                          | Contenido                                                                                               |
| ---------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------- |
| `00-cover.md`                                                  | Carátula, registro de versiones y metadatos generales del informe.                                     |
| `01-chap1-introduction.md`                                     | Perfil de la startup, perfil de la solución, proceso Lean UX y segmentos objetivo.                     |
| `02-chap2-requirements-elicitation-and-analysis.md`            | Análisis competitivo, entrevistas, needfinding, EventStorming y lenguaje ubicuo.                       |
| `03-chap3-requirements-specification.md`                       | User stories, impact mapping y product backlog.                                                         |
| `04-chap4-solution-software-design.md`                         | Diseño estratégico y táctico con DDD, bounded contexts y diagramas de arquitectura.                  |
| `05-chap5-solution-ui-ux-design.md`                            | Guías de estilo, arquitectura de información, diseño UI, prototipos y diseño del dispositivo IoT.   |
| `06-chap6-product-implementation-validation-and-deployment.md` | Gestión de configuración, implementación por sprint, evidencia de testing y evidencia de despliegue. |
| `07-conclusions.md`                                            | Conclusiones y recomendaciones del proyecto.                                                            |
| `08-bibliography.md`                                           | Referencias bibliográficas utilizadas en el informe.                                                   |
| `09-annexes.md`                                                | Anexos, evidencias complementarias y materiales de soporte.                                             |

---

## Flujo de Trabajo

El equipo utiliza un flujo de trabajo basado en ramas para desarrollar cada sección del informe de manera organizada e independiente.

### Ramas Principales

| Rama                       | Propósito                                                                                      |
| -------------------------- | ----------------------------------------------------------------------------------------------- |
| `main`                   | Contiene la versión estable del informe.                                                       |
| `develop`                | Rama de integración para cambios validados antes de pasar a una versión estable.              |
| `feature/<section-name>` | Ramas utilizadas para trabajar secciones específicas, mejoras o nuevas evidencias del informe. |

### Ejemplos de Ramas

```text
feature/chapter-1-base-version
feature/chapter-4-device-management
feature/update-event-storming
feature/testing-evidence
fix/report-formatting
```

---

## Convención de Commits

Este repositorio sigue la convención **Conventional Commits**.

Aunque el repositorio contiene principalmente documentación, los commits se redactan de acuerdo con la intención del cambio realizado. Por ello, no todos los commits deben usar `docs:`. Si el cambio agrega una nueva sección, corrige contenido, reorganiza estructura o ajusta formato, se utiliza el tipo de commit correspondiente.

### Tipos de Commit Recomendados

| Tipo          | Uso                                                                                 |
| ------------- | ----------------------------------------------------------------------------------- |
| `feat:`     | Agrega una nueva sección, diagrama, tabla, evidencia o artefacto del informe.      |
| `fix:`      | Corrige contenido, formato, redacción, numeración o rutas de imágenes.           |
| `refactor:` | Reorganiza la estructura del informe sin cambiar el significado del contenido.      |
| `style:`    | Mejora la presentación visual, espaciado, tamaño de imágenes o formato Markdown. |
| `chore:`    | Actualiza organización del repositorio, assets o archivos auxiliares.              |

### Ejemplos de Commits

```text
feat: add device management bounded context
fix: correct tracking database diagram description
style: adjust image sizes for UI mockups
refactor: reorganize sprint evidence tables
chore: add event storming images
```

---

## Lineamientos para Pull Requests

Antes de integrar una rama, cada integrante debe verificar que:

- La sección en Markdown se visualice correctamente.
- Las rutas de imágenes funcionen.
- Las tablas sean legibles.
- Los títulos respeten la numeración del informe.
- El cambio corresponda a la sección asignada.
- Los commits sigan la convención definida.
- La rama esté actualizada con los últimos cambios de `develop`.

---

## Lineamientos para Imágenes y Assets

Todas las imágenes utilizadas en el informe deben almacenarse dentro de:

```text
assets/images/
```

Se recomienda organizar las imágenes por capítulo o tipo de evidencia:

```text
assets/images/chapter4/
assets/images/chapter5/
assets/images/chapter6/
assets/images/project-insights/
```

Para insertar imágenes en el informe, se deben usar rutas relativas:

```html
<img src="assets/images/chapter4/example.png" alt="Diagram" width="500px">
```

---

## Integrantes del Equipo

| Código    | Integrante                         |
| ---------- | ---------------------------------- |
| u202021885 | Castro Alejos, Julio Daniel        |
| u202312508 | Coronel Espinoza, Farid Sebastian  |
| u202311938 | Diaz Quispe, Matias Sebastian      |
| u202319831 | Guerra Perez, José Jahaziel       |
| u202317483 | Juarez Leon, Nicolas Emilio Walter |
| u202314101 | Navarro Chinga, Antonio Jhair      |
| u202319448 | Shapiama Rivera, Gabriela Nicole   |

Restock nace frente a un problema real: negocios que aún pierden tiempo, dinero y oportunidades por no contar con una visión precisa de su inventario. Este informe documenta el proceso de análisis, diseño y validación de una solución IoT orientada a transformar esa realidad, conectando sensores, software y decisiones operativas en un mismo ecosistema.

Más que un repositorio de documentación, este proyecto representa la evolución de una idea hacia una propuesta tecnológica con propósito: ayudar a restaurantes y negocios retail a reducir errores, anticipar quiebres de stock y gestionar sus recursos con mayor inteligencia, trazabilidad y confianza.