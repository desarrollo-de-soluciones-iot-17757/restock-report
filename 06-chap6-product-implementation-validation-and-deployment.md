# Capítulo VI: Product Implementation, Validation & Deployment

## 6.1. Software Configuration Management

### 6.1.1. Software Development Environment Configuration

### 6.1.2. Source Code Management

### 6.1.3. Source Code Style Guide & Conventions

### 6.1.4. Software Deployment Configuration


## 6.2. Landing Page, Services & Applications Implementation

### 6.2.1. Sprint 1

#### 6.2.1.1. Sprint Planning 1

#### 6.2.1.2. Aspect Leaders and Collaborators

Durante el Sprint 1, se han definido los pilares estratégicos del sistema basados en una arquitectura de contextos delimitados (Bounded Contexts). Estos abarcan desde la seguridad y acceso hasta la gestión compleja de activos, ventas y monitoreo de servicios para los sectores de retail y restaurantes.

Con el objetivo de asegurar una comunicación clara y un flujo de trabajo eficiente, se ha elaborado la siguiente matriz de liderazgo y colaboración (LACX). En ella se designa un líder responsable (L) para la integridad de cada contexto y colaboradores (C) que aseguran la integración y el cumplimiento de los 32 puntos de historia definidos en la planificación.

| Team Member (Last Name, First Name) |  GitHub Username   |  IAM  |  ARM  | Planning and Planning | Sales Management | Devices Mangement | Tracking | Communications | Profiles and Preferences |
|:------------------------------------|:------------------:|:-----:|:-----:|:---------------------:|:----------------:|:-----------------:|:--------:|:--------------:|:------------------------:|
| Navarro Chinga, Antonio Jhair       |  AntonioNavarro24  | **L** |       |           C           |                  |                   |    C     |                |                          |
| Guerra Perez, José Jahaziel         |     jahazielgg     |       |       |           C           |        C         |                   |    C     |                |          **L**           |
| Juarez Leon, Nicolas Emilio         |     JuarezLn10     |       |   C   |                       |                  |       **L**       |  **L**   |                |                          |
| Diaz Quispe, Matias Sebastian       |    equinox-1092    |   C   |       |                       |        C         |                   |          |     **L**      |            C             |
| Castro Alejos, Julio Daniel         |      JulioXC4      |       |   C   |         **L**         |                  |                   |          |       C        |                          |
| Shapiama Rivera, Gabriela Nicole    | GabrielaShapiama28 |       | **L** |                       |                  |         C         |          |       C        |            C             |
| Coronel Espinoza, Farid Sebastian   |       Far14z       |       |   C   |                       |      **L**       |         C         |          |                |                          |

#### 6.2.1.3. Sprint Backlog 1

#### 6.2.1.4. Development Evidence for Sprint Review

#### 6.2.1.5. Testing Suite Evidence for Sprint Review

En esta sección se presenta la evidencia correspondiente a las pruebas automatizadas desarrolladas para los productos implementados durante el Sprint Review 1 de Restock. Para este sprint, el alcance corresponde únicamente a la Landing Page y al Frontend Web Application. Por ello, las pruebas se enfocan en validar navegación, renderizado de componentes, formularios, rutas internas e interacción entre componentes del frontend.

#### Relación de tests diseñados - TEMPORAL

| Tipo de Test        | Producto                 | Test diseñado                                | User Story relacionada | Evidencia       |
| ------------------- | ------------------------ | --------------------------------------------- | ---------------------- | --------------- |
| Unit Test           | Landing Page             | Renderizado de secciones principales          | US-01                  | Insertar imagen |
| Unit Test           | Landing Page             | Visualización de beneficios de la plataforma | US-05                  | Insertar imagen |
| Unit Test           | Frontend Web Application | Validación de formulario de login y registro | US-20                  | Insertar imagen |
| Unit Test           | Frontend Web Application | Validación de creacion de insumo             | US-15                  | Insertar imagen |
| Integration Test    | Landing Page             | Navegación entre secciones internas          | US-01                  | Insertar imagen |
| Integration Test    | Frontend Web Application | Navegación entre login y dashboard           | US-15 / US-20          | Insertar imagen |
| Acceptance Test BDD | Landing Page             | Acceso y navegación del sitio web            | US-01                  | Insertar imagen |
| Acceptance Test BDD | Frontend Web Application | Inicio de sesión desde la interfaz          | US-15                  | Insertar imagen |
| Acceptance Test BDD | Frontend Web Application | Creación de insumo en inventario             | US-20                  | Insertar imagen |

---

#### Unit Tests

Los Unit Tests fueron diseñados para validar componentes específicos de manera aislada.

| Producto                 | Clase / Componente        | Comportamiento validado                                    | User Story relacionada |
| ------------------------ | ------------------------- | ---------------------------------------------------------- | ---------------------- |
| Landing Page             | `home.component.ts`     | Renderizado correcto de la página principal               | US-01                  |
| Landing Page             | `benefits.component.ts` | Visualización de beneficios de la plataforma              | US-05                  |
| Frontend Web Application | `login.component.ts`    | Validación de campos requeridos y formato de credenciales | US-20                  |
| Frontend Web Application | `sign-up.component.ts`  | Validación de creacion de insumo                          | US-15                  |

##### Evidencia

> Insertar capturas de ejecución de Unit Tests aquí.

---

#### Integration Tests

Los Integration Tests fueron diseñados para validar la interacción entre rutas, vistas y componentes dentro de los productos frontend implementados en el sprint.

| Producto                 | Integración validada               | Descripción                                                                        | User Story relacionada |
| ------------------------ | ----------------------------------- | ----------------------------------------------------------------------------------- | ---------------------- |
| Landing Page             | Navbar ↔ Sections                  | Verifica que las opciones del menú dirijan correctamente a las secciones del sitio | US-01                  |
| Frontend Web Application | Login Page ↔ Sign Up Page          | Verifica la navegación entre las vistas de inicio de sesión y registro            | US-15 / US-20          |
| Frontend Web Application | Sign Up Form ↔ Validation Messages | Verifica que el formulario muestre mensajes de validación ante datos incompletos   | US-15                  |

##### Evidencia

> Insertar capturas de ejecución de Integration Tests aquí.

---

#### Acceptance Tests bajo enfoque BDD

Las pruebas de aceptación fueron definidas bajo enfoque Behavior-Driven Development (BDD), utilizando archivos `.feature` escritos en lenguaje Gherkin. Estos escenarios validan el comportamiento esperado desde la perspectiva del usuario.

##### Feature File: Landing Page Navigation

```gherkin
Feature: Navigate Landing Page

  Scenario: Visitor navigates through the landing page sections
    Given the visitor is on the landing page
    When the visitor selects a navigation option
    Then the system displays the selected section
```

**User Story relacionada:** US-01 - Acceso al sitio web.

##### Feature File: User Sign Up

```gherkin
Feature: User Sign Up

  Scenario: Visitor completes the sign up form
    Given the visitor is on the sign up page
    When the visitor enters valid registration data
    And submits the form
    Then the interface shows that the registration form was submitted successfully
```

**User Story relacionada:** US-15 - Registro de usuario.

##### Feature File: User Login

```gherkin
Feature: User Login

  Scenario: User completes the login form
    Given the user is on the login page
    When the user enters valid credentials
    And submits the form
    Then the interface redirects the user to the main web application view
```

**User Story relacionada:** US-20 - Inicio de sesión.

#### Steps Files

| Feature File                        | Steps File                           | Producto                 |
| ----------------------------------- | ------------------------------------ | ------------------------ |
| `landing-page-navigation.feature` | `landing-page-navigation.steps.ts` | Landing Page             |
| `user-sign-up.feature`            | `user-sign-up.steps.ts`            | Frontend Web Application |
| `user-login.feature`              | `user-login.steps.ts`              | Frontend Web Application |

##### Evidencia

> Insertar capturas de ejecución de Acceptance Tests aquí.

---

#### Repository Routes

| Proyecto de Testing              | Ruta del repositorio                                       |
| -------------------------------- | ---------------------------------------------------------- |
| Landing Page Testing             | `https://github.com/<organization>/restock-landing-page` |
| Frontend Web Application Testing | `https://github.com/<organization>/restock-webapp`       |

---

#### Repositories and Testing Commits

| Repository               | Branch                           | Commit Id   | Commit Message                                   | Commit Message Body                                                                       | Commited on (Date) |
| ------------------------ | -------------------------------- | ----------- | ------------------------------------------------ | ----------------------------------------------------------------------------------------- | ------------------ |
| `restock-landing-page` | `feature/testing-landing-page` | `PENDING` | `test: add landing page tests`                 | Added unit, integration and BDD tests for landing page navigation and content validation. | `PENDING`        |
| `restock-webapp`       | `feature/testing-webapp`       | `PENDING` | `test: add frontend authentication form tests` | Added unit, integration and BDD tests for login and sign up interface flows.              | `PENDING`        |

---

#### Sprint Review Testing Summary

Durante este Sprint Review se validaron los principales flujos implementados para la Landing Page y el Frontend Web Application. Las pruebas cubren navegación, renderizado de componentes, validación de formularios, interacción entre vistas y escenarios de aceptación bajo enfoque BDD.

#### 6.2.1.6. Execution Evidence for Sprint Review

#### 6.2.1.7. Services Documentation Evidence for Sprint Review

#### 6.2.1.8. Software Deployment Evidence for Sprint Review

#### 6.2.1.9. Team Collaboration Insights during Sprint


### 6.2.2. Sprint 2

#### 6.2.2.1. Sprint Planning 2

#### 6.2.2.2. Aspect Leaders and Collaborators

#### 6.2.2.3. Sprint Backlog 2

#### 6.2.2.4. Development Evidence for Sprint Review

#### 6.2.2.5. Testing Suite Evidence for Sprint Review

#### 6.2.2.6. Execution Evidence for Sprint Review

#### 6.2.2.7. Services Documentation Evidence for Sprint Review

#### 6.2.2.8. Software Deployment Evidence for Sprint Review

#### 6.2.2.9. Team Collaboration Insights during Sprint


### 6.2.3. Sprint 3

#### 6.2.3.1. Sprint Planning 3

#### 6.2.3.2. Aspect Leaders and Collaborators

#### 6.2.3.3. Sprint Backlog 3

#### 6.2.3.4. Development Evidence for Sprint Review

#### 6.2.3.5. Testing Suite Evidence for Sprint Review

#### 6.2.3.6. Execution Evidence for Sprint Review

#### 6.2.3.7. Services Documentation Evidence for Sprint Review

#### 6.2.3.8. Software Deployment Evidence for Sprint Review

#### 6.2.3.9. Team Collaboration Insights during Sprint


## 6.3. Validation Interviews

### 6.3.1. Diseño de Entrevistas

### 6.3.2. Registro de Entrevistas

### 6.3.3. Evaluaciones según heurísticas

## 6.4. Video About-the-Product
