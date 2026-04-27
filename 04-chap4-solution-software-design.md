# Capítulo IV: Solution Software Design

## 4.1. Strategic-Level Domain-Driven Design

### 4.1.1. Design-Level EventStorming

#### 4.1.1.1 Candidate Context Discovery

A partir del modelo de Event Storming, se llevó a cabo una sesión de Candidate Context Discovery para identificar los bounded contexts de la solución. Se utilizó principalmente la técnica look-for-pivotal-events durante la sesión.

Primero, se buscaron eventos clave que indiquen cambios de estado entre diferentes partes del proceso del negocio:

<img src="assets/images/chapter4/candidate_context/candidate_step1.png" alt=“DDD” width="500px">

Luego, se agruparon los eventos de acuerdo a los principales cambios de contexto.

<img src="assets/images/chapter4/candidate_context/candidate_step2.png" alt=“DDD” width="500px">

Se trazaron fronteras alrededor de los grupos identificados, estableciendo los límites iniciales de los bounded contexts.

<img src="assets/images/chapter4/candidate_context/candidate_step3.png" alt=“DDD” width="500px">

Finalmente, se seleccionaron nombres para los bounded context. Dando como resultado la definición de 8 bounded contexts y la **versión final del Event Storming**:

<img src="assets/images/chapter4/event_storming.png" alt=“DDD” width="800px">

A continuación, se explicará en qué consiste cada bounded context:

**Identity and Access Management:** También llamado "IAM", este bounded context contiene el proceso de ingreso del usuario a la plataforma, ya sea iniciando sesión o registrandose.

<img src="assets/images/chapter4/candidate_context/bounded_iam.jpg" alt=“DDD” width="500px">

**Subscriptions and Payments:** También llamado "Subscriptions", este bounded context contiene el proceso de selección de planes, configuración de suscripciones, procesamiento de pagos e inicialización de cuentas de negocio, incluyendo la integración con plataformas externas como Stripe.

<img src="assets/images/chapter4/candidate_context/bounded_subscriptions.jpg" alt=“DDD” width="500px">

**Profiles and Preferences:** También llamado "Profile", este bounded context contiene el proceso de gestión de la información personal del usuario, incluyendo la actualización de datos, cambio de contraseña y configuración de preferencias, así como la gestión de información del negocio.

<img src="assets/images/chapter4/candidate_context/bounded_profile.jpg" alt=“DDD” width="500px">

**Alerts and Notifications:** También llamado "Notifications", este bounded context contiene el proceso de generación, envío y recepción de notificaciones dentro de la plataforma, a partir de eventos relevantes del sistema como alertas de stock o incidencias, integrándose con servicios externos como OneSignal para la distribución de mensajes.

<img src="assets/images/chapter4/candidate_context/bounded_notifications.jpg" alt="DDD" width="500px">

**Asset and Resource Management:** También llamado "Resource", este bounded context contiene el proceso de gestión de inventario, insumos, lotes y sucursales, incluyendo el registro, actualización y control de stock, así como la administración de proveedores y recursos asociados.

<img src="assets/images/chapter4/candidate_context/bounded_resource.jpg" alt=“DDD” width="500px">

**Service Design and Planning:** También llamado "Planning", este bounded context contiene el proceso de diseño y gestión de recetas y kits, incluyendo la selección de insumos, categorización, actualización de información y almacenamiento de imágenes, permitiendo definir cómo se estructuran los productos dentro del sistema.

<img src="assets/images/chapter4/candidate_context/bounded_planning.jpg" alt=“DDD” width="500px">

**Sales Order Management:** También llamado "Sales", este bounded context contiene el proceso de registro y gestión de ventas, incluyendo la selección de productos, cálculo del total, confirmación de la venta y actualización automática del stock disponible.

<img src="assets/images/chapter4/candidate_context/bounded_sales.jpg" alt="DDD" width="500px">

**Service Operation and Monitoring:** También llamado "Monitoring", este bounded context contiene el proceso de monitoreo del estado del inventario físico y dispositivos, incluyendo la recepción de datos desde sensores, detección de anomalías, gestión de umbrales de stock y generación de tareas de conciliación o alertas ante inconsistencias.

<img src="assets/images/chapter4/candidate_context/bounded_monitoring.jpg" alt=“DDD” width="500px">

#### 4.1.1.2 Domain Message Flows Modeling

Los Domain Message Flows modelan las interacciones entre los diferentes bounded contexts, mostrando cómo se comunican entre sí mediante comandos, eventos y consultas. A continuación, se muestran los flujos de mensaje para los escenarios clave del negocio:

* **Access to platform:** En este flujo se muestra la interacción entre el bounded context IAM y el bounded context Profiles al momento en que un usuario se registra de forma omnicanal (Web o App) y se crea su perfil correspondiente.

  <img src="assets/images/chapter4/message_flows/access_to_platform.png" alt="Domain Message Flow - Access to platform" height="500px">

* **Record a recipe:** En este flujo se muestra la interacción entre el bounded context Planning y el bounded context Resource al momento en que un administrador diseña y registra una nueva receta, vinculando los insumos necesarios del almacén.

  <img src="assets/images/chapter4/message_flows/record_a_recipe.png" alt="Domain Message Flow - Record a recipe" height="500px">

* **Register a restaurant sale and update inventory:** En este flujo se modela la complejidad de una venta en restaurante, donde el sistema interactúa con las recetas para deducir de Resource las cantidades exactas de insumos utilizados tras confirmar el ticket.

  <img src="assets/images/chapter4/message_flows/register_a_restaurant_sale.png" alt="Domain Message Flow - Register a restaurant sale" height="500px">

* **IoT Monitoring and Anomaly Detection:** En este escenario crítico se muestra la interacción entre Monitoring (Service Operation) y Resource. La telemetría capturada por el hardware solicita el stock teórico, detecta discrepancias físicas y genera tareas de conciliación para el administrador.

  <img src="assets/images/chapter4/message_flows/iot_monitoring_and_anomaly_detection.png" alt="Domain Message Flow - IoT Monitoring" height="500px">

* **Push Notification Dispatch:** En este flujo se detalla cómo el bounded context de Notifications reacciona a eventos anómalos del sistema, filtrando destinatarios y delegando el envío de alertas a dispositivos móviles mediante una integración con una API externa (OneSignal).

  <img src="assets/images/chapter4/message_flows/push_notification_dispatch.png" alt="Domain Message Flow - Push Notification Dispatch" height="500px">

Adicionalmente, se presentan flujos de escenarios relevantes para el core del negocio, pero que por su alta cohesión resuelven sus procesos sin requerir interacción con otros bounded contexts externos:

* **Subscribe to a plan:** En este flujo se muestra el proceso de onboarding comercial, donde el registro empresarial y la confirmación de pago se orquestan internamente dentro del bounded context de Subscription.

  <img src="assets/images/chapter4/message_flows/subscribe_to_a_plan.png" alt="Domain Message Flow - Subscribe to a plan" height="500px">

* **Record a supply in the inventory:** En este flujo se modela el ingreso manual o la actualización de existencias de un insumo, el cual es procesado exclusivamente dentro del bounded context Resource.

  <img src="assets/images/chapter4/message_flows/record_a_supply_in_the_inventory.png" alt="Domain Message Flow - Record a supply" height="500px">

* **Register a physical branch and assign IoT devices:** En este flujo se evidencia el proceso de digitalización de una nueva sucursal y la vinculación de sus sensores físicos, consolidando entidades fuertemente acopladas dentro del bounded context Resource (Asset and Resource Management) y utilizando una API externa para la gestión de imágenes.

  <img src="assets/images/chapter4/message_flows/register_a_physical_branch_and_assign_devices.png" alt="Domain Message Flow - Register branch and devices" height="500px">
  
#### 4.1.1.3 Bounded Context Canvases

### 4.1.2. Context Mapping

En esta sección se explica el proceso de elaboración del Context Map. Asimismo, se permite visualizar las relaciones estructurales entre los Bounded Contexts, junto con los patrones de relación definidos en Domain-Driven Design (DDD), tales como Anti-Corruption Layer (ACL), Conformist, Customer/Supplier y Shared Kernel.

A continuación, se describen las relaciones y patrones de integración observados entre estos contextos.

#### Análisis de Bounded Contexts

##### Analytics ↔ Asset and Resource Management
- **Relación:** Upstream (Asset and Resource Management) / Downstream (Analytics)
- **Patrón:** Conformist — Analytics adopta directamente el modelo definido por Asset and Resource Management sin transformación propia. Asset and Resource Management es la fuente de verdad de los recursos del sistema, y Analytics se conforma a ese modelo para construir sus reportes y métricas.

##### Service Design and Planning ↔ Asset and Resource Management
- **Relación:** Upstream (Service Design and Planning) / Downstream (Asset and Resource Management)
- **Patrón:** Shared Kernel — Ambos contextos comparten un modelo común de diseño de servicios. Service Design and Planning actúa como proveedor (SUP) y Asset and Resource Management como cliente (CUST), garantizando que la planificación de servicios guíe la gestión de recursos sin duplicar el modelo compartido.

##### Asset and Resource Management ↔ Sales Order Management
- **Relación:** Upstream (Asset and Resource Management) / Downstream (Sales Order Management)
- **Patrón:** Shared Kernel — Asset and Resource Management provee información de recursos y activos que Sales Order Management consume para generar órdenes de venta correctamente asociadas. La relación SUP → CUST asegura que los datos de recursos sean la fuente autoritativa para los procesos de venta.

##### Asset and Resource Management ↔ Service Operation and Monitoring
- **Relación:** Upstream (Asset and Resource Management) / Downstream (Service Operation and Monitoring)
- **Patrón:** Anti-Corruption Layer — Service Operation and Monitoring consume datos de Asset and Resource Management, pero los traduce a su propio modelo operativo a través de un ACL. Esto protege al dominio operativo de ser contaminado con el lenguaje propio de la gestión de activos y recursos.

##### IAM ↔ Subscriptions and Payments
- **Relación:** Upstream (IAM) / Downstream (Subscriptions and Payments)
- **Patrón:** Anti-Corruption Layer — Subscriptions and Payments depende de IAM para validar la identidad del usuario, pero traduce el modelo de identidad a través de un ACL. Esto permite que el dominio de pagos mantenga su propio lenguaje sin acoplarse directamente al modelo de autenticación de IAM.

##### IAM ↔ Profile and Preferences
- **Relación:** Upstream (IAM) / Downstream (Profile and Preferences)
- **Patrón:** Anti-Corruption Layer — Profile and Preferences consume el modelo de identidad de IAM pero lo traduce a través de un ACL para construir el perfil del usuario. Esto protege al dominio de preferencias de ser contaminado con el lenguaje propio de la autenticación.

##### Service Operation and Monitoring ↔ Communication
- **Relación:** Upstream (Service Operation and Monitoring) / Downstream (Communication)
- **Patrón:** Customer/Supplier — Communication consume eventos operativos generados por Service Operation and Monitoring para notificar al personal o a los usuarios relevantes. Service Operation and Monitoring actúa como proveedor del contexto operativo que Communication necesita para ejecutar sus notificaciones.

##### Sales Order Management ↔ Communication
- **Relación:** Upstream (Sales Order Management) / Downstream (Communication)
- **Patrón:** Customer/Supplier — Communication consume información de órdenes de venta de Sales Order Management para emitir confirmaciones, alertas o notificaciones relacionadas con el ciclo de vida de las órdenes, sin conocer la lógica interna del dominio de ventas.

Con base en el análisis, se implementaron los siguientes patrones de relación entre contextos:

- **Conformist** entre Asset and Resource Management → Analytics.
- **Shared Kernel** entre Service Design and Planning → Asset and Resource Management y Asset and Resource Management → Sales Order Management.
- **Anti-Corruption Layer** en las relaciones de Service Operation and Monitoring, Subscriptions and Payments y Profile and Preferences con sus respectivos upstream.
- **Customer/Supplier** entre Service Operation and Monitoring → Communication y Sales Order Management → Communication.

![context-map](https://imgur.com/6gwxZZP.png)

En la imagen se observa que el contexto Asset and Resource Management actúa como el contexto central, relacionándose con dominios como Identity and Access Management, Sales Order Management, Service Design and Planning y Communication, lo que evidencia una distribución del sistema en bounded contexts con responsabilidades específicas.

Asimismo, las relaciones upstream/downstream (U/D) reflejan dependencias entre contextos, mientras que patrones como ACL (Anti-Corruption Layer) y SK (Shared Kernel) muestran mecanismos para integrar módulos, proteger el dominio y compartir elementos comunes cuando es necesario.

### 4.1.3. Software Architecture

En esta sección se presentan los diagramas de arquitectura de software basados en el modelo C4, los cuales permiten describir la estructura del sistema Restock a diferentes niveles de detalle.

#### 4.1.3.1. Software Architecture System Landscape Diagram

En esta sección se presenta una visión general de los principales usuarios, sistemas externos y componentes internos que interactúan con la plataforma.

Para Restock, el diagrama de panorama del sistema incluye los siguientes elementos principales:

<img src="assets/images/chapter4/landscape-diagram.png" width="600px">

**Restaurant Administrator:** Usuario encargado de gestionar el inventario, recetas, ventas y operaciones dentro de un restaurante, interactuando directamente con la plataforma Restock para administrar sus procesos.

**Retail Administrator:** Usuario responsable de gestionar el inventario y las operaciones comerciales en entornos retail, utilizando Restock como herramienta central para el control del stock y la toma de decisiones.

**Back Office Staff:** Personal administrativo y operativo de la organización UI-Topic que se encarga de administrar, supervisar y dar soporte al sistema, asegurando su correcto funcionamiento.

**Support:** Equipo de soporte que asiste a los clientes, gestiona incidencias y monitorea el estado del sistema para garantizar una adecuada experiencia de usuario.

**Maintenance Technician:** Personal técnico responsable de la instalación, mantenimiento y monitoreo de los dispositivos físicos, asegurando la correcta operación del hardware asociado.

**Restock:** Sistema principal de la solución, encargado de la gestión del inventario y de coordinar la comunicación entre los distintos componentes, incluyendo aplicaciones, hardware IoT y servicios externos.

**Restock Hardware:** Subsistema de hardware orientado al monitoreo de stock mediante dispositivos IoT, que recopila datos físicos y los envía a la plataforma para su procesamiento.

**OneSignal API:** Servicio externo utilizado para el envío de notificaciones y alertas a los usuarios del sistema.

**Stripe:** Plataforma externa encargada de procesar pagos y suscripciones dentro de la solución.

**Cloudinary API:** Servicio externo utilizado para el almacenamiento y gestión de archivos multimedia, como imágenes asociadas a productos.

En conjunto, este diagrama muestra cómo Restock actúa como el núcleo del sistema, integrando a los distintos usuarios, componentes internos y servicios externos para ofrecer una solución completa de gestión de inventarios.

#### 4.1.3.2. Software Architecture Context Level Diagrams

El diagrama de contexto en la arquitectura de software proporciona una visión general de alto nivel del sistema dentro de su entorno, mostrando cómo interactúa con los actores externos, sistemas externos y con dispositivos IoT que capturan y envían datos del mundo físico. Este diagrama permite comprender los límites del sistema y las principales interacciones externas.

Para Restock, el diagrama de contexto incluye los siguientes actores, sistemas externos y dispositivos IoT:

<img src="https://i.imgur.com/PsJeXBT.png">

**Visitors:** Usuarios anónimos que navegan el contenido público de la plataforma, como información, planes y características, y pueden registrarse o acceder como administradores de restaurante o retail.

**Restaurant Administrators:** Usuarios que gestionan el inventario, recetas, ventas y operaciones de restaurantes mediante la plataforma Restock.

**Retail Administrators:** Usuarios que gestionan el inventario, control de stock y operaciones comerciales en entornos de retail utilizando la plataforma Restock.

**Restock:** Sistema principal que permite la gestión de inventarios, monitoreo de stock en tiempo real y automatización de procesos mediante la integración con aplicaciones web, móviles, servicios externos y dispositivos IoT.

**Stripe:** Sistema externo que gestiona los pagos y suscripciones de los usuarios dentro de la plataforma Restock.

**Cloudinary API:** Servicio externo encargado del almacenamiento, gestión y entrega de imágenes y contenido multimedia utilizado en la plataforma.

**OneSignal API:** Servicio externo utilizado para el envío de notificaciones y alertas en tiempo real a los usuarios de la plataforma.

**Restock Smart Scale:** Dispositivo IoT que captura datos de peso desde el entorno físico mediante sensores y los transmite al sistema para su procesamiento y uso en el control de inventarios.

#### 4.1.3.2. Software Architecture Container Level Diagrams

El diagrama de contenedores de la arquitectura de software proporciona una visión de alto nivel de los principales contenedores del sistema, incluyendo aplicaciones, servicios, bases de datos y componentes IoT, como dispositivos embebidos y aplicaciones edge que interactúan con sensores físicos. Además, muestra cómo estos elementos se comunican entre sí para procesar y transmitir información.

Para Restock, el diagrama de contenedores incluye los siguientes contenedores principales:

<img src="https://i.imgur.com/wg30qij.png">

**Landing Page:** Aplicación web estática desarrollada con HTML, CSS y JavaScript que presenta información pública sobre Restock, como funcionalidades, planes y términos, y guía a los usuarios hacia la aplicación web mediante elementos de navegación y llamados a la acción, interactuando con la Web Application a través de redirecciones.

**Web Application:** Componente que actúa como punto de entrada a la plataforma web de Restock, encargado de entregar la aplicación frontend al navegador del usuario, interactuando con la Restock Platform Web Application.

**Restock Platform Web Application:** Aplicación frontend desarrollada con TypeScript y Angular que se ejecuta en el navegador del usuario y permite gestionar el inventario, visualizar insumos y platos, y monitorear el stock en tiempo real, interactuando con la Restock Server Side Application mediante solicitudes API.

**Restock Mobile Application:** Aplicación móvil multiplataforma desarrollada con Dart y Flutter que permite a los usuarios gestionar inventario, consultar productos y monitorear el stock en tiempo real desde dispositivos móviles, interactuando con la Restock Server Side Application mediante API y con la Mobile SQLite Database para almacenamiento local.

**Mobile SQLite Database:** Base de datos local basada en SQLite que almacena información de la aplicación en el dispositivo móvil para permitir acceso offline y mejorar el rendimiento, interactuando únicamente con la Restock Mobile Application.

**Restock Local Station Edge Application:** Aplicación intermedia desarrollada en Python con Flask que recibe datos de peso desde la aplicación embebida, los procesa y los envía al backend, además de recibir comandos de configuración como encendido, apagado y asignación de producto desde el backend y transmitirlos al embedded, interactuando con la Restock Server Side Application, la Restock Embedded Application y la Edge Local Database.

**Edge Local Database:** Base de datos local basada en SQLite que almacena configuración del dispositivo, datos recientes de sensores y eventos pendientes de sincronización para garantizar el funcionamiento offline y la integridad de los datos, interactuando con la Restock Local Station Edge Application.

**Restock Embedded Application:** Software embebido desarrollado en C++ que controla el dispositivo físico de medición (balanza), captura datos de peso desde el sensor y ejecuta comandos recibidos como encendido, apagado o cambio de producto a monitorear, interactuando con la Restock Local Station Edge Application y el dispositivo Restock Smart Scale.

**Restock Server Side Application:** Aplicación backend desarrollada en Java con Spring Boot que gestiona la lógica de negocio, procesa datos de inventario, recibe información desde el edge, envía comandos de configuración a los dispositivos y coordina la comunicación entre los distintos componentes del sistema, interactuando con la Restock Database, la Restock Platform Web Application, la Restock Mobile Application, la Restock Local Station Edge Application y servicios externos como Stripe, Cloudinary y OneSignal.

**Restock Database:** Base de datos principal del sistema que almacena información de inventario, usuarios, productos y suscripciones, interactuando con la Restock Server Side Application.

#### 4.1.3.3. Software Architecture Deployment Diagrams

El siguiente diagrama de despliegue muestra la distribución física de los componentes de la plataforma Restock en los distintos entornos de ejecución, incluyendo infraestructura en la nube, dispositivos del usuario, nodos de cómputo en el edge y hardware embebido.

<img src="https://i.ibb.co/Z6SpWJsK/Production-Deployment-dark.png" 
     alt="Production Deployment Diagram"
     style="width:100%; height:auto;">

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

La capa de dominio representa el núcleo de negocio del Bounded Context de Subscriptions and Payments. En esta capa se encapsulan las reglas relacionadas con la gestión de planes de suscripción, activación de beneficios, control de límites contratados y procesamiento conceptual de pagos.

Este bounded context funciona como el punto de entrada comercial del sistema, debido a que el usuario selecciona un plan y, posteriormente, se gestiona el flujo de pago y activación de la suscripción. Una vez aceptado el pago, el contexto emite eventos de dominio que permiten a otros bounded contexts reaccionar de forma desacoplada.

Esta capa se mantiene independiente de frameworks, mecanismos de persistencia, servicios externos o detalles de infraestructura. Se compone de Aggregate Roots, Entities, Value Objects y Domain Events.

##### Aggregates & Entities

<p><em>Tabla de Aggregates en el Domain Layer</em></p> <table style="width:100%; border-collapse: collapse; border: 1px solid;"> <thead> <tr> <th style="padding: 10px; border: 1px solid; text-align: left;">Nombre de Clase</th> <th style="padding: 10px; border: 1px solid; text-align: left;">Categoría</th> <th style="padding: 10px; border: 1px solid; text-align: left;">Propósito y Reglas de Negocio</th> </tr> </thead> <tbody> <tr> <td style="padding: 10px; border: 1px solid;"><strong>Subscription</strong></td> <td style="padding: 10px; border: 1px solid;">Aggregate Root</td> <td style="padding: 10px; border: 1px solid;">Representa la suscripción contratada. Controla el ciclo de vida del plan (activación, expiración, cancelación) y garantiza que solo exista un plan activo por cuenta.</td> </tr> <tr> <td style="padding: 10px; border: 1px solid;"><strong>Plan</strong></td> <td style="padding: 10px; border: 1px solid;">Entity</td> <td style="padding: 10px; border: 1px solid;">Define los beneficios, precios y límites disponibles para una suscripción.</td> </tr> <tr> <td style="padding: 10px; border: 1px solid;"><strong>Payment</strong></td> <td style="padding: 10px; border: 1px solid;">Aggregate Root</td> <td style="padding: 10px; border: 1px solid;">Representa el proceso de pago asociado a una suscripción, incluyendo su estado y validación para activar el plan.</td> </tr> </tbody> </table>

##### Value Objects

<p><em>Tabla de Value Objects en el Domain Layer</em></p> <table style="width:100%; border-collapse: collapse; border: 1px solid;"> <thead> <tr> <th style="padding: 10px; border: 1px solid; text-align: left;">Nombre de Clase</th> <th style="padding: 10px; border: 1px solid; text-align: left;">Categoría</th> <th style="padding: 10px; border: 1px solid; text-align: left;">Propósito y Reglas de Negocio</th> </tr> </thead> <tbody> <tr> <td style="padding: 10px; border: 1px solid;"><strong>PlanLimits</strong></td> <td style="padding: 10px; border: 1px solid;">Value Object</td> <td style="padding: 10px; border: 1px solid;">Define los límites del plan contratado.</td> </tr> <tr> <td style="padding: 10px; border: 1px solid;"><strong>Money</strong></td> <td style="padding: 10px; border: 1px solid;">Value Object</td> <td style="padding: 10px; border: 1px solid;">Representa montos monetarios con moneda.</td> </tr> <tr> <td style="padding: 10px; border: 1px solid;"><strong>BillingPeriod</strong></td> <td style="padding: 10px; border: 1px solid;">Value Object</td> <td style="padding: 10px; border: 1px solid;">Define el periodo de facturación.</td> </tr> <tr> <td style="padding: 10px; border: 1px solid;"><strong>PaymentStatus</strong></td> <td style="padding: 10px; border: 1px solid;">Value Object</td> <td style="padding: 10px; border: 1px solid;">Estado del pago (pendiente, confirmado, fallido).</td> </tr> <tr> <td style="padding: 10px; border: 1px solid;"><strong>SubscriptionStatus</strong></td> <td style="padding: 10px; border: 1px solid;">Value Object</td> <td style="padding: 10px; border: 1px solid;">Estado de la suscripción.</td> </tr> </tbody> </table>

##### Domain Events

<p><em>Tabla de Domain Events en el Domain Layer</em></p> <table style="width:100%; border-collapse: collapse; border: 1px solid;"> <thead> <tr> <th style="padding: 10px; border: 1px solid; text-align: left;">Nombre del Evento</th> <th style="padding: 10px; border: 1px solid; text-align: left;">Propósito</th> </tr> </thead> <tbody> <tr> <td style="padding: 10px; border: 1px solid;"><strong>SubscriptionPlanSelectedEvent</strong></td> <td style="padding: 10px; border: 1px solid;">Se emite cuando un usuario selecciona un plan.</td> </tr> <tr> <td style="padding: 10px; border: 1px solid;"><strong>PaymentInitializedEvent</strong></td> <td style="padding: 10px; border: 1px solid;">Se emite cuando se inicia un pago.</td> </tr> <tr> <td style="padding: 10px; border: 1px solid;"><strong>PaymentConfirmedEvent</strong></td> <td style="padding: 10px; border: 1px solid;">Se emite cuando el pago es confirmado.</td> </tr> <tr> <td style="padding: 10px; border: 1px solid;"><strong>SubscriptionActivatedEvent</strong></td> <td style="padding: 10px; border: 1px solid;">Se emite cuando una suscripción se activa.</td> </tr> <tr> <td style="padding: 10px; border: 1px solid;"><strong>SubscriptionUpgradedEvent</strong></td> <td style="padding: 10px; border: 1px solid;">Se emite cuando se realiza un upgrade de plan.</td> </tr> </tbody> </table>

##### Commands & Queries

<p><em>Tabla de Commands y Queries del Domain Layer</em></p> <table style="width:100%; border-collapse: collapse; border: 1px solid;"> <thead> <tr> <th style="padding: 10px; border: 1px solid;">Nombre</th> <th style="padding: 10px; border: 1px solid;">Tipo</th> <th style="padding: 10px; border: 1px solid;">Propósito</th> </tr> </thead> <tbody> <tr> <td style="padding: 10px; border: 1px solid;">SelectSubscriptionPlan</td> <td style="padding: 10px; border: 1px solid;">Command</td> <td style="padding: 10px; border: 1px solid;">Seleccionar un plan.</td> </tr> <tr> <td style="padding: 10px; border: 1px solid;">InitializePayment</td> <td style="padding: 10px; border: 1px solid;">Command</td> <td style="padding: 10px; border: 1px solid;">Iniciar el pago.</td> </tr> <tr> <td style="padding: 10px; border: 1px solid;">ConfirmPayment</td> <td style="padding: 10px; border: 1px solid;">Command</td> <td style="padding: 10px; border: 1px solid;">Confirmar pago.</td> </tr> <tr> <td style="padding: 10px; border: 1px solid;">ActivateSubscription</td> <td style="padding: 10px; border: 1px solid;">Command</td> <td style="padding: 10px; border: 1px solid;">Activar suscripción.</td> </tr> <tr> <td style="padding: 10px; border: 1px solid;">GetSubscription</td> <td style="padding: 10px; border: 1px solid;">Query</td> <td style="padding: 10px; border: 1px solid;">Consultar suscripción.</td> </tr> </tbody> </table>


#### 4.2.2.2. Interface Layer

En la capa de interfaz del Bounded Context de Subscriptions and Payments se exponen endpoints RESTful alineados a recursos del dominio como planes, suscripciones y pagos. Esta capa transforma las solicitudes entrantes en Commands o Queries y delega su ejecución a la capa de aplicación.

Asimismo, se define la interfaz del Anti-Corruption Layer (ACL) para permitir la comunicación con otros bounded contexts sin acoplar directamente los modelos de dominio.

##### Anti-Corruption Layer Interface

<p><em>Tabla de ACL Interface en el Interface Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid;">Nombre</th>
      <th style="padding: 10px; border: 1px solid;">Tipo</th>
      <th style="padding: 10px; border: 1px solid;">Propósito</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>ProfilesACL</strong></td>
      <td style="padding: 10px; border: 1px solid;">Interface</td>
      <td style="padding: 10px; border: 1px solid;">Define la comunicación con el bounded context de Profiles para operaciones como creación de cuentas de negocio y asociación de usuarios.</td>
    </tr>
  </tbody>
</table>

##### PlanController

<p><em>Tabla de PlanController en el Interface Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid;">Propiedad</th>
      <th style="padding: 10px; border: 1px solid;">Valor</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Ruta</strong></td>
      <td style="padding: 10px; border: 1px solid;">/api/v1/plans</td>
    </tr>
  </tbody>
</table>

<p><em>Métodos</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th>Nombre</th>
      <th>Ruta</th>
      <th>Acción</th>
      <th>Handle</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>GetAll</td>
      <td>GET /</td>
      <td>Listar planes</td>
      <td>GetAvailablePlansQuery</td>
    </tr>
    <tr>
      <td>GetById</td>
      <td>GET /{planId}</td>
      <td>Obtener plan</td>
      <td>GetPlanByIdQuery</td>
    </tr>
  </tbody>
</table>

##### SubscriptionController

<p><em>Tabla de SubscriptionController en el Interface Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th>Propiedad</th>
      <th>Valor</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Ruta</strong></td>
      <td>/api/v1/subscriptions</td>
    </tr>
  </tbody>
</table>

<p><em>Métodos</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th>Nombre</th>
      <th>Ruta</th>
      <th>Acción</th>
      <th>Handle</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>Create</td>
      <td>POST /</td>
      <td>Crear suscripción (selección de plan)</td>
      <td>SelectSubscriptionPlanCommand</td>
    </tr>
    <tr>
      <td>Upgrade</td>
      <td>POST /{subscriptionId}/upgrade</td>
      <td>Actualizar plan</td>
      <td>UpgradeSubscriptionPlanCommand</td>
    </tr>
    <tr>
      <td>ConfigureLimits</td>
      <td>PUT /{subscriptionId}/limits</td>
      <td>Configurar límites</td>
      <td>ConfigurePlanLimitsCommand</td>
    </tr>
  </tbody>
</table>

##### AccountSubscriptionsController

<p><em>Tabla de AccountSubscriptionsController en el Interface Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th>Propiedad</th>
      <th>Valor</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Ruta</strong></td>
      <td>/api/v1/accounts/{accountId}/subscriptions</td>
    </tr>
  </tbody>
</table>

<p><em>Métodos</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th>Nombre</th>
      <th>Ruta</th>
      <th>Acción</th>
      <th>Handle</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>GetCurrent</td>
      <td>GET /current</td>
      <td>Obtener suscripción activa de la cuenta</td>
      <td>GetCurrentSubscriptionQuery</td>
    </tr>
  </tbody>
</table>

##### SubscriptionPaymentsController

<p><em>Tabla de SubscriptionPaymentsController en el Interface Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th>Propiedad</th>
      <th>Valor</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Ruta</strong></td>
      <td>/api/v1/subscriptions/{subscriptionId}/payments</td>
    </tr>
  </tbody>
</table>

<p><em>Métodos</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th>Nombre</th>
      <th>Ruta</th>
      <th>Acción</th>
      <th>Handle</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>CreatePayment</td>
      <td>POST /</td>
      <td>Iniciar proceso de pago</td>
      <td>StartStripeCheckoutCommand</td>
    </tr>
    <tr>
      <td>GetStatus</td>
      <td>GET /{paymentId}</td>
      <td>Consultar estado del pago</td>
      <td>GetPaymentStatusQuery</td>
    </tr>
  </tbody>
</table>

##### StripeWebhookController

<p><em>Tabla de StripeWebhookController en el Interface Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th>Propiedad</th>
      <th>Valor</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td><strong>Ruta</strong></td>
      <td>/api/v1/webhooks/stripe</td>
    </tr>
  </tbody>
</table>

<p><em>Métodos</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th>Nombre</th>
      <th>Ruta</th>
      <th>Acción</th>
      <th>Handle</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>HandlePayment</td>
      <td>POST /</td>
      <td>Procesar eventos de Stripe</td>
      <td>ConfirmStripePaymentCommand</td>
    </tr>
  </tbody>
</table>

#### 4.2.2.3. Application Layer

La capa de aplicación del Bounded Context de Subscriptions and Payments coordina los casos de uso relacionados con planes, suscripciones y pagos. En esta capa residen los Command Handlers, Query Handlers, Event Handlers y servicios de aplicación encargados de ejecutar los flujos principales del contexto: selección de plan, inicio del proceso de pago, confirmación de pago mediante Stripe, activación de suscripción y actualización de límites cuando el usuario realiza un upgrade de plan.

Esta capa no contiene reglas puras de dominio. Su responsabilidad es orquestar el flujo de trabajo entre la capa de interfaz y el dominio, cargar aggregates desde los mecanismos de persistencia disponibles, invocar métodos del modelo de dominio, persistir cambios y publicar eventos que podrán ser consumidos por otros bounded contexts.

La creación de la cuenta de negocio no pertenece directamente a este bounded context, debido a que el comando CreateBusinessAccount forma parte del contexto de Profiles. Por ello, Subscriptions and Payments se comunica con dicho contexto mediante un Anti-Corruption Layer (ACL), evitando acoplar directamente sus modelos internos.

##### SelectSubscriptionPlanCommandHandler

<p><em>Tabla de SelectSubscriptionPlanCommandHandler en el Application Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Propiedad</th>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Valor</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Nombre</strong></td>
      <td style="padding: 10px; border: 1px solid;">SelectSubscriptionPlanCommandHandler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Command Handler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Orquestar la selección inicial de un plan de suscripción, validando que el plan exista y dejando preparada la suscripción antes del pago.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Comando</strong></td>
      <td style="padding: 10px; border: 1px solid;">SelectSubscriptionPlanCommand</td>
    </tr>
  </tbody>
</table>

<br>

##### ConfigurePlanLimitsCommandHandler

<p><em>Tabla de ConfigurePlanLimitsCommandHandler en el Application Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Propiedad</th>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Valor</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Nombre</strong></td>
      <td style="padding: 10px; border: 1px solid;">ConfigurePlanLimitsCommandHandler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Command Handler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Gestionar la configuración de límites asociados al plan seleccionado, como cuotas de recursos, capacidad operativa y restricciones aplicables a la suscripción.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Comando</strong></td>
      <td style="padding: 10px; border: 1px solid;">ConfigurePlanLimitsCommand</td>
    </tr>
  </tbody>
</table>

<br>

##### StartStripeCheckoutCommandHandler

<p><em>Tabla de StartStripeCheckoutCommandHandler en el Application Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Propiedad</th>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Valor</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Nombre</strong></td>
      <td style="padding: 10px; border: 1px solid;">StartStripeCheckoutCommandHandler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Command Handler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Orquestar el inicio del proceso de pago asociado a una suscripción, preparando la integración con Stripe y registrando la referencia del pago.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Comando</strong></td>
      <td style="padding: 10px; border: 1px solid;">StartStripeCheckoutCommand</td>
    </tr>
  </tbody>
</table>

<br>

##### ConfirmPaymentCommandHandler

<p><em>Tabla de ConfirmPaymentCommandHandler en el Application Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Propiedad</th>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Valor</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Nombre</strong></td>
      <td style="padding: 10px; border: 1px solid;">ConfirmPaymentCommandHandler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Command Handler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Procesar la confirmación del pago recibida desde Stripe, validar la referencia externa y actualizar el estado del pago dentro del contexto.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Comando</strong></td>
      <td style="padding: 10px; border: 1px solid;">ConfirmPaymentCommand</td>
    </tr>
  </tbody>
</table>

<br>

##### ActivateSubscriptionCommandHandler

<p><em>Tabla de ActivateSubscriptionCommandHandler en el Application Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Propiedad</th>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Valor</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Nombre</strong></td>
      <td style="padding: 10px; border: 1px solid;">ActivateSubscriptionCommandHandler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Command Handler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Activar la suscripción una vez confirmado el pago, asociando el plan contratado y publicando los eventos necesarios para que otros contextos reaccionen.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Comando</strong></td>
      <td style="padding: 10px; border: 1px solid;">ActivateSubscriptionCommand</td>
    </tr>
  </tbody>
</table>

<br>

##### UpgradeSubscriptionResourcesCommandHandler

<p><em>Tabla de UpgradeSubscriptionResourcesCommandHandler en el Application Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Propiedad</th>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Valor</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Nombre</strong></td>
      <td style="padding: 10px; border: 1px solid;">UpgradeSubscriptionResourcesCommandHandler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Command Handler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Orquestar el cambio de plan o incremento de recursos contratados, reemplazando los límites actuales por los límites del nuevo plan y notificando a los contextos correspondientes.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Comando</strong></td>
      <td style="padding: 10px; border: 1px solid;">UpgradeSubscriptionResourcesCommand</td>
    </tr>
  </tbody>
</table>

<br>

##### GetSubscriptionStatusQueryHandler

<p><em>Tabla de GetSubscriptionStatusQueryHandler en el Application Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Propiedad</th>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Valor</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Nombre</strong></td>
      <td style="padding: 10px; border: 1px solid;">GetSubscriptionStatusQueryHandler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Query Handler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Consultar el estado actual de una suscripción, incluyendo plan asociado, estado del pago, vigencia y límites configurados.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Query</strong></td>
      <td style="padding: 10px; border: 1px solid;">GetSubscriptionStatusQuery</td>
    </tr>
  </tbody>
</table>

<br>

##### GetCurrentSubscriptionQueryHandler

<p><em>Tabla de GetCurrentSubscriptionQueryHandler en el Application Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Propiedad</th>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Valor</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Nombre</strong></td>
      <td style="padding: 10px; border: 1px solid;">GetCurrentSubscriptionQueryHandler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Query Handler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Consultar la suscripción activa vinculada a una cuenta específica, sin exponer detalles técnicos de persistencia.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Query</strong></td>
      <td style="padding: 10px; border: 1px solid;">GetCurrentSubscriptionQuery</td>
    </tr>
  </tbody>
</table>

<br>

##### PaymentAcceptedEventHandler

<p><em>Tabla de PaymentAcceptedEventHandler en el Application Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Propiedad</th>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Valor</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Nombre</strong></td>
      <td style="padding: 10px; border: 1px solid;">PaymentAcceptedEventHandler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Event Handler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Reaccionar a la confirmación exitosa del pago para activar el plan contratado y continuar con el flujo de habilitación de la suscripción.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Evento</strong></td>
      <td style="padding: 10px; border: 1px solid;">PaymentAcceptedEvent</td>
    </tr>
  </tbody>
</table>

<br>

##### SubscriptionActivatedEventHandler

<p><em>Tabla de SubscriptionActivatedEventHandler en el Application Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Propiedad</th>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Valor</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Nombre</strong></td>
      <td style="padding: 10px; border: 1px solid;">SubscriptionActivatedEventHandler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Event Handler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Reaccionar a la activación de una suscripción y solicitar al contexto de Profiles la creación de la cuenta de negocio mediante el ACL.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Evento</strong></td>
      <td style="padding: 10px; border: 1px solid;">SubscriptionActivatedEvent</td>
    </tr>
  </tbody>
</table>

<br>

##### ProfilesACL

<p><em>Tabla de ProfilesACL en el Application Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Propiedad</th>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Valor</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Nombre</strong></td>
      <td style="padding: 10px; border: 1px solid;">ProfilesACL</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Anti-Corruption Layer Implementation</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Implementar la comunicación entre Subscriptions and Payments y Profiles, traduciendo solicitudes internas del contexto de suscripciones hacia comandos o recursos propios del contexto de perfiles.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Interfaz</strong></td>
      <td style="padding: 10px; border: 1px solid;">IProfilesACL</td>
    </tr>
  </tbody>
</table>

<br>

##### RequestBusinessAccountCreationService

<p><em>Tabla de RequestBusinessAccountCreationService en el Application Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Propiedad</th>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Valor</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Nombre</strong></td>
      <td style="padding: 10px; border: 1px solid;">RequestBusinessAccountCreationService</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Application Service</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Solicitar al contexto de Profiles la creación de una cuenta de negocio después de la activación de una suscripción, sin ejecutar directamente el comando CreateBusinessAccount dentro de este bounded context.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Dependencia</strong></td>
      <td style="padding: 10px; border: 1px solid;">ProfilesACL</td>
    </tr>
  </tbody>
</table>

### 4.2.2.4. Infrastructure Layer

La capa de infraestructura del Bounded Context de Subscriptions and Payments actúa como el puente entre la lógica central del negocio y los mecanismos técnicos externos necesarios para operar el ciclo de vida comercial del sistema. En esta capa se materializan las interfaces de repositorios definidas en el dominio para persistir entidades como planes, suscripciones, pagos y cuentas de negocio. Asimismo, se integran servicios externos esenciales para el contexto, como Stripe para el procesamiento y confirmación de pagos, y mecanismos de comunicación mediante Message Brokers para publicar eventos hacia otros bounded contexts, como Asset and Resource Management, Profile and Preferences e Identity and Access Management.

Esta capa no contiene reglas de negocio puras. Su responsabilidad principal es resolver detalles técnicos como persistencia, integración con pasarelas de pago, validación de webhooks, publicación de eventos de dominio e implementación de servicios externos requeridos por la capa de aplicación.

##### SubscriptionRepository

<p><em>Tabla de SubscriptionRepository en el Infrastructure Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Propiedad</th>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Valor</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Nombre</strong></td>
      <td style="padding: 10px; border: 1px solid;">SubscriptionRepository</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Repositorio</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Persistir y consultar suscripciones, incluyendo su estado, plan asociado, vigencia, límites configurados y relación con la cuenta de negocio.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Interfaz</strong></td>
      <td style="padding: 10px; border: 1px solid;">ISubscriptionRepository</td>
    </tr>
  </tbody>
</table>

<br>

##### PlanRepository

<p><em>Tabla de PlanRepository en el Infrastructure Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Propiedad</th>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Valor</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Nombre</strong></td>
      <td style="padding: 10px; border: 1px solid;">PlanRepository</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Repositorio</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Manejar el acceso a datos de los planes disponibles, sus precios, beneficios, límites de recursos y condiciones comerciales aplicables.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Interfaz</strong></td>
      <td style="padding: 10px; border: 1px solid;">IPlanRepository</td>
    </tr>
  </tbody>
</table>

<br>

##### PaymentRepository

<p><em>Tabla de PaymentRepository en el Infrastructure Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Propiedad</th>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Valor</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Nombre</strong></td>
      <td style="padding: 10px; border: 1px solid;">PaymentRepository</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Repositorio</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Persistir órdenes de pago, estados de transacción, referencias externas de Stripe y resultados de confirmación de pagos.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Interfaz</strong></td>
      <td style="padding: 10px; border: 1px solid;">IPaymentRepository</td>
    </tr>
  </tbody>
</table>

<br>

##### AccountRepository

<p><em>Tabla de AccountRepository en el Infrastructure Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Propiedad</th>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Valor</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Nombre</strong></td>
      <td style="padding: 10px; border: 1px solid;">AccountRepository</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Repositorio</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Persistir y consultar cuentas de negocio creadas a partir de una suscripción activa, incluyendo el identificador del propietario, miembros asociados y referencia a la suscripción.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Interfaz</strong></td>
      <td style="padding: 10px; border: 1px solid;">IAccountRepository</td>
    </tr>
  </tbody>
</table>

<br>

##### SubscriptionPaymentDbContext

<p><em>Tabla de SubscriptionPaymentDbContext en el Infrastructure Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Propiedad</th>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Valor</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Nombre</strong></td>
      <td style="padding: 10px; border: 1px solid;">SubscriptionPaymentDbContext</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">ORM Context</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Punto central de configuración de Entity Framework para mapear las entidades del Bounded Context a la base de datos, incluyendo Subscription, Plan, Payment y Account.</td>
    </tr>
  </tbody>
</table>

<br>

##### StripePaymentGateway

<p><em>Tabla de StripePaymentGateway en el Infrastructure Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Propiedad</th>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Valor</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Nombre</strong></td>
      <td style="padding: 10px; border: 1px solid;">StripePaymentGateway</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">External Service Wrapper</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Integrar la API de Stripe para crear sesiones u órdenes de pago, procesar cobros y obtener referencias externas de transacción.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Interfaz</strong></td>
      <td style="padding: 10px; border: 1px solid;">IPaymentGateway</td>
    </tr>
  </tbody>
</table>

<br>

##### StripeWebhookHandler

<p><em>Tabla de StripeWebhookHandler en el Infrastructure Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Propiedad</th>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Valor</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Nombre</strong></td>
      <td style="padding: 10px; border: 1px solid;">StripeWebhookHandler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Webhook Handler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Recibir y validar eventos enviados por Stripe, como pagos aceptados, pagos fallidos o actualizaciones de estado, para transformarlos en comandos o eventos internos del sistema.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Interfaz</strong></td>
      <td style="padding: 10px; border: 1px solid;">IStripeWebhookVerifier</td>
    </tr>
  </tbody>
</table>

<br>

##### DomainEventPublisher

<p><em>Tabla de DomainEventPublisher en el Infrastructure Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Propiedad</th>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Valor</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Nombre</strong></td>
      <td style="padding: 10px; border: 1px solid;">DomainEventPublisher</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Message Broker Publisher</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Publicar eventos de dominio generados por este bounded context, como SubscriptionActivatedEvent, AccountCreatedEvent o SubscriptionUpgradedEvent, para que otros contextos puedan reaccionar de forma desacoplada.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Interfaz</strong></td>
      <td style="padding: 10px; border: 1px solid;">IDomainEventPublisher</td>
    </tr>
  </tbody>
</table>

<br>

##### ExternalContextEventConsumer

<p><em>Tabla de ExternalContextEventConsumer en el Infrastructure Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Propiedad</th>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Valor</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Nombre</strong></td>
      <td style="padding: 10px; border: 1px solid;">ExternalContextEventConsumer</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Message Broker Consumer</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Consumir eventos relevantes emitidos por otros bounded contexts cuando se requiera sincronizar información de cuentas, perfiles, recursos o permisos relacionados con una suscripción.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Interfaz</strong></td>
      <td style="padding: 10px; border: 1px solid;">IIntegrationEventConsumer</td>
    </tr>
  </tbody>
</table>

#### 4.2.2.5. Bounded Context Software Architecture Component Level Diagrams

En esta sección se presentan los diagramas de componentes del bounded context **Subscriptions and Payments**, mostrando su comportamiento y responsabilidades desde tres perspectivas: aplicación web, aplicación móvil y backend. Cada diagrama refleja cómo este bounded context interactúa con otros contextos o servicios únicamente cuando dichas interacciones son necesarias para la gestión del ciclo de vida de suscripciones y pagos.

##### Web Application Component Diagram

Este diagrama representa la implementación del bounded context **Subscriptions and Payments** en la aplicación web. Se muestra cómo el componente web permite a los usuarios visualizar beneficios, seleccionar planes y gestionar la renovación o cancelación de suscripciones. Asimismo, se evidencia la interacción directa con el backend mediante solicitudes HTTP y la integración con **Stripe** para iniciar y redirigir el proceso de pago. Además, el componente utiliza funcionalidades compartidas a través del módulo **Shared** para la reutilización de utilidades comunes.

<img src="https://i.ibb.co/HTVxgpJc/backend-Suscription.png" alt="Web Subscriptions and Payments Component Diagram" width="100%">

##### Mobile Application Component Diagram

Este diagrama muestra la implementación del bounded context **Subscriptions and Payments** en la aplicación móvil. El componente permite consultar el estado actual de la suscripción, así como realizar acciones de renovación o cancelación. Se observa la comunicación con el backend para la gestión del estado de la suscripción y la persistencia de la información en la base de datos. También se incluye la integración con **Stripe**, donde la aplicación inicia el proceso de pago y redirige al usuario para completarlo.

<img src="https://i.ibb.co/TDYJ28dG/mobile-Suscription.png" alt="Mobile Subscriptions and Payments Component Diagram" width="100%">

##### Backend Application Component Diagram

Este diagrama representa la lógica central del bounded context **Subscriptions and Payments** en el backend. Se muestra cómo este componente gestiona el ciclo de vida completo de las suscripciones (adquisición, renovación y cancelación), interactuando con el contexto de **Identity and Access Management** para validar la identidad del usuario y registrar cuentas. Asimismo, se integra con **Profile and Preferences** para asociar la suscripción con el perfil de negocio del usuario. El componente persiste información relevante en la base de datos y se integra con **Stripe** para la creación de sesiones de pago y el procesamiento de transacciones.

<img src="https://i.ibb.co/NgLNRZxy/api-Suscription.png" alt="Backend Subscriptions and Payments Component Diagram" width="100%">

#### 4.2.2.6. Bounded Context Software Architecture Code Level Diagrams

##### 4.2.2.6.1. Bounded Context Domain Layer Class Diagrams

En esta sección, el equipo presenta el Diagrama de Clases detallado para la Domain Layer del Bounded Context de Asset and Suscriptions and Payments.

<a href="https://ibb.co/gbpdN50n">
<img src="https://i.ibb.co/gbpdN50n/uml-suscription.png" alt="uml-suscription" border="0"></a>

##### 4.2.2.6.2. Bounded Context Database Design Diagram

En esta sección, el equipo presenta el diagrama de Base de Datos detallado para la Domain Layer del Bounded Context de Suscriptions and Payments.

<img src="assets/images/chapter4/bc-monitoring/db_diagram_suscriptions.png" alt="bd-suscriptions" border="0"></a>

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
