# Capítulo IV: Solution Software Design
## 4.1. Strategic-Level Domain-Driven Design
### 4.1.1. Design-Level EventStorming
#### 4.1.1.1 Candidate Context Discovery
#### 4.1.1.2 Domain Message Flows Modeling
#### 4.1.1.3 Bounded Context Canvases
### 4.1.2. Context Mapping

En esta sección se explica el proceso de elaboración del Context Map. Asimismo, se permite visualizar las relaciones estructurales entre los Bounded Contexts, junto con los patrones de relación definidos en Domain-Driven Design (DDD), tales como Anti-Corruption Layer (ACL), Conformist, Customer/Supplier y Shared Kernel.

A continuación, se describen las relaciones y patrones de integración observados entre estos contextos.

#### Análisis de Bounded Contexts

##### **Analytics ↔ Asset and Resource Management**

- **Relación**: Upstream (Asset and Resource Management) / Downstream (Analytics)
- **Patrón**: Conformist — Analytics adopta directamente el modelo definido por Asset and Resource Management sin transformación propia. Asset and Resource Management es la fuente de verdad de los recursos del sistema, y Analytics se conforma a ese modelo para construir sus reportes y métricas.

##### **Design and Planning ↔ Asset and Resource Management**

- **Relación**: Upstream (Asset and Resource Management) / Downstream (Design and Planning)
- **Patrón**: Shared Kernel — Ambos contextos comparten un modelo común vinculado a la planificación y gestión de recursos. Asset and Resource Management actúa como proveedor (SUP) y Design and Planning como cliente (CUST), garantizando que la gestión de activos guíe la planificación sin duplicar el modelo compartido. Design and Planning incorpora además un ACL para proteger su dominio del lenguaje propio de la gestión de recursos.

##### **Asset and Resource Management ↔ Sales Management**

- **Relación**: Upstream (Asset and Resource Management) / Downstream (Sales Management)
- **Patrón**: Shared Kernel — Asset and Resource Management provee información de recursos y activos que Sales Management consume para gestionar correctamente los procesos de venta. La relación SUP → CUST asegura que los datos de recursos sean la fuente autoritativa para el dominio de ventas.

##### **Asset and Resource Management ↔ Device Management**

- **Relación**: Upstream (Asset and Resource Management) / Downstream (Device Management)
- **Patrón**: Customer/Supplier — Device Management consume información de Asset and Resource Management para gestionar los dispositivos asociados a los recursos del sistema. Asset and Resource Management actúa como proveedor (SUP) y Device Management como cliente (CUST).

##### **Asset and Resource Management ↔ Communication**

- **Relación**: Upstream (Asset and Resource Management) / Downstream (Communication)
- **Patrón**: Customer/Supplier — Communication consume datos provenientes de Asset and Resource Management para emitir notificaciones relacionadas con el estado de los recursos y activos, sin acoplarse a la lógica interna del dominio de gestión.

##### **Asset and Resource Management ↔ Tracking**

- **Relación**: Upstream (Asset and Resource Management) / Downstream (Tracking)
- **Patrón**: Anti-Corruption Layer — Tracking consume datos de Asset and Resource Management pero los traduce a su propio modelo de seguimiento a través de un ACL, protegiendo su dominio del lenguaje propio de la gestión de activos y recursos.

##### **Identity and Access Management ↔ Subscriptions and Payments**

- **Relación**: Upstream (Identity and Access Management) / Downstream (Subscriptions and Payments)
- **Patrón**: Anti-Corruption Layer — Subscriptions and Payments depende de Identity and Access Management para validar la identidad del usuario, pero traduce el modelo de identidad a través de un ACL. Esto permite que el dominio de pagos mantenga su propio lenguaje sin acoplarse directamente al modelo de autenticación.
- **Patrón**: Shared Kernel — Identity and Access Management provee al contexto de suscripciones una relación con el usuario dueño de la cuenta y suscripción, compartiendo un núcleo común que evita la duplicación del modelo de usuario.

##### **Identity and Access Management ↔ Profiles and Preferences**

- **Relación**: Upstream (Identity and Access Management) / Downstream (Profiles and Preferences)
- **Patrón**: Anti-Corruption Layer — Profiles and Preferences consume el modelo de identidad de Identity and Access Management pero lo traduce a través de un ACL para construir el perfil del usuario, protegiendo su dominio del lenguaje propio de la autenticación.
- **Patrón**: Shared Kernel — Identity and Access Management provee al contexto de perfiles una relación con el usuario cuya información de negocio y personal es utilizada por dicho contexto, compartiendo un núcleo común que garantiza coherencia sin duplicación.

##### **Communication ↔ Tracking**

- **Relación**: Upstream (Communication) / Downstream (Tracking)
- **Patrón**: Customer/Supplier — Tracking consume eventos generados por Communication para coordinar el seguimiento de operaciones notificadas. Communication actúa como proveedor (SUP) y Tracking como cliente (CUST).

Con base en el análisis, se implementaron los siguientes patrones de relación entre contextos:

- **Conformist** entre Asset and Resource Management → Analytics.
- **Shared Kernel** entre Asset and Resource Management → Sales Management, Asset and Resource Management → Design and Planning, Identity and Access Management → Subscriptions and Payments e Identity and Access Management → Profiles and Preferences.
- **Anti-Corruption Layer** en las relaciones de Tracking, Design and Planning, Subscriptions and Payments y Profiles and Preferences con sus respectivos upstream.
- **Customer/Supplier** entre Asset and Resource Management → Device Management, Asset and Resource Management → Communication y Communication → Tracking.

![context-map](https://imgur.com/0EqEVvs.jpeg)

En la imagen se observa que el contexto Asset and Resource Management actúa como el nodo central del sistema, relacionándose con dominios como Identity and Access Management, Sales Management, Device Management, Design and Planning, Communication y Tracking, lo que evidencia una distribución del sistema en bounded contexts con responsabilidades claramente delimitadas.
Las relaciones upstream/downstream (U/D) reflejan las dependencias direccionales entre contextos. El patrón ACL (Anti-Corruption Layer) aparece en contextos como Communication, Tracking, Profiles and Preferences y Subscriptions and Payments, protegiéndolos de contaminación con modelos ajenos a su dominio. El patrón SK (Shared Kernel) se emplea en las relaciones entre Asset and Resource Management con Sales Management y Design and Planning, así como entre Identity and Access Management con Subscriptions and Payments y Profiles and Preferences, garantizando un modelo compartido sin duplicación. Finalmente, el patrón CF (Conformist) se identifica en Analytics, que adopta directamente el modelo de su upstream sin transformación propia.

### 4.1.3. Software Architecture
#### 4.1.3.1. Software Architecture System Landscape Diagram
#### 4.1.3.2. Software Architecture Context Level Diagrams
#### 4.1.3.2. Software Architecture Container Level Diagrams

#### 4.1.3.3. Software Architecture Deployment Diagrams

## 4.2. Tactical-Level Domain-Driven Design

### 4.2.1. Bounded Context: Identity and Access Management
#### 4.2.1.1. Domain Layer
#### 4.2.1.2. Interface Layer
#### 4.2.1.3. Application Layer
#### 4.2.1.4. Infrastructure Layer
#### 4.2.1.5. Bounded Context Software Architecture Component Level Diagrams
#### 4.2.1.6. Bounded Context Software Architecture Code Level Diagrams
##### 4.2.1.6.1. Bounded Context Domain Layer Class Diagrams
##### 4.2.1.6.2. Bounded Context Database Design Diagram

### 4.2.2. Bounded Context: Subscriptions and Payments
#### 4.2.2.1. Domain Layer
#### 4.2.2.2. Interface Layer
#### 4.2.2.3. Application Layer
#### 4.2.2.4. Infrastructure Layer
#### 4.2.2.5. Bounded Context Software Architecture Component Level Diagrams
#### 4.2.2.6. Bounded Context Software Architecture Code Level Diagrams
##### 4.2.2.6.1. Bounded Context Domain Layer Class Diagrams
##### 4.2.2.6.2. Bounded Context Database Design Diagram

### 4.2.3. Bounded Context: Profiles and Preferences
#### 4.2.3.1. Domain Layer
#### 4.2.3.2. Interface Layer
#### 4.2.3.3. Application Layer
#### 4.2.3.4. Infrastructure Layer
#### 4.2.3.5. Bounded Context Software Architecture Component Level Diagrams
#### 4.2.3.6. Bounded Context Software Architecture Code Level Diagrams
##### 4.2.3.6.1. Bounded Context Domain Layer Class Diagrams
##### 4.2.3.6.2. Bounded Context Database Design Diagram

### 4.2.4. Bounded Context: Asset and Resource Management
#### 4.2.4.1. Domain Layer
#### 4.2.4.2. Interface Layer
#### 4.2.4.3. Application Layer
#### 4.2.4.4. Infrastructure Layer
#### 4.2.4.5. Bounded Context Software Architecture Component Level Diagrams
#### 4.2.4.6. Bounded Context Software Architecture Code Level Diagrams
##### 4.2.4.6.1. Bounded Context Domain Layer Class Diagrams
##### 4.2.4.6.2. Bounded Context Database Design Diagram

### 4.2.5. Bounded Context: Service Design and Planning
#### 4.2.5.1. Domain Layer
#### 4.2.5.2. Interface Layer
#### 4.2.5.3. Application Layer
#### 4.2.5.4. Infrastructure Layer
#### 4.2.5.5. Bounded Context Software Architecture Component Level Diagrams
#### 4.2.5.6. Bounded Context Software Architecture Code Level Diagrams
##### 4.2.5.6.1. Bounded Context Domain Layer Class Diagrams
##### 4.2.5.6.2. Bounded Context Database Design Diagram

### 4.2.6. Bounded Context: Service Operation and Monitoring
#### 4.2.6.1. Domain Layer
#### 4.2.6.2. Interface Layer
#### 4.2.6.3. Application Layer
#### 4.2.6.4. Infrastructure Layer
#### 4.2.6.5. Bounded Context Software Architecture Component Level Diagrams
#### 4.2.6.6. Bounded Context Software Architecture Code Level Diagrams
##### 4.2.6.6.1. Bounded Context Domain Layer Class Diagrams
##### 4.2.6.6.2. Bounded Context Database Design Diagram
