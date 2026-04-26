<div id="cover-page" align="center">

<img src="https://i.imgur.com/uoAo2Eb.png" alt="Logo UPC" style="width: 200px; height: auto;" />

&nbsp;

# UNIVERSIDAD PERUANA DE CIENCIAS APLICADAS
## Ingeniería de Software
### Ciclo: 202610
### 1ASI0572 | Desarrollo de Soluciones IoT
### NRC: 17757
### Docente: Angel Augusto Velasquez Nuñez

&nbsp;
&nbsp;

## Informe de Trabajo Final
### Startup: UI-Topic
### Producto: Restock

&nbsp;

### u202021885 - Castro Alejos, Julio Daniel
### u202312508 - Coronel Espinoza, Farid Sebastian
### u202311938 - Diaz Quispe, Matias Sebastian
### u202319831 - Guerra Perez, José Jahaziel
### u202317483 - Juarez Leon, Nicolas Emilio Walter
### u202314101 - Navarro Chinga, Antonio Jhair
### u202319448 - Shapiama Rivera, Gabriela Nicole

&nbsp;
### Abril 2026

</div>

&nbsp;

<div class="page"></div>

## Registro de Versiones

| *Versión* | *Fecha* | *Autor* | *Descripción de modificación* |
| :----------: | :-------: | :-------- | :-------------------------------- |
|     1.2     |          |           |                                   |
|     1.3     |          |           |                                   |
|     1.4     |          |           |                                   |
|     1.5     |          |           |                                   |
|     1.6     |          |           |                                   |
|     1.7     |          |           |                                   |

# Project Report Collaboration Insights

Para el desarrollo del **Project Report**, el equipo utiliza un repositorio dentro de la organización en GitHub. A continuación, se presenta la evidencia de colaboración correspondiente y en coherencia con el registro de versiones del informe.

**Repositorio del informe del proyecto:** [https://shortlink.uk/1oqQ5](https://shortlink.uk/1oqQ5)

**Total de commits:** X

**Autores contribuyentes:**

| Integrante | Usuario de GitHub |
|---|---|
| Julio Castro Alejos | `JulioXC4` |
| Farid Sebastian Coronel Espinoza | `Far14z` |
| Matias Sebastian Diaz Quispe | `equinox-1092` |
| José Jahaziel Guerra Perez | `jahazielgg` |
| Nicolas Emilio Walter Juarez Leon | `JuarezLn10` |
| Antonio Jhair Navarro Chinga | `AntonioNavarro24` |
| Gabriela Nicole Shapiama Rivera | `GabrielaShapiama28` |

El equipo adoptó una estrategia de ramas basada en **feature branches** (`feature/<sección>`), donde cada integrante trabajó de forma aislada sobre la sección asignada y luego integró sus cambios a `main` mediante *pull requests* con revisión cruzada. Los mensajes de commit siguen la convención **Conventional Commits**, usando prefijos como `feat:`, `fix:` y `chore:` para mantener un historial claro y trazable.

---

## AV1 – Sprint Review – Semana 4

Durante esta fase, el equipo elaboró el **informe inicial**, abarcando los siguientes entregables:

- **Informe del proyecto** con carátula, registro de versiones y tabla de contenidos.
- **Capítulos I al IV**, cubriendo introducción, elicitación de requisitos, especificación de requisitos y diseño de la solución de software.
- **Student Outcomes**, conclusiones preliminares, bibliografía y anexos.
- **Keynote de exposición** y video de sustentación del avance.

Cada sección fue desarrollada en su propia rama `feature/<sección>` (por ejemplo, `feature/chapter-01`, `feature/chapter-02`) y los commits siguieron la convención establecida, como se muestra a continuación:

```text
feat(chapter-01): add startup profile and problem statement
chore(annexes): add supplementary files and bibliography
fix(chapter-02): correct user persona descriptions
```

**Analíticos de colaboración – GitHub Insights:**

![Contributors AV1](./assets/images/project-insights/contributors-av1.png)
*Figura: Contribuciones por integrante durante el AV1*

![Network AV1](./assets/images/project-insights/network-av1.png)
*Figura: Historial de commits del repositorio – AV1*

# Contenido

## Tabla de contenidos

- [Student Outcome](README.md#student-outcome)
- [Capítulo I: Introducción](01-chap1-introduction.md)

  - [1.1. Startup Profile](01-chap1-introduction.md#11-startup-profile)
    - [1.1.1. Descripción de la Startup](01-chap1-introduction.md#111-descripción-de-la-startup)
    - [1.1.2. Perfiles de integrantes del equipo](01-chap1-introduction.md#112-perfiles-de-integrantes-del-equipo)
  - [1.2. Solution Profile](01-chap1-introduction.md#12-solution-profile)
    - [1.2.1. Antecedentes y problemática](01-chap1-introduction.md#121-antecedentes-y-problemática)
    - [1.2.2. Lean UX Process](01-chap1-introduction.md#122-lean-ux-process)
      - [1.2.2.1. Lean UX Problem Statements](01-chap1-introduction.md#1221-lean-ux-problem-statements)
      - [1.2.2.2. Lean UX Assumptions](01-chap1-introduction.md#1222-lean-ux-assumptions)
      - [1.2.2.3. Lean UX Hypothesis Statements](01-chap1-introduction.md#1223-lean-ux-hypothesis-statements)
      - [1.2.2.4. Lean UX Canvas](01-chap1-introduction.md#1224-lean-ux-canvas)
  - [1.3. Segmentos objetivo](01-chap1-introduction.md#13-segmentos-objetivo)
- [Capítulo II: Requirements Elicitation &amp; Analysis](02-chap2-requirements-elicitation-and-analysis.md)

  - [2.1. Competidores](02-chap2-requirements-elicitation-and-analysis.md#21-competidores)
    - [2.1.1. Análisis competitivo](02-chap2-requirements-elicitation-and-analysis.md#211-análisis-competitivo)
    - [2.1.2. Estrategias y tácticas frente a competidores](02-chap2-requirements-elicitation-and-analysis.md#212-estrategias-y-tácticas-frente-a-competidores)
  - [2.2. Entrevistas](02-chap2-requirements-elicitation-and-analysis.md#22-entrevistas)
    - [2.2.1. Diseño de entrevistas](02-chap2-requirements-elicitation-and-analysis.md#221-diseño-de-entrevistas)
    - [2.2.2. Registro de entrevistas](02-chap2-requirements-elicitation-and-analysis.md#222-registro-de-entrevistas)
    - [2.2.3. Análisis de entrevistas](02-chap2-requirements-elicitation-and-analysis.md#223-análisis-de-entrevistas)
  - [2.3. Needfinding](02-chap2-requirements-elicitation-and-analysis.md#23-needfinding)
    - [2.3.1. User Personas](02-chap2-requirements-elicitation-and-analysis.md#231-user-personas)
    - [2.3.2. User Task Matrix](02-chap2-requirements-elicitation-and-analysis.md#232-user-task-matrix)
    - [2.3.3. User Journey Mapping](02-chap2-requirements-elicitation-and-analysis.md#233-user-journey-mapping)
    - [2.3.4. Empathy Mapping](02-chap2-requirements-elicitation-and-analysis.md#234-empathy-mapping)
  - [2.4. Big Picture EventStorming](02-chap2-requirements-elicitation-and-analysis.md#24-big-picture-eventstorming)
  - [2.5. Ubiquitous Language](02-chap2-requirements-elicitation-and-analysis.md#25-ubiquitous-language)
- [Capítulo III: Requirements Specification](03-chap3-requirements-specification.md)

  - [3.1. User Stories](03-chap3-requirements-specification.md#31-user-stories)
  - [3.2. Impact Mapping](03-chap3-requirements-specification.md#32-impact-mapping)
  - [3.3. Product Backlog](03-chap3-requirements-specification.md#33-product-backlog)
- [Capítulo IV: Solution Software Design](04-chap4-solution-software-design.md)

  - [4.1. Strategic-Level Domain-Driven Design](04-chap4-solution-software-design.md#41-strategic-level-domain-driven-design)

    - [4.1.1. Design-Level EventStorming](04-chap4-solution-software-design.md#411-design-level-eventstorming)
      - [4.1.1.1. Candidate Context Discovery](04-chap4-solution-software-design.md#4111-candidate-context-discovery)
      - [4.1.1.2. Domain Message Flows Modeling](04-chap4-solution-software-design.md#4112-domain-message-flows-modeling)
      - [4.1.1.3. Bounded Context Canvases](04-chap4-solution-software-design.md#4113-bounded-context-canvases)
    - [4.1.2. Context Mapping](04-chap4-solution-software-design.md#412-context-mapping)
    - [4.1.3. Software Architecture](04-chap4-solution-software-design.md#413-software-architecture)
      - [4.1.3.1. System Landscape Diagram](04-chap4-solution-software-design.md#4131-system-landscape-diagram)
      - [4.1.3.2. Context Level Diagrams](04-chap4-solution-software-design.md#4132-context-level-diagrams)
      - [4.1.3.3. Container Level Diagrams](04-chap4-solution-software-design.md#4133-container-level-diagrams)
      - [4.1.3.4. Deployment Diagrams](04-chap4-solution-software-design.md#4134-deployment-diagrams)
  - [4.2. Tactical-Level Domain-Driven Design](04-chap4-solution-software-design.md#42-tactical-level-domain-driven-design)
- [Capítulo V: Solution UI/UX Design](05-chap5-solution-ui-ux-design.md)

  - [5.1. Style Guidelines](05-chap5-solution-ui-ux-design.md#51-style-guidelines)
  - [5.2. Information Architecture](05-chap5-solution-ui-ux-design.md#52-information-architecture)
  - [5.3. Landing Page UI Design](05-chap5-solution-ui-ux-design.md#53-landing-page-ui-design)
  - [5.4. Applications UX/UI Design](05-chap5-solution-ui-ux-design.md#54-applications-uxui-design)
  - [5.5. Applications Prototyping](05-chap5-solution-ui-ux-design.md#55-applications-prototyping)
  - [5.6. IoT Device Design](05-chap5-solution-ui-ux-design.md#56-iot-device-design)
- [Capítulo VI: Product Implementation, Validation &amp; Deployment](06-chap6-product-implementation-validation-and-deployment.md)

  - [6.1. Software Configuration Management](06-chap6-product-implementation-validation-and-deployment.md#61-software-configuration-management)
  - [6.2. Implementation (Sprints)](06-chap6-product-implementation-validation-and-deployment.md#62-implementation-sprints)
  - [6.3. Validation Interviews](06-chap6-product-implementation-validation-and-deployment.md#63-validation-interviews)
  - [6.4. Video About-the-Product](06-chap6-product-implementation-validation-and-deployment.md#64-video-about-the-product)
- [Conclusiones](07-conclusions.md)
- [Bibliografía](08-bibliography.md)
- [Anexos](09-annexes.md)

# Student Outcome

**ABET – EAC - Student Outcome 5**

**Criterio:** aaaa

En el siguiente cuadro se describe las acciones realizadas y enunciados de conclusiones por parte del grupo, que permiten sustentar el haber alcanzado el logro del ABET – EAC - Student Outcome 5.

| Criterio específico | Acciones realizadas | Conclusiones |
| -------------------- | ------------------- | ------------ |
| **Actua--**    |                     |              |
| **Reco-**      |                     |              |
