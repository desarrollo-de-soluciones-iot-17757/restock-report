# Capítulo IV: Solution Software Design
## 4.1. Strategic-Level Domain-Driven Design

En esta sección se aborda el enfoque de Strategic-Level Domain-Driven Design (DDD), el cual permite definir una visión global del sistema a partir de la identificación y organización de los distintos dominios del negocio. A través de este enfoque, el equipo establece los bounded contexts, delimita responsabilidades y analiza las relaciones entre las diferentes áreas funcionales.

### 4.1.1. Design-Level EventStorming

En esta sección se presenta el Design-Level Event Storming, técnica utilizada para detallar el comportamiento del sistema mediante la identificación de eventos, comandos y reglas de negocio. Este enfoque permite profundizar en los bounded contexts definidos previamente y comprender con mayor precisión las interacciones dentro del dominio.

#### Fase 1: Identificación de Bounded Contexts

En esta fase se realizó la delimitación inicial de los bounded contexts, con el propósito de organizar el dominio en áreas funcionales claramente diferenciadas. Esta separación permitió identificar los principales bloques de responsabilidad del sistema y establecer una visión estructurada de cómo se distribuyen las capacidades del negocio.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/7qqJVcP.png" alt="identity-and-access-management-diagram">
</div>
<br>
<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/A63PeaL.png" alt="profile-management-diagram">
</div>
<br>
<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/E5QKnT9.png" alt="subscriptions-and-payments-diagram">
</div>
<br>
<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/Aov2RxV.png" alt="asset-and-resource-management-diagram">
</div>
<br>
<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/BY7CSPt.png" alt="service-design-and-planning-diagram">
</div>
<br>
<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/nLyck3E.png" alt="sales-order-management-diagram">
</div>
<br>
<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/yN80i4j.png" alt="alerts-and-notifications-diagram">
</div>
<br>
<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/FsSKdU9.png" alt="service-operation-and-monitoring-diagram">
</div>

En las imagenes se observa la división del sistema en distintos bounded contexts, entre los que se encuentran Identity and Access Management, Profile Management, Alerts and Notifications, Subscriptions and Payments, Service Design and Planning, Asset and Resource Management, Sales Order Management y Service Operation and Monitoring. Esta organización evidencia que el sistema fue modelado a partir de sus responsabilidades de negocio más importantes, permitiendo separar funciones como autenticación, gestión de perfiles, suscripciones, inventario, recetas, ventas y monitoreo operativo.

Asimismo, esta fase permitió reconocer que cada contexto posee un propósito específico dentro del sistema y que no todos comparten la misma lógica de negocio. Por ello, la delimitación inicial resulta fundamental para evitar solapamientos funcionales y para facilitar el diseño posterior de los agregados, eventos y relaciones entre contextos.

#### Fase 2: Definición de Eventos de Dominio y Agregados

En esta fase se profundizó en cada bounded context para identificar los eventos de dominio y los agregados principales del sistema. Esta actividad permitió representar los hechos relevantes del negocio y agrupar la lógica asociada a cada flujo funcional dentro de RESTOCK.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/nLyck3E.png" alt="sales-order-management-diagram">
</div>

En la imagen se identifican los eventos de dominio como hechos ya ocurridos dentro del sistema, redactados en pasado, lo que permite reflejar con claridad las acciones que forman parte del comportamiento del negocio. A partir de estos eventos, se reconocen agregados como User, Profile, Subscription, Business, Account, Branch, Inventory, Custom Supply, Batch, Device, Recipe, Sales Order, Notification, Stock Record, Supply Threshold, Conciliation Task y Device Health.

La presencia de estos agregados demuestra que el sistema fue modelado considerando entidades centrales que concentran coherencia de negocio. En RESTOCK, cada agregado representa una pieza clave para la gestión de usuarios, recursos, ventas, recetas, notificaciones y monitoreo. Esta fase permitió comprender con mayor precisión cómo se estructuran internamente los procesos del dominio y cómo se relacionan los eventos con las responsabilidades de cada contexto.

#### Fase 3: Identificación de Comandos, Actores y Políticas

Con el fin de mantener la consistencia y facilitar la interpretación del modelo, el equipo definió una convención de colores para los post-its utilizados durante la tercera fase del Design-Level Event Storming. Esta convención permitió identificar de manera visual los distintos elementos del dominio, tales como eventos, comandos, actores, políticas, modelos de lectura y sistemas externos, facilitando la comprensión de las relaciones y flujos dentro del sistema.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/OfzjwJm.png" alt="event-storming-color-convention">
</div>

En esta fase se incorporaron los comandos, actores y políticas con el objetivo de describir cómo se generan los eventos dentro del sistema y qué participantes intervienen en cada acción. Esta etapa permitió comprender la dinámica operativa del dominio RESTOCK desde la intención del usuario hasta la reacción automática del sistema.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/Aov2RxV.png" alt="asset-and-resource-management-diagram">
</div>

En este bounded context se observa la relación entre comandos, actores y políticas orientadas a la gestión de recursos del sistema, como Branch, Inventory, Custom Supply, Batch y Device. Los comandos identificados permiten realizar acciones como Register Supply, Create Branch y Add Supply to Inventory, evidenciando un flujo operativo enfocado en el control de activos.

Asimismo, participan actores como el Branch Management y el Custom Supply Management, quienes ejecutan dichas acciones y mantienen actualizado el estado de los recursos. Por otro lado, se identifican políticas que automatizan respuestas del sistema, especialmente en la actualización y sincronización del Inventory.

En conjunto, este contexto refleja un flujo donde los comandos generan eventos que activan políticas, permitiendo una gestión eficiente y consistente de los recursos dentro del sistema RESTOCK.

#### Fase 4: Incorporación de Read Models y Sistemas Externos

En esta fase se añadieron los read models y los sistemas externos involucrados en el dominio, con el fin de representar cómo se consulta la información y qué servicios de terceros participan en el funcionamiento de RESTOCK.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/BY7CSPt.png" alt="service-design-and-planning-diagram">
</div>
<br>
<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/yN80i4j.png" alt="alerts-and-notifications-diagram">
</div>
<br>
<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/E5QKnT9.png" alt="subscriptions-and-payments-diagram">
</div>

En la imagen se identifican distintos modelos de lectura que sirven como apoyo para la ejecución de comandos y la toma de decisiones dentro del sistema. Entre ellos destacan vistas relacionadas con inventario, suministros, pedidos, recetas, ventas, perfiles y planes de suscripción. Estos modelos permiten que los actores consulten información consolidada antes de ejecutar acciones, lo que mejora la usabilidad y la eficiencia del sistema.

Del mismo modo, se evidencian integraciones con sistemas externos como Cloudinary API, utilizada para el almacenamiento de imágenes; OneSignal API, empleada para el envío de notificaciones; y proveedores de pago como parte del módulo de suscripciones y pagos. La inclusión de estos servicios muestra que RESTOCK depende de componentes externos para completar ciertas funcionalidades críticas.

Esta fase permitió reconocer que el sistema no opera de manera aislada, sino que interactúa con servicios especializados que fortalecen capacidades como almacenamiento, comunicación y procesamiento de pagos.

#### Fase 5: Construcción del Context Map

En esta fase final se establecieron las relaciones entre los distintos bounded contexts para construir el context map del sistema. Esta representación permitió visualizar cómo se conectan las áreas funcionales de RESTOCK y cuáles son sus dependencias principales.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/hbSe3YW.png" alt="Design-Level-EventStorming">
</div>

En la imagen se observa el conjunto completo de relaciones entre los bounded contexts, lo que evidencia cómo fluye la información dentro del sistema. Se identifican dependencias entre Identity and Access Management y Profile Management, entre Subscriptions and Payments y otros módulos operativos, así como interacciones entre Identity and Access Management, Profile Management, Subscriptions and Payments, Asset and Resource Management, Service Design and Planning, Sales Order Management, Alerts and Notifications y Service Operation and Monitoring.

Esta representación permite comprender que RESTOCK funciona como un ecosistema de contextos conectados, donde cada uno cumple una función específica pero mantiene relaciones con los demás para garantizar la continuidad del negocio. El context map obtenido en esta fase constituye una base sólida para futuras decisiones de arquitectura, ya que ayuda a identificar límites claros, puntos de integración y dependencias entre módulos.

#### 4.1.1.1 Candidate Context Discovery
#### 4.1.1.2 Domain Message Flows Modeling
#### 4.1.1.3 Bounded Context Canvases
### 4.1.2. Context Mapping
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
