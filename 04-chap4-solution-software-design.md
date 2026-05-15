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

#### 4.1.1.3 Bounded Context Canvases

### 4.1.2. Context Mapping

En esta sección se explica el proceso de elaboración del Context Map. Asimismo, se permite visualizar las relaciones estructurales entre los Bounded Contexts, junto con los patrones de relación definidos en Domain-Driven Design (DDD), tales como Anti-Corruption Layer (ACL), Conformist, Customer/Supplier y Shared Kernel.

Posterior al análisis del Event Storming, la información del dominio y el debate grupal, se identificaron los siguientes Bounded Contexts principales del sistema:

* Profiles and Preferences (PAP)
* Identity and Access Management (IAM)
* Subscriptions and Payments (SAP)
* Asset and Resource Management (ARM)
* Service Design and Planning (SDP)
* Sales Order Management (SOM-ORD)
* Service Operation and Monitoring (SOM)
* Alerts and Notifications (A&N)

**Profiles and Preferences (PAP) – Identity and Access Management (IAM)**

En esta relación se identifica la interacción entre Profiles and Preferences (PAP) e Identity and Access Management (IAM), dos Bounded Contexts vinculados a la gestión de usuarios dentro del sistema.

![pap-iam](https://imgur.com/s5If7EN.png)

En esta relación se identifica el patrón Conformist, debido a que Profiles and Preferences (PAP) adopta el modelo definido por Identity and Access Management (IAM) sin modificarlo. IAM actúa como upstream al encargarse de la autenticación, la validación de credenciales y el control de acceso al sistema, mientras que PAP actúa como downstream, enriqueciendo la información del usuario mediante preferencias, configuración y datos adicionales del perfil. Esta relación permite evitar duplicidad en la lógica de autenticación y centraliza la administración de identidad dentro del sistema.

**Identity and Access Management (IAM) – Subscriptions and Payments (SAP)**

En esta relación se presenta la conexión entre Identity and Access Management (IAM) y Subscriptions and Payments (SAP), ambos contextos necesarios para validar el acceso y las condiciones de uso del sistema.

![iam-sap](https://imgur.com/6noVk2J.png)

En esta relación se identifica el patrón Customer/Supplier. IAM actúa como supplier al proporcionar la identidad del usuario autenticado, mientras que SAP actúa como customer al utilizar dicha identidad para gestionar suscripciones y validar pagos. Esta relación permite mantener el desacoplamiento entre la gestión de acceso y la administración de pagos, evitando que la lógica de suscripción dependa directamente de la lógica de autenticación. Además, SAP puede integrarse con servicios externos como Stripe sin afectar el núcleo del dominio.

**Subscriptions and Payments (SAP) – Asset and Resource Management (ARM)**

En esta relación se analiza la conexión entre Subscriptions and Payments (SAP) y Asset and Resource Management (ARM), orientada al control de capacidades disponibles según el plan contratado.

![sap-arm](https://imgur.com/LkqtkwA.png)

En esta relación se identifica el patrón Customer/Supplier. Subscriptions and Payments (SAP) actúa como upstream al definir las restricciones del negocio, como los límites de uso según el plan contratado. Por su parte, Asset and Resource Management (ARM) actúa como downstream al depender de SAP para determinar la cantidad de sucursales permitidas, los dispositivos IoT autorizados y el volumen de inventario gestionable. Esta relación asegura que las capacidades del sistema permanezcan alineadas con las condiciones de suscripción del negocio.

**Service Operation and Monitoring (SOM) – Asset and Resource Management (ARM)**

En esta relación se presenta la interacción entre Service Operation and Monitoring (SOM) y Asset and Resource Management (ARM), donde se integran datos provenientes de dispositivos IoT con el modelo central de inventario.

![som-arm](https://imgur.com/YcY4j4u.png)

En esta relación se identifica el patrón Anti-Corruption Layer (ACL). Service Operation and Monitoring (SOM) procesa datos provenientes de dispositivos IoT, como telemetría, peso y señales, los cuales no siguen directamente el modelo del dominio. Para evitar que dicha complejidad técnica contamine el núcleo del negocio, se implementa un ACL que transforma los datos crudos en conceptos del dominio, como stock físico, discrepancias y niveles de inventario. De esta manera, ARM recibe información ya interpretada y mantiene la integridad de su modelo de negocio. Esta decisión arquitectónica resulta fundamental para preservar la claridad y consistencia del dominio.

**Asset and Resource Management (ARM) – Sales Order Management (SOM-ORD)**

En esta relación se analiza la conexión entre Asset and Resource Management (ARM) y Sales Order Management (SOM-ORD), dos contextos que interactúan directamente con el inventario y el consumo de productos.

![arm-som-ord](https://imgur.com/U671HR9.png)

En esta relación se identifica el patrón Customer/Supplier. ARM actúa como supplier al proporcionar la información del inventario disponible, mientras que SOM-ORD actúa como customer al consumir dicha información para registrar ventas, descontar stock y validar la disponibilidad de productos. Esta relación permite que la lógica de ventas opere sobre una fuente confiable de inventario, manteniendo la coherencia entre las operaciones comerciales y el estado real del stock.

**Service Design and Planning (SDP) – Sales Order Management (SOM-ORD)**

En esta relación se presenta la interacción entre Service Design and Planning (SDP) y Sales Order Management (SOM-ORD), ambos contextos vinculados al uso compartido de insumos y cantidades.

![sdp-som-ord](https://imgur.com/visV5Uv.png)

En esta relación se identifica el patrón Shared Kernel, debido a que ambos contextos comparten el concepto de insumo o producto (supply item) y su cantidad. SDP gestiona las recetas, donde cada una depende de determinados insumos, mientras que SOM-ORD registra las ventas, las cuales consumen esos mismos insumos. El uso de un Shared Kernel permite mantener consistencia en unidades, cantidades y definiciones de insumos, evitando duplicación de lógica y reduciendo errores en el cálculo del inventario. Esta relación resulta clave para garantizar coherencia entre la planificación del servicio y la operación de venta.

**Service Operation and Monitoring (SOM) – Alerts and Notifications (A&N)**

En esta relación se expone la conexión entre Service Operation and Monitoring (SOM) y Alerts and Notifications (A&N), donde los eventos generados por el monitoreo son convertidos en mensajes para el usuario final.

![som-a&n](https://imgur.com/af4oBIu.png)

En esta relación se identifica el patrón Conformist. SOM actúa como upstream al generar eventos como anomalías de stock, discrepancias y umbrales críticos, mientras que A&N actúa como downstream al consumir dichos eventos sin modificarlos y transformarlos en notificaciones mediante canales como push o correo electrónico. Esta relación permite que el contexto de notificaciones permanezca simple y orientado únicamente a la entrega de mensajes, sin intervenir en la lógica de negocio que origina los eventos.

**Asset and Resource Management (ARM) – Alerts and Notifications (A&N)**

En esta relación se presenta la interacción entre Asset and Resource Management (ARM) y Alerts and Notifications (A&N), orientada a la comunicación de eventos relevantes sobre inventario y recursos.

![arm-a&n](https://imgur.com/y6C6wCI.png)

En esta relación también se identifica el patrón Conformist. ARM genera eventos relacionados con cambios en inventario, reposiciones y estados críticos, mientras que A&N actúa como downstream al traducir estos eventos en notificaciones dirigidas al usuario final. Este enfoque permite que el sistema de alertas se mantenga desacoplado del núcleo del inventario, concentrándose únicamente en la difusión de información relevante y oportuna.

**Final Context Map**

En esta etapa final se sintetiza la lógica general del Context Map y se destacan las decisiones arquitectónicas más relevantes adoptadas por el equipo.

![context-map](https://imgur.com/Pc2tCLM.png)

El diseño final del Context Map permite centralizar la lógica de negocio en Asset and Resource Management (ARM) como núcleo del dominio. Asimismo, permite aislar la complejidad técnica de IoT mediante un Anti-Corruption Layer (ACL), mantener consistencia del dominio compartido a través de Shared Kernel, reducir el acoplamiento mediante relaciones Customer/Supplier y simplificar contextos de salida mediante Conformist. En conjunto, este enfoque garantiza un sistema escalable, desacoplado y alineado con las necesidades del negocio, permitiendo integrar sensores IoT, automatizar el control de inventario y mejorar la toma de decisiones operativas en PyMEs del sector gastronómico y retail.

### 4.1.3. Software Architecture

En esta sección se presentan los diagramas de arquitectura de software basados en el modelo C4, los cuales permiten describir la estructura del sistema Restock a diferentes niveles de detalle.

#### 4.1.3.1. Software Architecture System Landscape Diagram

En esta sección se presenta una visión general de los principales usuarios, sistemas externos y componentes internos que interactúan con la plataforma.

Para Restock, el diagrama de panorama del sistema incluye los siguientes elementos principales:

<img src="https://i.imgur.com/AA0vP21.png" alt="System Landscape Diagram para identificar participantes y aplicaciones internas, usuarios objetivo y sistemas externos." width="600px">

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
