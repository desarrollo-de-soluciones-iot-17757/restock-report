# Capítulo IV: Solution Software Design
## 4.1. Strategic-Level Domain-Driven Design

En esta sección se aborda el enfoque de Strategic-Level Domain-Driven Design (DDD), el cual permite definir una visión global del sistema a partir de la identificación y organización de los distintos dominios del negocio. A través de este enfoque, el equipo establece los bounded contexts, delimita responsabilidades y analiza las relaciones entre las diferentes áreas funcionales.

### 4.1.1. Design-Level EventStorming

En esta sección se presenta el Design-Level Event Storming, técnica utilizada para detallar el comportamiento del sistema mediante la identificación de eventos, comandos y reglas de negocio. Este enfoque permite profundizar en los bounded contexts definidos previamente y comprender con mayor precisión las interacciones dentro del dominio.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/OfzjwJm.png" alt="event-storming-color-convention">
</div>

Con el fin de mantener la consistencia y facilitar la interpretación del modelo, el equipo definió una convención de colores para los post-its utilizados durante la tercera fase del Design-Level Event Storming. Esta convención permitió identificar de manera visual los distintos elementos del dominio, tales como eventos, comandos, actores, políticas, modelos de lectura y sistemas externos, facilitando la comprensión de las relaciones y flujos dentro del sistema.

#### Paso 1: Event

El primer paso del Design Level Event Storming consistió en la identificación de los eventos de dominio del sistema, el cual representa un hecho relevante que ya ocurrió dentro del negocio, y se expresa siempre en tiempo pasado. En esta técnica, los eventos se representan con tarjetas de color naranja.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/VPc1a1O.png" alt="event">
</div>

El equipo identificó los eventos de dominio agrupados por columnas, representando los distintos flujos del sistema. 

#### Paso 2: Timelines

El segundo paso consistió en organizar los eventos de dominio dentro de líneas de tiempo por cada contexto del sistema. El objetivo fue establecer el orden cronológico natural en que los hechos ocurren dentro de cada flujo, agrupándolos bajo sus respectivos encabezados de contexto.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/ORfFyCB.png" alt="time-line">
</div>

El equipo organizó los eventos en secuencias horizontales ordenadas bajo once contextos claramente etiquetados: IAM Identity and Access Management, Managing personal and business profiles, Plans and payment, Branch creation and management, Registration and management of customized supplies, Recipes and Kits, Batch and stock registration, Sales register, Device registration and configuration, Telemetry, stock and thresholds y Communications center. Cada línea de tiempo muestra los eventos en el orden en que ocurren naturalmente dentro del flujo de negocio correspondiente, permitiendo al equipo verificar que la narrativa del sistema sea coherente y completa de extremo a extremo.

#### Paso 3: Paint Point

El tercer paso incorporó la identificación de los puntos de dolor o tambien llamados paint point dentro de los flujos ya organizados. Los pain points se representan con tarjetas en forma de rombo de color rosa y señalan fricciones, dudas, riesgos o decisiones de diseño pendientes que el equipo detectó al revisar las líneas de tiempo.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/gw55AfL.png" alt="paint-point">
</div>

El equipo incorporó pain points en los contextos donde surgieron preguntas sin resolver. En IAM se marcó un pain point relacionado con el proceso de registro, preguntando qué información mínima se requiere para completar el alta de una cuenta. En Branch creation and management se levantó una pregunta sobre el comportamiento del sistema cuando no se adjunta una imagen al registrar una sucursal. En Registration and management of customized supplies se planteó la misma interrogante respecto a la imagen del insumo personalizado. En Recipes and Kits se identificaron pain points tanto en la receta como en el kit, relacionados con qué información adicional debe consultarse antes de registrarlos y qué ocurre cuando no se proporciona una imagen. En Sales register se levantó una pregunta sobre qué información de precio o condición debe validarse antes de confirmar la venta. Estos puntos quedaron visibles en el tablero como señales de alerta para ser resueltos en iteraciones posteriores del diseño.

#### Paso 4: Commands

El cuarto paso consistió en identificar los comandos del sistema. Un comando representa la intención de un actor de provocar un cambio de estado en el dominio. Los comandos se representan con tarjetas de color azul y se ubican inmediatamente antes del evento de dominio que producen.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/jLtyiPQ.png" alt="commands">
</div>

El equipo incorporó los comandos en cada línea de tiempo. En IAM se definieron: Sign up, Sign in y Register new user for account. En Managing personal and business profiles: Create user profile, Change Password, Update personal data y Register new business. En Plans and payment: Select subscription plan, Configure plan limits, Update plan limits y Pay subscription plan. En Branch creation and management: Create branch, Edit branch y Delete branch. En Registration and management of customized supplies: Register Custom Supply y Edit Custom Supply. En Recipes and Kits: Register recipe, Edit recipe, Register Kit y Edit Kit. En Batch and stock registration: Register batch. En Sales register: Register sale, Calculate total price y Show sales. En Device registration and configuration: Register new device, Configure a device y Deactivate device. En Telemetry, stock and thresholds: Calculate stock, Status check, Register threshold, Edit threshold y Verify threshold. En Communications center: Generate new notification y Show the notification.

#### Paso 5: Policies and Actors

El quinto paso incorporó al modelo los actores y las políticas del sistema. Los actores son los roles de personas que interactúan con el sistema emitiendo comandos, representados con tarjetas pequeñas de color amarillo. Las políticas son reglas de negocio automáticas que, ante la ocurrencia de un evento, disparan un nuevo comando sin intervención humana directa, representadas con tarjetas de color lila.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/FMCqKZv.png" alt="policies-actors">
</div>

El equipo identificó como actores principales al Retail Manager y al Branch Manager, presentes en la totalidad de los contextos del sistema. El actor Visitor fue identificado únicamente en el contexto de IAM para el flujo de registro inicial. Las políticas fueron incorporadas en los flujos donde el sistema debe reaccionar automáticamente ante ciertos eventos: en Plans and payment se definió una política que activa el plan de suscripción una vez que el pago es aceptado; en Telemetry, stock and thresholds se identificó una política que genera una tarea de conciliación automáticamente al detectarse una anomalía de stock; en Device registration and configuration se definió una política que deshabilita la ingesta de telemetría ante ciertos eventos del dispositivo; y en Communications center se identificó una política que dispara el envío de notificaciones en respuesta a eventos de alerta del sistema.

#### Paso 6: Read models

El sexto paso consistió en identificar los modelos de lectura (read models) del sistema. Los read models se representan con tarjetas de color verde y corresponden a las vistas o proyecciones de datos que los actores necesitan consultar para poder tomar una decisión y emitir un comando.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/GnIq2AP.png" alt="read-models">
</div>

El equipo incorporó los read models en los puntos del flujo donde el actor necesita información disponible antes de actuar. En IAM se identificó la vista de Login. En Managing personal and business profiles se definió la vista de Profile settings. En Branch creation and management se identificó la vista de Branch Management. En Registration and management of customized supplies se definió la vista de Custom Supply Management. En Recipes and Kits se identificaron las vistas de Recipe Catalog y Kit Catalog, que permiten al manager consultar el catálogo existente antes de seleccionar un ítem para editarlo. En Batch and stock registration se definió la vista de Batch Management. En Sales register se identificó la vista de Sales Management. En Device registration and configuration se definió la vista de Device Management. Estos read models garantizan que los actores cuenten con el contexto necesario en cada punto de decisión del flujo.

#### Paso 7: External Systems

El séptimo paso consistió en incorporar al modelo los sistemas externos con los que el sistema interactúa. Los sistemas externos se representan con tarjetas de color rosa oscuro y corresponden a servicios o plataformas fuera del dominio propio que participan en los flujos de negocio.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/WGdx4p0.png" alt="external-systems">
</div>

El equipo identificó tres sistemas externos a partir del PDF. El primero es Cloudinary API, presente en los contextos de Managing personal and business profiles, Branch creation and management, Registration and management of customized supplies y Recipes and Kits, siendo responsable de la carga, almacenamiento y recuperación de imágenes del sistema. El segundo es Stripe, integrado en el contexto de Plans and payment, encargado de procesar los pagos de suscripción. El tercero es OneSignal API, integrado en el contexto de Communications center, responsable del envío de notificaciones push a los usuarios del sistema.

#### Paso 8: Add Aggregates

El octavo paso consistió en identificar los agregados del dominio y agrupar en torno a ellos los comandos, eventos y políticas correspondientes. Los agregados se representan con tarjetas de color amarillo de mayor tamaño y constituyen la unidad de consistencia del dominio, encapsulando la lógica de negocio dentro de sus límites.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/xAvuzSR.png" alt="aggregates">
</div>

El equipo identificó los agregados visibles en la página 9 del PDF, organizados por contexto. En IAM se definió el agregado User. En Managing personal and business profiles se identificaron Profile y Business. En Plans and payment se definieron Subscription y Account. En Branch creation and management se identificaron Branch e Inventory. En Registration and management of customized supplies se definieron Custom Supply y Device. En Recipes and Kits se identificaron Recipe y Kit. En Batch and stock registration se definió Batch. En Sales register se identificó Sales Order. En Device registration and configuration se definieron Device Health y Conciliation Task. En Telemetry, stock and thresholds se identificaron Stock Record y Supply Threshold. En Communications center se definió el agregado Notification.

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
