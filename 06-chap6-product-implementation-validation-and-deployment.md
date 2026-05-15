# Capítulo VI: Product Implementation, Validation & Deployment

## 6.1. Software Configuration Management

### 6.1.1. Software Development Environment Configuration

### 6.1.2. Source Code Management

### 6.1.3. Source Code Style Guide & Conventions

### 6.1.3. Source Code Style Guide & Conventions

En esta sección se definen las convenciones de estilo de código que el equipo adoptará para el desarrollo de Restock. Estas convenciones tienen como objetivo mantener una base de código uniforme, legible, mantenible y alineada con estándares reconocidos de la industria para cada tecnología utilizada en la solución.

Como regla general, todo el código fuente, identificadores, nombres de variables, funciones, clases, endpoints, ramas y commits deberá escribirse en inglés. Sin embargo, toda la documentación explicativa del proyecto se redactará en español.

#### Convenciones Generales

- **Idioma:** Todos los identificadores del código fuente deben escribirse en inglés.
- **Claridad de nombres:** Los nombres deben ser descriptivos y representar correctamente el dominio de negocio de Restock.
- **Indentación:** Cada tecnología seguirá su estándar oficial de indentación.
-- **Comentarios y documentación interna:** El equipo documentará clases, métodos, funciones y lógica relevante siguiendo las convenciones propias de cada lenguaje, evitando comentarios redundantes sobre código evidente.
- **Formateo:** El código debe ser formateado antes de realizar commits al repositorio.
- **Convención de commits:** El equipo utilizará Conventional Commits, empleando prefijos como `feat:`, `fix:`, `chore:`, `docs:`, `refactor:` y `test:`.
- **Convención de ramas:** Las ramas seguirán una estructura basada en Gitflow, utilizando nombres como `feature/inventory-management`, `fix/auth-validation` o `chore/deployment-config`.

---

#### Frontend - Landing Page (HTML, CSS y JavaScript)

**Referencias adoptadas:**

- W3Schools HTML Style Guide.
- Google HTML/CSS Style Guide.
- JavaScript Standard Style.

**Convenciones generales:**

- Extensiones utilizadas: `.html`, `.css`, `.js`.
- Indentación de 2 espacios.
- Uso de etiquetas HTML semánticas como `header`, `main`, `section`, `article`, `nav` y `footer`.
- Las imágenes deben incluir atributos `alt` descriptivos.
- Los estilos CSS deben organizarse por secciones o componentes.
- JavaScript debe utilizarse únicamente para lógica de interacción y comportamiento dinámico.

**Convenciones de nomenclatura:**

| Elemento | Convención | Ejemplo |
|---|---|---|
| IDs HTML | camelCase | `mainContent` |
| Clases CSS | kebab-case | `hero-section` |
| Variables JavaScript | camelCase | `selectedPlan` |
| Funciones JavaScript | camelCase | `handleNavigation()` |
| Constantes | UPPER_SNAKE_CASE | `MAX_VISIBLE_ITEMS` |
| Archivos | kebab-case | `landing-page.js` |

---

#### Convenciones de Documentación y Comentarios

Aunque los comentarios no deben reemplazar un código claro y descriptivo, el equipo utilizará comentarios y documentación interna cuando sea necesario explicar reglas de negocio, decisiones técnicas, contratos de métodos o comportamientos complejos. Para ello, se adoptarán convenciones específicas según el lenguaje utilizado.

| Tecnología | Convención adoptada | Uso principal |
|---|---|---|
| HTML | Comentarios HTML | Separar secciones relevantes del landing page |
| CSS | Comentarios CSS | Agrupar estilos por sección o componente |
| JavaScript | JSDoc | Documentar funciones, parámetros y retornos |
| TypeScript | TSDoc / JSDoc | Documentar servicios, interfaces, métodos y componentes |
| Java | Javadoc | Documentar clases, métodos públicos, DTOs y servicios |
| Dart / Flutter | Dart Documentation Comments | Documentar widgets, BLoC, servicios y modelos |
| Python | Docstring Conventions / PEP 257 | Documentar módulos, clases, funciones y servicios |
| C++ | Doxygen | Documentar clases, funciones, estructuras y lógica de hardware |
| Gherkin | Descripciones funcionales en `.feature` | Explicar el comportamiento esperado desde el negocio |

#### Frontend Web Application (Angular y TypeScript)

**Referencias adoptadas:**

- Angular Coding Style Guide.
- Google TypeScript Style Guide.

**Convenciones generales:**

- Extensiones utilizadas: `.ts`, `.html`, `.css`.
- Indentación de 2 espacios.
- Organización del proyecto basada en módulos y features.
- Los componentes deben encargarse únicamente de la lógica de presentación.
- Los servicios deben centralizar la comunicación con APIs y lógica reutilizable.
- Uso obligatorio de tipado fuerte mediante interfaces y modelos.
- Los imports deben organizarse desde dependencias externas hacia módulos internos.

**Convenciones de nomenclatura:**

| Elemento | Convención | Ejemplo |
|---|---|---|
| Componentes | PascalCase + sufijo `Component` | `InventoryDashboardComponent` |
| Servicios | PascalCase + sufijo `Service` | `InventoryService` |
| Interfaces | PascalCase | `InventoryItem` |
| Clases | PascalCase | `StockRecord` |
| Variables | camelCase | `currentStock` |
| Métodos | camelCase | `loadInventory()` |
| Constantes | UPPER_SNAKE_CASE | `DEFAULT_PAGE_SIZE` |
| Archivos | kebab-case | `inventory-dashboard.component.ts` |
| Rutas | kebab-case | `/inventory-dashboard` |

---

#### Mobile Application (Flutter y Dart)

**Referencias adoptadas:**

- Effective Dart Style.
- Flutter Style Guide.
- Convenciones de Clean Architecture para Flutter.

**Convenciones generales:**

- Extensión utilizada: `.dart`.
- Indentación de 2 espacios.
- Arquitectura organizada por features, separando capas `data`, `domain` y `presentation`.
- Separación clara de eventos, estados y lógica en BLoC.
- Los widgets deben ser reutilizables y cumplir una única responsabilidad.
- Separación entre DTOs y modelos de dominio cuando exista transformación de datos.

**Convenciones de nomenclatura:**

| Elemento | Convención | Ejemplo |
|---|---|---|
| Clases | PascalCase | `InventoryPage` |
| Widgets | PascalCase | `StockCard` |
| Variables | lowerCamelCase | `availableStock` |
| Métodos | lowerCamelCase | `fetchSupplies()` |
| Constantes | lowerCamelCase o UPPER_SNAKE_CASE | `defaultPadding` |
| Archivos | snake_case | `inventory_page.dart` |
| Carpetas | snake_case | `asset_management` |
| Eventos BLoC | PascalCase + sufijo `Event` | `FetchInventoryEvent` |
| Estados BLoC | PascalCase + sufijo `State` | `InventoryLoadedState` |

---

#### Backend Application (Java y Spring Boot)

**Referencias adoptadas:**

- Google Java Style Guide.
- Spring Boot Features and Best Practices.
- Convenciones REST API.

**Convenciones generales:**

- Extensión utilizada: `.java`.
- Indentación de 4 espacios.
- Arquitectura basada en Domain-Driven Design y separación por capas.
- Los controllers únicamente deben exponer endpoints REST.
- La lógica de negocio debe implementarse en servicios o handlers.
- Los repositories deben abstraer el acceso a persistencia.
- Separación entre DTOs y entidades de dominio.
- Validación de entradas mediante anotaciones y reglas de negocio explícitas.

**Convenciones de nomenclatura:**

| Elemento | Convención | Ejemplo |
|---|---|---|
| Clases | PascalCase | `InventoryService` |
| Controllers | PascalCase + sufijo `Controller` | `InventoryController` |
| Services | PascalCase + sufijo `Service` | `StockMonitoringService` |
| Repositories | PascalCase + sufijo `Repository` | `InventoryRepository` |
| DTOs | PascalCase + sufijo `Request` / `Response` | `CreateSupplyRequest` |
| Command Handlers | PascalCase + sufijo `CommandHandler` | `RegisterBatchCommandHandler` |
| Query Handlers | PascalCase + sufijo `QueryHandler` | `GetInventoryByBranchQueryHandler` |
| Variables | camelCase | `stockRecord` |
| Métodos | camelCase | `registerBatch()` |
| Constantes | UPPER_SNAKE_CASE | `MAX_LOGIN_ATTEMPTS` |
| Packages | lowercase separados por punto | `com.restock.inventory.domain` |
| Endpoints REST | kebab-case | `/api/v1/stock-records` |

---

#### Edge Application (Python y Flask)

**Referencias adoptadas:**

- PEP 8 Style Guide for Python Code.
- Flask Best Practices.

**Convenciones generales:**

- Extensión utilizada: `.py`.
- Indentación de 4 espacios.
- Separación entre rutas, servicios, configuración y comunicación con dispositivos.
- Uso de variables de entorno para datos sensibles.
- Las excepciones deben retornar respuestas HTTP consistentes.
- El procesamiento de telemetría debe mantenerse desacoplado de la lógica HTTP.

**Convenciones de nomenclatura:**

| Elemento | Convención | Ejemplo |
|---|---|---|
| Archivos | snake_case | `telemetry_service.py` |
| Carpetas | snake_case | `device_config` |
| Variables | snake_case | `current_weight` |
| Funciones | snake_case | `process_telemetry()` |
| Clases | PascalCase | `TelemetryService` |
| Constantes | UPPER_SNAKE_CASE | `MAX_RETRY_ATTEMPTS` |
| Endpoints | kebab-case | `/api/v1/device-health` |

---

#### Embedded Application (C++)

**Referencias adoptadas:**

- Google C++ Style Guide.
- Convenciones ESP32.

**Convenciones generales:**

- Extensiones utilizadas: `.cpp`, `.h`.
- Indentación de 2 espacios.
- Separación entre lectura de sensores, calibración y procesamiento de datos.
- Uso de constantes para configuración de hardware y pines.
- Los errores del dispositivo deben manejarse mediante estados claramente definidos.

**Convenciones de nomenclatura:**

| Elemento | Convención | Ejemplo |
|---|---|---|
| Clases | PascalCase | `WeightSensor` |
| Structs | PascalCase | `TelemetryPayload` |
| Variables | camelCase | `currentWeight` |
| Funciones | camelCase | `readStableWeight()` |
| Constantes | UPPER_SNAKE_CASE | `HX711_DATA_PIN` |
| Header files | snake_case | `weight_sensor.h` |
| Source files | snake_case | `weight_sensor.cpp` |

---

#### Testing Specifications (Gherkin)

**Referencias adoptadas:**

- Gherkin Conventions for Readable Specifications.
- Buenas prácticas de Behavior-Driven Development (BDD).

**Convenciones generales:**

- Extensión utilizada: `.feature`.
- Los archivos deben utilizar keywords en inglés.
- Cada feature debe representar un comportamiento funcional específico.
- Los escenarios deben enfocarse en una única funcionalidad observable.
- Los steps deben describir comportamiento funcional y no detalles técnicos internos.
- Uso de tags para clasificación funcional o técnica.

**Convenciones de nomenclatura:**

| Elemento | Convención | Ejemplo |
|---|---|---|
| Feature files | kebab-case | `inventory-management.feature` |
| Títulos Feature | Descriptivo en inglés | `Feature: Manage inventory stock` |
| Títulos Scenario | Descriptivo en inglés | `Scenario: Register a new supply batch` |
| Tags | lowercase kebab-case | `@inventory`, `@critical-flow` |
| Step definitions | camelCase o snake_case | `registerSupplyBatch()` |


Estas referencias permitirán mantener consistencia en el desarrollo colaborativo, facilitar la mantenibilidad del sistema y asegurar buenas prácticas de ingeniería de software durante todo el ciclo de vida del proyecto.

### 6.1.4. Software Deployment Configuration

## 6.2. Landing Page, Services & Applications Implementation

### 6.2.1. Sprint 1

#### 6.2.1.1. Sprint Planning 1

#### 6.2.1.2. Aspect Leaders and Collaborators

Durante el Sprint 1, se han definido los pilares estratégicos del sistema basados en una arquitectura de contextos delimitados (Bounded Contexts). Estos abarcan desde la seguridad y acceso hasta la gestión compleja de activos, ventas y monitoreo de servicios para los sectores de retail y restaurantes.

Con el objetivo de asegurar una comunicación clara y un flujo de trabajo eficiente, se ha elaborado la siguiente matriz de liderazgo y colaboración (LACX). En ella se designa un líder responsable (L) para la integridad de cada contexto y colaboradores (C) que aseguran la integración y el cumplimiento de los 32 puntos de historia definidos en la planificación.

| Team Member (Last Name, First Name) |  GitHub Username  |     IAM     |     ARM     | Planning and Planning | Sales Management | Devices Mangement |  Tracking  | Communications | Profiles and Preferences |
| :---------------------------------- | :----------------: | :---------: | :---------: | :-------------------: | :--------------: | :---------------: | :---------: | :------------: | :----------------------: |
| Navarro Chinga, Antonio Jhair       |  AntonioNavarro24  | **L** |            |           C           |                  |                  |      C      |                |                          |
| Guerra Perez, José Jahaziel        |     jahazielgg     |            |            |           C           |        C        |                  |      C      |                |       **L**       |
| Juarez Leon, Nicolas Emilio         |     JuarezLn10     |            |      C      |                      |                  |    **L**    | **L** |                |                          |
| Diaz Quispe, Matias Sebastian       |    equinox-1092    |      C      |            |                      |        C        |                  |            |  **L**  |            C            |
| Castro Alejos, Julio Daniel         |      JulioXC4      |            |      C      |      **L**      |                  |                  |            |       C       |                          |
| Shapiama Rivera, Gabriela Nicole    | GabrielaShapiama28 |            | **L** |                      |                  |         C         |            |       C       |            C            |
| Coronel Espinoza, Farid Sebastian   |       Far14z       |            |      C      |                      |   **L**   |         C         |            |                |                          |

#### 6.2.1.3. Sprint Backlog 1

#### 6.2.1.4. Development Evidence for Sprint Review

#### 6.2.1.5. Testing Suite Evidence for Sprint Review

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
