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
  <img src="https://imgur.com/fTgbd9E.png" alt="event">
  <img src="https://imgur.com/j9OFNTa.png" alt="event">
  <img src="https://imgur.com/cRDqY8F.png" alt="event">
</div>

El equipo identificó los eventos de dominio agrupados por columnas, representando los distintos flujos del sistema. 

#### Paso 2: Timelines

El segundo paso consistió en organizar los eventos de dominio dentro de líneas de tiempo por cada contexto del sistema. El objetivo fue establecer el orden cronológico natural en que los hechos ocurren dentro de cada flujo, agrupándolos bajo sus respectivos encabezados de contexto.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/pISgB60.png" alt="time-line">
  <img src="https://imgur.com/yUTo02r.png" alt="time-line">
  <img src="https://imgur.com/vjb4mf6.png" alt="time-line">
</div>

El equipo organizó los eventos en secuencias horizontales ordenadas bajo once contextos claramente etiquetados: IAM Identity and Access Management, Managing personal and business profiles, Plans and payment, Branch creation and management, Registration and management of customized supplies, Recipes and Kits, Batch and stock registration, Sales register, Device registration and configuration, Telemetry, stock and thresholds y Communications center. Cada línea de tiempo muestra los eventos en el orden en que ocurren naturalmente dentro del flujo de negocio correspondiente, permitiendo al equipo verificar que la narrativa del sistema sea coherente y completa de extremo a extremo.

#### Paso 3: Paint Point

El tercer paso incorporó la identificación de los puntos de dolor o tambien llamados paint point dentro de los flujos ya organizados. Los pain points se representan con tarjetas en forma de rombo de color rosa y señalan fricciones, dudas, riesgos o decisiones de diseño pendientes que el equipo detectó al revisar las líneas de tiempo.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/NGzzOlA.png" alt="paint-point">
  <img src="https://imgur.com/flx9ps8.png" alt="paint-point">
  <img src="https://imgur.com/PGu5p87.png" alt="paint-point">
  <img src="https://imgur.com/90q0dd4.png" alt="paint-point">
</div>

El equipo incorporó pain points en los contextos donde surgieron preguntas sin resolver. En IAM se marcó un pain point relacionado con el proceso de registro, preguntando qué información mínima se requiere para completar el alta de una cuenta. En Branch creation and management se levantó una pregunta sobre el comportamiento del sistema cuando no se adjunta una imagen al registrar una sucursal. En Registration and management of customized supplies se planteó la misma interrogante respecto a la imagen del insumo personalizado. En Recipes and Kits se identificaron pain points tanto en la receta como en el kit, relacionados con qué información adicional debe consultarse antes de registrarlos y qué ocurre cuando no se proporciona una imagen. En Sales register se levantó una pregunta sobre qué información de precio o condición debe validarse antes de confirmar la venta. Estos puntos quedaron visibles en el tablero como señales de alerta para ser resueltos en iteraciones posteriores del diseño.

#### Paso 4: Pivotal Points

El cuarto paso incorporó la identificación de los pivotal points dentro de los flujos ya organizados. Estos puntos se representan como las líneas o momentos de transición más relevantes dentro del recorrido, y permiten visualizar dónde ocurre un cambio significativo en la dirección, el contexto o la decisión del proceso. Su identificación ayudó a comprender cómo se conectan las distintas etapas del negocio y cuáles son los momentos clave que estructuran la experiencia analizada.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/gsg4IUH.png" alt="pivotal-point">
  <img src="https://imgur.com/jOwxT1W.png" alt="pivotal-point">
  <img src="https://imgur.com/w3N0Ahv.png" alt="pivotal-point">
  <img src="https://imgur.com/RLkltIc.png" alt="pivotal-point">
  <img src="https://imgur.com/8ROOM3c.png" alt="pivotal-point">
  <img src="https://imgur.com/92OfBoP.png" alt="pivotal-point">
</div>

En este paso, el equipo reconoció pivotal points en los contextos donde el flujo presenta una transición importante. En IAM, se observó el momento en que el visitante pasa del acceso general al inicio del registro como usuario. En Branch creation and management, se identificó el punto en el que la intención de crear una sucursal se transforma en el registro formal de sus datos. En Registration and management of customized supplies, el flujo cambia cuando se pasa de la gestión general del inventario al alta específica de un insumo personalizado. En Recipes and Kits, los pivotal points aparecen cuando el actor debe definir la composición necesaria para registrar una receta o un kit. En Batch and stock registration, el punto crítico se ubica en la transición hacia la confirmación de una venta. Finalmente, en Service Operation and Monitoring y Communications no se identificaron pivotal points relevantes, debido a que sus flujos mantienen una secuencia continua sin cambios de dirección marcados.

#### Paso 5: Commands

El quinto paso consistió en identificar los comandos del sistema. Un comando representa la intención de un actor de provocar un cambio de estado en el dominio. Los comandos se representan con tarjetas de color azul y se ubican inmediatamente antes del evento de dominio que producen.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/WiLGvE1.png" alt="commands">
  <img src="https://imgur.com/xP7cZaQ.png" alt="commands">
  <img src="https://imgur.com/Gt8pBlI.png" alt="commands">
</div>

El equipo incorporó los comandos en cada línea de tiempo. En IAM se definieron: Sign up, Sign in y Register new user for account. En Managing personal and business profiles: Create user profile, Change Password, Update personal data y Register new business. En Plans and payment: Select subscription plan, Configure plan limits, Update plan limits y Pay subscription plan. En Branch creation and management: Create branch, Edit branch y Delete branch. En Registration and management of customized supplies: Register Custom Supply y Edit Custom Supply. En Recipes and Kits: Register recipe, Edit recipe, Register Kit y Edit Kit. En Batch and stock registration: Register batch. En Sales register: Register sale, Calculate total price y Show sales. En Device registration and configuration: Register new device, Configure a device y Deactivate device. En Telemetry, stock and thresholds: Calculate stock, Status check, Register threshold, Edit threshold y Verify threshold. En Communications center: Generate new notification y Show the notification.

#### Paso 6: Policies and Actors

El sexto paso incorporó al modelo los actores y las políticas del sistema. Los actores son los roles de personas que interactúan con el sistema emitiendo comandos, representados con tarjetas pequeñas de color amarillo. Las políticas son reglas de negocio automáticas que, ante la ocurrencia de un evento, disparan un nuevo comando sin intervención humana directa, representadas con tarjetas de color lila.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/mbnSUbF.png" alt="policies-actors">
  <img src="https://imgur.com/WT6atlH.png" alt="policies-actors">
  <img src="https://imgur.com/4ILKDjJ.png" alt="policies-actors">
  <img src="https://imgur.com/gCyWyW1.png" alt="policies-actors">
</div>

El equipo identificó como actores principales al Retail Manager y al Branch Manager, presentes en la totalidad de los contextos del sistema. El actor Visitor fue identificado únicamente en el contexto de IAM para el flujo de registro inicial. Las políticas fueron incorporadas en los flujos donde el sistema debe reaccionar automáticamente ante ciertos eventos: en Plans and payment se definió una política que activa el plan de suscripción una vez que el pago es aceptado; en Telemetry, stock and thresholds se identificó una política que genera una tarea de conciliación automáticamente al detectarse una anomalía de stock; en Device registration and configuration se definió una política que deshabilita la ingesta de telemetría ante ciertos eventos del dispositivo; y en Communications center se identificó una política que dispara el envío de notificaciones en respuesta a eventos de alerta del sistema.

#### 4.1.1.1 Candidate Context Discovery

Luego de identificar los eventos, flujos, comandos y políticas del dominio, el equipo avanzó con la detección de contextos candidatos. Esta fase les permitió organizar los elementos vinculados de acuerdo con su cohesión funcional y las reglas de negocio que compartían, lo que facilitó la definición de los futuros Bounded Contexts. De este modo, el equipo logro modelar el dominio de Restock en contextos con responsabilidades claramente separadas.

#### Paso 7: Read models

El séptimo paso consistió en identificar los modelos de lectura (read models) del sistema. Los read models se representan con tarjetas de color verde y corresponden a las vistas o proyecciones de datos que los actores necesitan consultar para poder tomar una decisión y emitir un comando.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/SfMIuAC.png" alt="read-models">
  <img src="https://imgur.com/LBUJFwz.png" alt="read-models">
  <img src="https://imgur.com/1EfRZUB.png" alt="read-models">
  <img src="https://imgur.com/RwejYIg.png" alt="read-models">
</div>

El equipo incorporó los read models en los puntos del flujo donde el actor necesita información disponible antes de actuar. En IAM se identificó la vista de Login. En Managing personal and business profiles se definió la vista de Profile settings. En Branch creation and management se identificó la vista de Branch Management. En Registration and management of customized supplies se definió la vista de Custom Supply Management. En Recipes and Kits se identificaron las vistas de Recipe Catalog y Kit Catalog, que permiten al manager consultar el catálogo existente antes de seleccionar un ítem para editarlo. En Batch and stock registration se definió la vista de Batch Management. En Sales register se identificó la vista de Sales Management. En Device registration and configuration se definió la vista de Device Management. Estos read models garantizan que los actores cuenten con el contexto necesario en cada punto de decisión del flujo.

#### Paso 8: External Systems

El octavo paso consistió en incorporar al modelo los sistemas externos con los que el sistema interactúa. Los sistemas externos se representan con tarjetas de color rosa oscuro y corresponden a servicios o plataformas fuera del dominio propio que participan en los flujos de negocio.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/6I1JkzM.png" alt="external-systems">
  <img src="https://imgur.com/fatvFGG.png" alt="external-systems">
  <img src="https://imgur.com/f0lHtoK.png" alt="external-systems">
</div>

El equipo identificó tres sistemas externos a partir del PDF. El primero es Cloudinary API, presente en los contextos de Managing personal and business profiles, Branch creation and management, Registration and management of customized supplies y Recipes and Kits, siendo responsable de la carga, almacenamiento y recuperación de imágenes del sistema. El segundo es Stripe, integrado en el contexto de Plans and payment, encargado de procesar los pagos de suscripción. El tercero es OneSignal API, integrado en el contexto de Communications center, responsable del envío de notificaciones push a los usuarios del sistema.

#### Paso 9: Add Aggregates

El noveno paso consistió en identificar los agregados del dominio y agrupar en torno a ellos los comandos, eventos y políticas correspondientes. Los agregados se representan con tarjetas de color amarillo de mayor tamaño y constituyen la unidad de consistencia del dominio, encapsulando la lógica de negocio dentro de sus límites.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/gDA5QZR.png" alt="aggregates">
  <img src="https://imgur.com/awlhM6c.png" alt="aggregates">
  <img src="https://imgur.com/R0iS8HY.png" alt="aggregates">
  <img src="https://imgur.com/h5qQXCg.png" alt="aggregates">
</div>

El equipo identificó los agregados que estan organizados por contexto. En IAM se definió el agregado User. En Managing personal and business profiles se identificaron Profile y Business. En Plans and payment se definieron Subscription y Account. En Branch creation and management se identificaron Branch e Inventory. En Registration and management of customized supplies se definieron Custom Supply y Device. En Recipes and Kits se identificaron Recipe y Kit. En Batch and stock registration se definió Batch. En Sales register se identificó Sales Order. En Device registration and configuration se definieron Device Health y Conciliation Task. En Telemetry, stock and thresholds se identificaron Stock Record y Supply Threshold. En Communications center se definió el agregado Notification.

A partir del modelo de Event Storming, se llevó a cabo una sesión de Candidate Context Discovery para identificar los bounded contexts de la solución. Se utilizó principalmente la técnica look-for-pivotal-events durante la sesión.

Primero, se buscaron eventos clave que indiquen cambios de estado entre diferentes partes del proceso del negocio:

<img src="assets/images/chapter4/candidate_context/candidate_step1.png" alt=“DDD” width="500px">

Luego, se agruparon los eventos de acuerdo a los principales cambios de contexto.

<img src="assets/images/chapter4/candidate_context/candidate_step2.png" alt=“DDD” width="500px">

Se trazaron fronteras alrededor de los grupos identificados, estableciendo los límites iniciales de los bounded contexts.

<img src="assets/images/chapter4/candidate_context/candidate_step3.png" alt=“DDD” width="500px">

Finalmente, se seleccionaron nombres para los bounded context. Dando como resultado la definición de 8 bounded contexts y la **versión final del Event Storming**:

<img src="https://imgur.com/Ke6dnOH.png" alt=“DDD” width="800px">

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

**Analytics:** También llamado “Analytics”, este bounded context contiene el proceso de análisis y visualización de información relevante del sistema, permitiendo a los usuarios consultar datos como insumos con stock cero, insumos con stock bajo, últimos insumos registrados y alertas recientes. Además, centraliza la presentación de indicadores en un dashboard, facilitando el seguimiento del comportamiento del inventario y el apoyo a la toma de decisiones.

<img src="https://imgur.com/0trAWyu.png" alt=“DDD” width="500px">

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
* **Push Notification Dispatch:** En este flujo se detalla cómo el bounded context de Comunications reacciona a eventos anómalos del sistema, filtrando destinatarios y delegando el envío de alertas a dispositivos móviles mediante una integración con una API externa (OneSignal).

  <img src="assets/images/chapter4/message_flows/push_notification_dispatch.png" alt="Domain Message Flow - Push Notification Dispatch" height="500px">

Adicionalmente, se presentan flujos de escenarios relevantes para el core del negocio, pero que por su alta cohesión resuelven sus procesos sin requerir interacción con otros bounded contexts externos:

* **Subscribe to a plan:** En este flujo se muestra el proceso de onboarding comercial, donde el registro empresarial y la confirmación de pago se orquestan internamente dentro del bounded context de Subscription.

  <img src="assets/images/chapter4/message_flows/subscribe_to_a_plan.png" alt="Domain Message Flow - Subscribe to a plan" height="500px">
* **Record a supply in the inventory:** En este flujo se modela el ingreso manual o la actualización de existencias de un insumo, el cual es procesado exclusivamente dentro del bounded context Resource.

  <img src="assets/images/chapter4/message_flows/record_a_supply_in_the_inventory.png" alt="Domain Message Flow - Record a supply" height="500px">
* **Register a physical branch and assign IoT devices:** En este flujo se evidencia el proceso de digitalización de una nueva sucursal y la vinculación de sus sensores físicos, consolidando entidades fuertemente acopladas dentro del bounded context Resource (Asset and Resource Management) y utilizando una API externa para la gestión de imágenes.

  <img src="assets/images/chapter4/message_flows/register_a_physical_branch_and_assign_devices.png" alt="Domain Message Flow - Register branch and devices" height="500px">

#### 4.1.1.3 Bounded Context Canvases

Un Bounded Context Canvas es una herramienta visual que ayuda a documentar lo necesario para un bounded context identificado. A continuación se describe el diseño de cada contexto, incluyendo la definición del contexto, su clasificación, las reglas de negocio, el lenguaje ubicuo utilizado para este context, y la comunicación de este contexto.

##### Asset and Resource Context

Maneja el proceso de gestión de inventarios para restaurantes y tiendas retail, incluyendo el registro y seguimiento de stock de suministros en las distintas sucursales del negocio del usuario, garantizando que cada usuario sepa el flujo del stock de sus suministros. Además, gestiona el registro y configuración de las balanzas inteligentes, permitiendo la personalización del dispositivo acorde a la necesidad del negocio del usuario.

<div align="center">
  <img src="https://i.imgur.com/0DPMWjC.jpeg" alt="Canvas del contexto de gestión de inventarios y dispositivos IoT">
</div>

El contexto de Asset and Resource representa un Core Domain del negocio, ya que sus funcionalidades son importantes para la diferenciación con otras soluciones y garantizar el éxito de la plataforma. Además, este contexto se encarga, principalmente, del proceso de gestión de inventarios y de la gestión de dispositivos que adquiera el usuario. Por ello, este contexto actúa como ejecutor, siendo el contexto del que dependen otros como Design and Planning, Sales Management y Monitoring.

##### Monitoring Context

Gestiona los dispositivos adquiridos por el usuario, incluyendo la lectura de peso real de los suministros almacenados, la conversión a stock exacto y el estado de salud de los dispositivos. Además, controla el hardware de los dispositivos enviando señales cuando es momento de encenderse o apagarse.

<div align="center">
  <img src="https://i.imgur.com/YhA5Wul.jpeg" alt="Canvas del contexto de monitoreo de datos de los dispositivos IoT">
</div>

El contexto de Monitoring representa un Core Domain dentro del negocio, ya que sus funcionalidades diferencian a la solución de otras y ayudan a enganchar una mayor cantidad de usuarios. Además, sus funcionalidades incluyen la lectura, transformación e informe de datos reales de peso de los suministros de los usuarios. Es por ello, que este contexto actúa como un contexto de ejecución. También, es importante para el contexto de Asset and Resource donde se realiza una comparación entre stock físico y digital.

##### Design and Planning Context

Gestiona el proceso de diseño y planeamiento de recetas para restaurantes y kits de productos para tiendas retail, incluyendo asignación de suministros para registrar recetas o kits y asignación de imágenes referenciales a las recetas o kits, garantizando una mejor operación de ventas para el contexto de ventas al no tener que registrar mano a mano los suministros usados para concretar una venta.

<div align="center">
  <img src="https://i.imgur.com/1yUJIoY.jpeg" alt="Canvas del contexto de kits y recetas">
</div>

El contexto de Design and Planning representa un Supporting Domain enfocado en enganchar usuarios ya que provee de una base para el registro de ventas para el contexto de Sales, además facilita el reconocimiento de platos o kits que utiliza el negocio para sus ventas diarias. 

##### Sales Management Context

Gestiona las ventas registradas de un restaurante o tienda retail, incluyendo la asignación de suministros para registrar una venta o utilizar kits o recetas previamente registradas y el cálculo inmediato del precio total a pagar, facilitando el proceso de registro de ventas para los administradores.

<div align="center">
  <img src="https://i.imgur.com/TSRfkg3.jpeg" alt="Canvas del contexto de gestión de ventas">
</div>

El contexto de Sales Management representa un Supporting Domain enfocado en atraer y enganchar usuarios a la aplicación ya que provee una herramienta que facilita el proceso de ventas de restaurantes y tiendas retail. Además, ayuda al sistema de ventas mostrando el total de ventas de determinados periodos y qué productos se vendieron para cada transacción realizada. 

##### Subscriptions Context

Se encarga de gestionar el ciclo de vida de las suscripciones en plataformas SaaS y el procesamiento de pagos de las mismas, incluyendo la adquisición de una suscripción y la renovación o cancelación de la misma y el procesamiento externo con una integración con la pasarela de pagos de Stripe.

<div align="center">
  <img src="https://i.imgur.com/QzxMqhx.jpeg" alt="Canvas del contexto de subscripciones y pagos">
</div>

El contexto de Subscripciones representa un Supporting Domain con enfoque en generar ingresos, pues es el puente que determina si el usuario puede acceder a todas las herramientas de la plataforma y es la que genera ingresos directamente al brindar una licencia temporal a los usuarios que decidan pagar una y beneficiarse con las herramientas.

##### Profiles Context

Gestiona los perfiles de los usuarios, los cuales incluyen información personal e información relacionada a los negocios de los usuarios, permitiendo actualizar la información requerida y personalización subiendo una avatar con la integración con Cloudinary.

<div align="center">
  <img src="https://i.imgur.com/hTyxVwj.jpeg" alt="Canvas del contexto de perfiles de usuario y negocio">
</div>

El contexto de Profiles representa un Generic Domain enfocado en enganche de usuarios, dado que un perfil personalizado provee de una experiencia más satisfactoria para el usuario. Además, provee de una identidad tanto como para él como para su negocio dentro de la plataforma.

##### IAM Context

Gestiona la autenticación y autorización de los usuarios, incluyendo el registro de cuentas para visitantes, la asignación de roles para diferenciar entre tienda retail y restaurante. Además, este contexto contiene un flujo de procesos que inicia desde la elección y pago de un plan para suscripción, el registro del usuario, registro de información personal y registro de información de negocio.

<div align="center">
  <img src="https://i.imgur.com/1dYjnEj.jpeg" alt="Canvas del contexto de autenticación">
</div>

El contexto de IAM representa un Generic Domain enfocado en el cumplimiento de seguridad para las cuentas de los usuarios que deciden confiar en la plataforma para gestionar sus negocios. Además, garantizar la seguridad es algo importante para el negocio, sin embargo, no es algo que diferencie la solución de otras ya existentes.

##### Communications Context

Gestiona la comunicación directa con el usuario, incluyendo alertar y notificar a los usuarios de eventos críticos que ocurran en la plataforma como stock bajo, stock cero o vencimiento próximo, hasta la concialiación entre stock físico y digital.

<div align="center">
  <img src="https://i.imgur.com/G0yVup3.jpeg" alt="Canvas del contexto de comunicación con el usuario">
</div>

El contexto de Communications representa un Supporting Domain enfocado en enganche de usuarios dadas sus funcionalidades de notificación ante eventos críticos que facilitan el accionar y la toma de decisiones ante estos eventos.

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
- **Patrón:** Shared Kernel — IAM provee al contexto de suscripciones de una relación con el usuario dueño de la cuenta y suscripción.

##### IAM ↔ Profile and Preferences

- **Relación:** Upstream (IAM) / Downstream (Profile and Preferences)
- **Patrón:** Anti-Corruption Layer — Profile and Preferences consume el modelo de identidad de IAM pero lo traduce a través de un ACL para construir el perfil del usuario. Esto protege al dominio de preferencias de ser contaminado con el lenguaje propio de la autenticación.
- **Patrón:** Shared Kernel — IAM provee al contexto de perfiles de una relación con el usuario cuya información de negocio y personal está siendo usada por el contexto de perfiles.

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

![context-map](https://i.imgur.com/rBIqFn7.jpeg)

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

<img src="https://i.ibb.co/Z6SpWJsK/Production-Deployment-dark.png"       alt="Production Deployment Diagram"      style="width:100%; height:auto;">

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

La capa de dominio representa el núcleo de negocio del Bounded Context de Subscriptions and Payments. En esta capa se encapsulan las reglas relacionadas con la gestión de planes de suscripción, activación de beneficios, control de límites contratados, procesamiento conceptual de pagos y creación de cuentas de negocio asociadas a una suscripción activa.

Este bounded context funciona como el punto de entrada comercial del sistema, debido a que el usuario selecciona un plan, registra sus datos de pago, confirma la transacción mediante Stripe y, a partir de ello, se activa el plan contratado. Una vez aceptado el pago, el contexto emite los eventos necesarios para crear la cuenta de negocio, asociar al usuario propietario y habilitar los recursos iniciales que luego serán utilizados por otros bounded contexts, como Profile and Preferences, Identity and Access Management y Asset and Resource Management.

Esta capa se mantiene independiente de frameworks, mecanismos de persistencia, servicios externos o detalles de infraestructura. Se compone de Aggregate Roots, Entities, Value Objects, Domain Events y Repository Interfaces.

##### Aggregates & Entities

Estas clases representan los conceptos principales del dominio y garantizan la consistencia transaccional dentro del contexto de suscripciones, pagos y cuentas.

<p><em>Tabla de Aggregates en el Domain Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Nombre de Clase</th>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Categoría</th>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Propósito y Reglas de Negocio</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Subscription</strong></td>
      <td style="padding: 10px; border: 1px solid;">Aggregate Root</td>
      <td style="padding: 10px; border: 1px solid;">Representa la suscripción contratada por una cuenta de negocio. Controla el ciclo de vida del plan, su estado de activación, renovación, expiración o actualización. Garantiza que una cuenta tenga un único plan activo a la vez.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Plan</strong></td>
      <td style="padding: 10px; border: 1px solid;">Entity</td>
      <td style="padding: 10px; border: 1px solid;">Representa una plantilla comercial de beneficios, precios y límites. Define qué recursos, cuotas o capacidades quedan disponibles para la cuenta según el tipo de suscripción seleccionada.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Payment</strong></td>
      <td style="padding: 10px; border: 1px solid;">Aggregate Root</td>
      <td style="padding: 10px; border: 1px solid;">Representa el proceso de pago asociado a una suscripción. Registra el estado de la operación, la referencia externa de Stripe y la confirmación necesaria para activar el plan contratado.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Account</strong></td>
      <td style="padding: 10px; border: 1px solid;">Aggregate Root</td>
      <td style="padding: 10px; border: 1px solid;">Representa la cuenta de negocio creada después de la confirmación del pago. Recibe el identificador del usuario propietario y el identificador de la suscripción activa para iniciar la operación del negocio dentro del sistema.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>AccountMembership</strong></td>
      <td style="padding: 10px; border: 1px solid;">Entity</td>
      <td style="padding: 10px; border: 1px solid;">Representa la asociación entre un usuario y una cuenta de negocio. Permite modelar propietarios, trabajadores o administradores vinculados a una cuenta, evitando guardar únicamente una lista simple de usuarios.</td>
    </tr>
  </tbody>
</table>

<br>

##### Value Objects

Estas clases modelan conceptos propios del dominio y permiten evitar el uso indiscriminado de tipos primitivos. Son inmutables y aseguran que la información crítica del dominio sea válida desde su creación.

<p><em>Tabla de Value Objects en el Domain Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Nombre de Clase</th>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Categoría</th>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Propósito y Reglas de Negocio</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>PlanLimits</strong></td>
      <td style="padding: 10px; border: 1px solid;">Value Object</td>
      <td style="padding: 10px; border: 1px solid;">Agrupa los límites del plan contratado, como número máximo de sucursales, usuarios, dispositivos IoT o recursos permitidos. Previene límites negativos o inconsistentes.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Money</strong></td>
      <td style="padding: 10px; border: 1px solid;">Value Object</td>
      <td style="padding: 10px; border: 1px solid;">Representa montos monetarios asociados a pagos, renovaciones o upgrades. Encapsula importe y moneda para evitar errores de cálculo o confusión entre divisas.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>BillingPeriod</strong></td>
      <td style="padding: 10px; border: 1px solid;">Value Object</td>
      <td style="padding: 10px; border: 1px solid;">Define el periodo de facturación de la suscripción, como mensual o anual, así como las fechas de inicio y término del ciclo activo.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>PaymentStatus</strong></td>
      <td style="padding: 10px; border: 1px solid;">Value Object</td>
      <td style="padding: 10px; border: 1px solid;">Representa el estado del pago, como pendiente, aceptado, rechazado o reembolsado. Permite condicionar la activación del plan solo cuando el pago ha sido confirmado.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>SubscriptionStatus</strong></td>
      <td style="padding: 10px; border: 1px solid;">Value Object</td>
      <td style="padding: 10px; border: 1px solid;">Representa el estado de la suscripción, como activa, expirada, cancelada o pendiente. Controla que los beneficios del plan solo estén disponibles cuando corresponda.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>SubscriptionId, AccountId, UserId, PaymentId</strong></td>
      <td style="padding: 10px; border: 1px solid;">Value Object</td>
      <td style="padding: 10px; border: 1px solid;">Identificadores fuertemente tipados para evitar confusiones entre entidades del mismo bounded context o referencias provenientes de otros contextos.</td>
    </tr>
  </tbody>
</table>

<br>

##### Repository Interfaces

Las abstracciones de persistencia se definen en esta capa para cumplir el Principio de Inversión de Dependencias. El dominio declara qué necesita guardar o consultar, sin depender de la tecnología utilizada en la base de datos.

<p><em>Tabla de Abstracciones de Repositorio en el Domain Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Nombre de Interfaz</th>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Categoría</th>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Propósito</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>ISubscriptionRepository</strong></td>
      <td style="padding: 10px; border: 1px solid;">Repository Interface</td>
      <td style="padding: 10px; border: 1px solid;">Contrato para registrar, consultar y actualizar suscripciones activas, expiradas o canceladas.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>IPlanRepository</strong></td>
      <td style="padding: 10px; border: 1px solid;">Repository Interface</td>
      <td style="padding: 10px; border: 1px solid;">Contrato para consultar planes disponibles, precios, beneficios y límites configurados.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>IPaymentRepository</strong></td>
      <td style="padding: 10px; border: 1px solid;">Repository Interface</td>
      <td style="padding: 10px; border: 1px solid;">Contrato para persistir pagos, referencias externas de Stripe y estados de confirmación.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>IAccountRepository</strong></td>
      <td style="padding: 10px; border: 1px solid;">Repository Interface</td>
      <td style="padding: 10px; border: 1px solid;">Contrato para crear cuentas de negocio y asociar usuarios a ellas mediante membresías.</td>
    </tr>
  </tbody>
</table>

#### 4.2.2.2. Interface Layer

En la capa de interfaz del Bounded Context de Subscriptions and Payments se exponen los endpoints RESTful necesarios para que los usuarios puedan consultar planes, seleccionar una suscripción, iniciar pagos, confirmar operaciones y administrar la cuenta de negocio asociada. Esta capa recibe solicitudes desde la Web App o aplicaciones cliente, transforma los recursos de entrada en comandos o queries y delega la ejecución a la capa de aplicación.

También contempla endpoints de integración para recibir confirmaciones provenientes de Stripe mediante webhooks. Estos eventos externos son tratados como entradas al sistema, pero la decisión de activar un plan se mantiene dentro del dominio de suscripciones y pagos.

##### PlanController

<p><em>Tabla de PlanController en el Interface Layer</em></p>

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
      <td style="padding: 10px; border: 1px solid;">PlanController</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Controller</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Exponer endpoints para consultar planes disponibles, beneficios y límites de suscripción.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Ruta</strong></td>
      <td style="padding: 10px; border: 1px solid;">/api/v1/plans</td>
    </tr>
  </tbody>
</table>

<br>

<p><em>Tabla de métodos de PlanController en el Interface Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid;">Nombre</th>
      <th style="padding: 10px; border: 1px solid;">Ruta</th>
      <th style="padding: 10px; border: 1px solid;">Acción</th>
      <th style="padding: 10px; border: 1px solid;">Handle (Command/Query)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;">GetAll</td>
      <td style="padding: 10px; border: 1px solid;">/ (GET)</td>
      <td style="padding: 10px; border: 1px solid;">Lista los planes disponibles</td>
      <td style="padding: 10px; border: 1px solid;">GetAvailablePlansQuery</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;">GetById</td>
      <td style="padding: 10px; border: 1px solid;">/{planId} (GET)</td>
      <td style="padding: 10px; border: 1px solid;">Obtiene el detalle de un plan</td>
      <td style="padding: 10px; border: 1px solid;">GetPlanByIdQuery</td>
    </tr>
  </tbody>
</table>

##### SubscriptionController

<p><em>Tabla de SubscriptionController en el Interface Layer</em></p>

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
      <td style="padding: 10px; border: 1px solid;">SubscriptionController</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Controller</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Gestionar la selección, activación, consulta, renovación y actualización de suscripciones.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Ruta</strong></td>
      <td style="padding: 10px; border: 1px solid;">/api/v1/subscriptions</td>
    </tr>
  </tbody>
</table>

<br>

<p><em>Tabla de métodos de SubscriptionController en el Interface Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid;">Nombre</th>
      <th style="padding: 10px; border: 1px solid;">Ruta</th>
      <th style="padding: 10px; border: 1px solid;">Acción</th>
      <th style="padding: 10px; border: 1px solid;">Handle (Command/Query)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;">SelectPlan</td>
      <td style="padding: 10px; border: 1px solid;">/select-plan (POST)</td>
      <td style="padding: 10px; border: 1px solid;">Selecciona un plan de suscripción</td>
      <td style="padding: 10px; border: 1px solid;">SelectSubscriptionPlanCommand</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;">ConfigureLimits</td>
      <td style="padding: 10px; border: 1px solid;">/{subscriptionId}/limits (PUT)</td>
      <td style="padding: 10px; border: 1px solid;">Configura los límites del plan contratado</td>
      <td style="padding: 10px; border: 1px solid;">ConfigurePlanLimitsCommand</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;">Upgrade</td>
      <td style="padding: 10px; border: 1px solid;">/{subscriptionId}/upgrade (POST)</td>
      <td style="padding: 10px; border: 1px solid;">Actualiza la suscripción a un nuevo plan</td>
      <td style="padding: 10px; border: 1px solid;">UpgradeSubscriptionPlanCommand</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;">GetCurrent</td>
      <td style="padding: 10px; border: 1px solid;">/current (GET)</td>
      <td style="padding: 10px; border: 1px solid;">Obtiene la suscripción activa de la cuenta</td>
      <td style="padding: 10px; border: 1px solid;">GetCurrentSubscriptionQuery</td>
    </tr>
  </tbody>
</table>

##### PaymentController

<p><em>Tabla de PaymentController en el Interface Layer</em></p>

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
      <td style="padding: 10px; border: 1px solid;">PaymentController</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Controller</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Gestionar la creación de órdenes de pago, inicio de checkout y consulta del estado del pago.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Ruta</strong></td>
      <td style="padding: 10px; border: 1px solid;">/api/v1/payments</td>
    </tr>
  </tbody>
</table>

<br>

<p><em>Tabla de métodos de PaymentController en el Interface Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid;">Nombre</th>
      <th style="padding: 10px; border: 1px solid;">Ruta</th>
      <th style="padding: 10px; border: 1px solid;">Acción</th>
      <th style="padding: 10px; border: 1px solid;">Handle (Command/Query)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;">CreatePaymentOrder</td>
      <td style="padding: 10px; border: 1px solid;">/order (POST)</td>
      <td style="padding: 10px; border: 1px solid;">Genera una orden de pago con los detalles de la suscripción</td>
      <td style="padding: 10px; border: 1px solid;">CreatePaymentOrderCommand</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;">StartCheckout</td>
      <td style="padding: 10px; border: 1px solid;">/checkout (POST)</td>
      <td style="padding: 10px; border: 1px solid;">Inicia el flujo de pago con Stripe</td>
      <td style="padding: 10px; border: 1px solid;">StartStripeCheckoutCommand</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;">GetStatus</td>
      <td style="padding: 10px; border: 1px solid;">/{paymentId}/status (GET)</td>
      <td style="padding: 10px; border: 1px solid;">Consulta el estado actual del pago</td>
      <td style="padding: 10px; border: 1px solid;">GetPaymentStatusQuery</td>
    </tr>
  </tbody>
</table>

##### StripeWebhookController

<p><em>Tabla de StripeWebhookController en el Interface Layer</em></p>

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
      <td style="padding: 10px; border: 1px solid;">StripeWebhookController</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Webhook Controller</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Recibir y validar eventos provenientes de Stripe para confirmar pagos, renovaciones o rechazos.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Ruta</strong></td>
      <td style="padding: 10px; border: 1px solid;">/api/v1/webhooks/stripe</td>
    </tr>
  </tbody>
</table>

<br>

<p><em>Tabla de métodos de StripeWebhookController en el Interface Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid;">Nombre</th>
      <th style="padding: 10px; border: 1px solid;">Ruta</th>
      <th style="padding: 10px; border: 1px solid;">Acción</th>
      <th style="padding: 10px; border: 1px solid;">Handle (Command/Query)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;">HandlePaymentAccepted</td>
      <td style="padding: 10px; border: 1px solid;">/ (POST)</td>
      <td style="padding: 10px; border: 1px solid;">Procesa confirmaciones de pago recibidas desde Stripe</td>
      <td style="padding: 10px; border: 1px solid;">ConfirmStripePaymentCommand</td>
    </tr>
  </tbody>
</table>

##### AccountController

<p><em>Tabla de AccountController en el Interface Layer</em></p>

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
      <td style="padding: 10px; border: 1px solid;">AccountController</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Controller</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Exponer endpoints para consultar la cuenta de negocio creada y asociar trabajadores a una cuenta existente.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Ruta</strong></td>
      <td style="padding: 10px; border: 1px solid;">/api/v1/accounts</td>
    </tr>
  </tbody>
</table>

<br>

<p><em>Tabla de métodos de AccountController en el Interface Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid;">Nombre</th>
      <th style="padding: 10px; border: 1px solid;">Ruta</th>
      <th style="padding: 10px; border: 1px solid;">Acción</th>
      <th style="padding: 10px; border: 1px solid;">Handle (Command/Query)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;">GetById</td>
      <td style="padding: 10px; border: 1px solid;">/{accountId} (GET)</td>
      <td style="padding: 10px; border: 1px solid;">Obtiene los datos básicos de una cuenta de negocio</td>
      <td style="padding: 10px; border: 1px solid;">GetAccountByIdQuery</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;">AssociateUser</td>
      <td style="padding: 10px; border: 1px solid;">/{accountId}/members (POST)</td>
      <td style="padding: 10px; border: 1px solid;">Asocia un usuario trabajador a la cuenta</td>
      <td style="padding: 10px; border: 1px solid;">AssociateUserToAccountCommand</td>
    </tr>
  </tbody>
</table>

#### 4.2.2.3. Application Layer

La capa de aplicación del Bounded Context de Subscriptions and Payments coordina los casos de uso relacionados con planes, suscripciones, pagos y cuentas de negocio. En esta capa residen los Command Handlers, Query Handlers y Event Handlers encargados de ejecutar los flujos principales del contexto: selección de plan, generación de orden de pago, confirmación de pago mediante Stripe, activación de suscripción, creación de cuenta de negocio, asociación de usuarios y actualización de límites cuando el usuario realiza un upgrade de plan.

Esta capa no contiene reglas puras de dominio; su responsabilidad es orquestar el flujo de trabajo entre la capa de interfaz y el dominio, cargar aggregates desde repositorios, invocar métodos del modelo de dominio, persistir cambios y publicar eventos que serán consumidos por otros bounded contexts, como Asset and Resource Management, Profile and Preferences e Identity and Access Management. De esta manera, el contexto mantiene la responsabilidad sobre el ciclo de vida comercial de la suscripción, mientras que los demás contextos ejecutan acciones específicas relacionadas con recursos, perfiles, sucursales y permisos.

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
      <td style="padding: 10px; border: 1px solid;">Orquestar la selección inicial de un plan de suscripción por parte del usuario, validando que el plan exista y dejando preparado el estado inicial de la suscripción antes del pago.</td>
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
      <td style="padding: 10px; border: 1px solid;">Gestionar la configuración de los límites asociados al plan seleccionado, como cuotas de recursos, capacidad operativa y restricciones aplicables a la cuenta.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Comando</strong></td>
      <td style="padding: 10px; border: 1px solid;">ConfigurePlanLimitsCommand</td>
    </tr>
  </tbody>
</table>

<br>

##### GeneratePaymentOrderCommandHandler

<p><em>Tabla de GeneratePaymentOrderCommandHandler en el Application Layer</em></p>

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
      <td style="padding: 10px; border: 1px solid;">GeneratePaymentOrderCommandHandler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Command Handler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Orquestar la creación de una orden de pago con los detalles del plan seleccionado, preparando la integración con Stripe para iniciar el proceso de cobro.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Comando</strong></td>
      <td style="padding: 10px; border: 1px solid;">GeneratePaymentOrderCommand</td>
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
      <td style="padding: 10px; border: 1px solid;">Procesar la confirmación del pago recibida desde Stripe, validar la referencia de la orden de pago y actualizar el estado del pago dentro del contexto.</td>
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
      <td style="padding: 10px; border: 1px solid;">Activar la suscripción una vez confirmado el pago, asociando el plan contratado y publicando los eventos necesarios para habilitar la cuenta y los recursos vinculados.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Comando</strong></td>
      <td style="padding: 10px; border: 1px solid;">ActivateSubscriptionCommand</td>
    </tr>
  </tbody>
</table>

<br>

##### CreateBusinessAccountCommandHandler

<p><em>Tabla de CreateBusinessAccountCommandHandler en el Application Layer</em></p>

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
      <td style="padding: 10px; border: 1px solid;">CreateBusinessAccountCommandHandler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Command Handler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Orquestar la creación de la cuenta de negocio asociada a una suscripción activa, recibiendo el identificador del usuario propietario y el identificador de la suscripción.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Comando</strong></td>
      <td style="padding: 10px; border: 1px solid;">CreateBusinessAccountCommand</td>
    </tr>
  </tbody>
</table>

<br>

##### AssociateUserToAccountCommandHandler

<p><em>Tabla de AssociateUserToAccountCommandHandler en el Application Layer</em></p>

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
      <td style="padding: 10px; border: 1px solid;">AssociateUserToAccountCommandHandler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Command Handler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Gestionar la asociación de un usuario a una cuenta de negocio, enviando el identificador de la cuenta y registrando la incorporación del usuario como trabajador o miembro del negocio.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Comando</strong></td>
      <td style="padding: 10px; border: 1px solid;">AssociateUserToAccountCommand</td>
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
      <td style="padding: 10px; border: 1px solid;">Orquestar el cambio de plan o incremento de recursos contratados, reemplazando los límites actuales por los límites del nuevo plan y notificando a los contextos responsables de recursos e IoT.</td>
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
      <td style="padding: 10px; border: 1px solid;">Consultar el estado actual de una suscripción, incluyendo el plan asociado, estado del pago, vigencia y límites configurados.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Query</strong></td>
      <td style="padding: 10px; border: 1px solid;">GetSubscriptionStatusQuery</td>
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
      <td style="padding: 10px; border: 1px solid;">Reaccionar a la activación de una suscripción para solicitar la creación de la cuenta de negocio, la asociación del usuario propietario y la habilitación inicial de recursos.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Evento</strong></td>
      <td style="padding: 10px; border: 1px solid;">SubscriptionActivatedEvent</td>
    </tr>
  </tbody>
</table>

<br>

##### AccountCreatedEventHandler

<p><em>Tabla de AccountCreatedEventHandler en el Application Layer</em></p>

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
      <td style="padding: 10px; border: 1px solid;">AccountCreatedEventHandler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Event Handler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Gestionar los procesos posteriores a la creación de una cuenta de negocio, como la publicación de eventos para Profile and Preferences, Identity and Access Management y Asset and Resource Management.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Evento</strong></td>
      <td style="padding: 10px; border: 1px solid;">AccountCreatedEvent</td>
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

La capa de dominio representa el núcleo (core) de la aplicación para el Bounded Context de Asset and Resource Management. En esta capa se encapsulan todas las reglas de negocio, invariantes y la lógica fundamental relacionada con la gestión del catálogo de insumos, el control transaccional del inventario físico, el ciclo de vida de las sucursales y la administración del hardware IoT.

Esta capa está completamente aislada de detalles técnicos, bases de datos o frameworks de presentación. Se compone de Entidades (Entities), Raíces de Agregación (Aggregate Roots), Objetos de Valor (Value Objects) para garantizar la inmutabilidad de los datos, Eventos de Dominio (Domain Events) y las abstracciones de los repositorios mediante Interfaces.

##### Aggregates & Entities

Estas clases representan los pilares transaccionales del sistema. Cada Aggregate Root garantiza la consistencia de los datos dentro de su límite de transacción.

<p><em>Tabla de Aggregates en el Domain Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Nombre de Clase</th>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Categoría</th>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Propósito y Reglas de Negocio</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Branch</strong></td>
      <td style="padding: 10px; border: 1px solid;">Aggregate Root</td>
      <td style="padding: 10px; border: 1px solid;">Representa una sucursal física. Encapsula la lógica para activar, desactivar y actualizar la información operativa del local.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>CustomSupply</strong></td>
      <td style="padding: 10px; border: 1px solid;">Aggregate Root</td>
      <td style="padding: 10px; border: 1px solid;">Representa el catálogo maestro de un insumo o producto. Contiene lógica para determinar alertas de stock bajo y estructurar precios.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Batch</strong></td>
      <td style="padding: 10px; border: 1px solid;">Aggregate Root</td>
      <td style="padding: 10px; border: 1px solid;">Representa un lote físico de inventario. Contiene las invariantes más críticas: deducción matemática de stock, cálculo de costos remanentes y validación de fechas de caducidad.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Device</strong></td>
      <td style="padding: 10px; border: 1px solid;">Aggregate Root</td>
      <td style="padding: 10px; border: 1px solid;">Representa un sensor o hardware IoT. Valida las reglas para su vinculación a una sucursal y el registro de telemetría o anomalías.</td>
    </tr>
  </tbody>
</table>

<br>

##### Value Objects

Estas clases modelan características conceptuales del dominio. Son inmutables y ayudan a evitar el uso excesivo de tipos primitivos (Primitive Obsession), asegurando que los datos siempre sean válidos desde su creación.

<p><em>Tabla de Value Objects en el Domain Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Nombre de Clase</th>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Categoría</th>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Propósito y Reglas de Negocio</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>StockQuantity</strong></td>
      <td style="padding: 10px; border: 1px solid;">Value Object</td>
      <td style="padding: 10px; border: 1px solid;">Encapsula la cantidad y unidad de medida. Previene cantidades negativas mediante lógica matemática interna en sus métodos add() y subtract().</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Location</strong></td>
      <td style="padding: 10px; border: 1px solid;">Value Object</td>
      <td style="padding: 10px; border: 1px solid;">Agrupa la dirección física, ciudad y coordenadas geográficas de una sucursal en un solo concepto inmutable.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>HardwareSpecs</strong></td>
      <td style="padding: 10px; border: 1px solid;">Value Object</td>
      <td style="padding: 10px; border: 1px solid;">Define las especificaciones técnicas de un dispositivo IoT (dirección MAC, fabricante, firmware).</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>BranchId, SupplyId, etc.</strong></td>
      <td style="padding: 10px; border: 1px solid;">Value Object</td>
      <td style="padding: 10px; border: 1px solid;">Identificadores fuertemente tipados para garantizar que no se confundan IDs de diferentes entidades durante las operaciones.</td>
    </tr>
  </tbody>
</table>

<br>

##### Repository Interfaces

Las abstracciones de persistencia se definen aquí mediante el Principio de Inversión de Dependencias (Dependency Inversion). El dominio dicta "qué" necesita guardar o consultar, sin importar "cómo" se hace en la base de datos.

<p><em>Tabla de Abstracciones de Repositorio en el Domain Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Nombre de Interfaz</th>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Categoría</th>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Propósito</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>IBranchRepository</strong></td>
      <td style="padding: 10px; border: 1px solid;">Repository Interface</td>
      <td style="padding: 10px; border: 1px solid;">Contrato para la persistencia y búsqueda de sucursales activas en el sistema.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>IBatchRepository</strong></td>
      <td style="padding: 10px; border: 1px solid;">Repository Interface</td>
      <td style="padding: 10px; border: 1px solid;">Contrato para almacenar movimientos de lotes y consultar stock disponible o caducado.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>ICustomSupplyRepository</strong></td>
      <td style="padding: 10px; border: 1px solid;">Repository Interface</td>
      <td style="padding: 10px; border: 1px solid;">Contrato para gestionar el ciclo de vida de los insumos y productos del catálogo.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>IDeviceRepository</strong></td>
      <td style="padding: 10px; border: 1px solid;">Repository Interface</td>
      <td style="padding: 10px; border: 1px solid;">Contrato para registrar y buscar hardware IoT asociado a las diferentes sucursales.</td>
    </tr>
  </tbody>
</table>

#### 4.2.4.2. Interface Layer

En la capa de interfaz del Bounded Context de Asset and Resource Management se exponen los endpoints HTTP RESTful necesarios para interactuar con las funcionalidades core de la gestión física y lógica del negocio. A través de controladores especializados y ensambladores (Assemblers), esta capa actúa como punto de entrada para solicitudes de clientes (como la Web App de administración o aplicaciones móviles), facilitando la transformación de recursos (Data Transfer Objects) en Comandos o Queries hacia la capa de aplicación. Su diseño garantiza una clara separación de responsabilidades para la orquestación de recursos clave como sucursales, insumos, inventario y dispositivos IoT.

##### BranchController

<p><em>Tabla de BranchController en el Interface Layer</em></p>

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
      <td style="padding: 10px; border: 1px solid;">BranchController</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Controller</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Encargado de exponer endpoints para la gestión de la información y configuración de las sucursales físicas.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Ruta</strong></td>
      <td style="padding: 10px; border: 1px solid;">/api/v1/branches</td>
    </tr>
  </tbody>
</table>

<br>

<p><em>Tabla de métodos de BranchController en el Interface Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid;">Nombre</th>
      <th style="padding: 10px; border: 1px solid;">Ruta</th>
      <th style="padding: 10px; border: 1px solid;">Acción</th>
      <th style="padding: 10px; border: 1px solid;">Handle (Command/Query)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;">Create</td>
      <td style="padding: 10px; border: 1px solid;">/ (POST)</td>
      <td style="padding: 10px; border: 1px solid;">Crea una nueva sucursal</td>
      <td style="padding: 10px; border: 1px solid;">CreateBranchCommand</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;">GetById</td>
      <td style="padding: 10px; border: 1px solid;">/{branchId} (GET)</td>
      <td style="padding: 10px; border: 1px solid;">Obtiene los datos de una sucursal</td>
      <td style="padding: 10px; border: 1px solid;">GetBranchByIdQuery</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;">UpdateInfo</td>
      <td style="padding: 10px; border: 1px solid;">/{branchId}/info (PUT)</td>
      <td style="padding: 10px; border: 1px solid;">Actualiza la información básica</td>
      <td style="padding: 10px; border: 1px solid;">UpdateBranchInfoCommand</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;">UpdateImage</td>
      <td style="padding: 10px; border: 1px solid;">/{branchId}/image (PATCH)</td>
      <td style="padding: 10px; border: 1px solid;">Actualiza la fotografía</td>
      <td style="padding: 10px; border: 1px solid;">UpdateBranchImageCommand</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;">Delete</td>
      <td style="padding: 10px; border: 1px solid;">/{branchId} (DELETE)</td>
      <td style="padding: 10px; border: 1px solid;">Elimina o desactiva una sucursal</td>
      <td style="padding: 10px; border: 1px solid;">DeleteBranchCommand</td>
    </tr>
  </tbody>
</table>

##### CustomSupplyController

<p><em>Tabla de CustomSupplyController en el Interface Layer</em></p>

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
      <td style="padding: 10px; border: 1px solid;">CustomSupplyController</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Controller</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Exponer endpoints para el registro y mantenimiento del catálogo de insumos y productos.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Ruta</strong></td>
      <td style="padding: 10px; border: 1px solid;">/api/v1/supplies</td>
    </tr>
  </tbody>
</table>

<br>

<p><em>Tabla de métodos de CustomSupplyController en el Interface Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid;">Nombre</th>
      <th style="padding: 10px; border: 1px solid;">Ruta</th>
      <th style="padding: 10px; border: 1px solid;">Acción</th>
      <th style="padding: 10px; border: 1px solid;">Handle (Command/Query)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;">Register</td>
      <td style="padding: 10px; border: 1px solid;">/ (POST)</td>
      <td style="padding: 10px; border: 1px solid;">Registra un nuevo insumo</td>
      <td style="padding: 10px; border: 1px solid;">RegisterCustomSupplyCommand</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;">GetById</td>
      <td style="padding: 10px; border: 1px solid;">/{supplyId} (GET)</td>
      <td style="padding: 10px; border: 1px solid;">Obtiene el detalle de un insumo</td>
      <td style="padding: 10px; border: 1px solid;">GetCustomSupplyByIdQuery</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;">Update</td>
      <td style="padding: 10px; border: 1px solid;">/{supplyId} (PUT)</td>
      <td style="padding: 10px; border: 1px solid;">Modifica datos del insumo</td>
      <td style="padding: 10px; border: 1px solid;">EditCustomSupplyCommand</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;">Delete</td>
      <td style="padding: 10px; border: 1px solid;">/{supplyId} (DELETE)</td>
      <td style="padding: 10px; border: 1px solid;">Elimina un insumo del catálogo</td>
      <td style="padding: 10px; border: 1px solid;">DeleteCustomSupplyCommand</td>
    </tr>
  </tbody>
</table>

##### InventoryController

<p><em>Tabla de InventoryController en el Interface Layer</em></p>

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
      <td style="padding: 10px; border: 1px solid;">InventoryController</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Controller</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Maneja las operaciones transaccionales de stock, lotes (batches) y transferencias.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Ruta</strong></td>
      <td style="padding: 10px; border: 1px solid;">/api/v1/inventory</td>
    </tr>
  </tbody>
</table>

<br>

<p><em>Tabla de métodos de InventoryController en el Interface Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid;">Nombre</th>
      <th style="padding: 10px; border: 1px solid;">Ruta</th>
      <th style="padding: 10px; border: 1px solid;">Acción</th>
      <th style="padding: 10px; border: 1px solid;">Handle (Command/Query)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;">RegisterBatch</td>
      <td style="padding: 10px; border: 1px solid;">/batches (POST)</td>
      <td style="padding: 10px; border: 1px solid;">Ingresa un nuevo lote de stock</td>
      <td style="padding: 10px; border: 1px solid;">RegisterBatchCommand</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;">TransferStock</td>
      <td style="padding: 10px; border: 1px solid;">/transfer (POST)</td>
      <td style="padding: 10px; border: 1px solid;">Transfiere stock entre almacenes</td>
      <td style="padding: 10px; border: 1px solid;">TransferSupplyStockCommand</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;">SubtractStock</td>
      <td style="padding: 10px; border: 1px solid;">/subtract (POST)</td>
      <td style="padding: 10px; border: 1px solid;">Deduce existencias por mermas</td>
      <td style="padding: 10px; border: 1px solid;">SubtractSupplyStockCommand</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;">GetStock</td>
      <td style="padding: 10px; border: 1px solid;">/branches/{branchId} (GET)</td>
      <td style="padding: 10px; border: 1px solid;">Consulta stock disponible</td>
      <td style="padding: 10px; border: 1px solid;">GetInventoryByBranchQuery</td>
    </tr>
  </tbody>
</table>

##### DeviceController

<p><em>Tabla de DeviceController en el Interface Layer</em></p>

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
      <td style="padding: 10px; border: 1px solid;">DeviceController</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Controller</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Gestiona el registro y asignación del hardware IoT.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Ruta</strong></td>
      <td style="padding: 10px; border: 1px solid;">/api/v1/devices</td>
    </tr>
  </tbody>
</table>

<br>

<p><em>Tabla de métodos de DeviceController en el Interface Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid;">Nombre</th>
      <th style="padding: 10px; border: 1px solid;">Ruta</th>
      <th style="padding: 10px; border: 1px solid;">Acción</th>
      <th style="padding: 10px; border: 1px solid;">Handle (Command/Query)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;">Register</td>
      <td style="padding: 10px; border: 1px solid;">/ (POST)</td>
      <td style="padding: 10px; border: 1px solid;">Registra un nuevo sensor IoT</td>
      <td style="padding: 10px; border: 1px solid;">RegisterNewDeviceCommand</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;">Configure</td>
      <td style="padding: 10px; border: 1px solid;">/{deviceId}/configure (PUT)</td>
      <td style="padding: 10px; border: 1px solid;">Modifica parámetros técnicos</td>
      <td style="padding: 10px; border: 1px solid;">ConfigureDeviceCommand</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;">Assign</td>
      <td style="padding: 10px; border: 1px solid;">/{deviceId}/assign (POST)</td>
      <td style="padding: 10px; border: 1px solid;">Vincula el hardware a una sucursal</td>
      <td style="padding: 10px; border: 1px solid;">AssignDeviceToBranchCommand</td>
    </tr>
  </tbody>
</table>

#### 4.2.4.3. Application Layer

La capa de aplicación del Bounded Context de Asset and Resource Management coordina el flujo de trabajo entre la capa de interfaz y el dominio, encapsulando la lógica de orquestación de los recursos físicos y lógicos de la empresa. En esta capa residen los Command Handlers, Query Handlers y Event Handlers, los cuales son responsables de ejecutar las operaciones críticas como el registro de sucursales, la administración del catálogo de insumos, los movimientos de inventario (ingreso de lotes, transferencias, deducciones) y la asignación de hardware IoT. Esta capa asegura que las acciones del negocio se realicen de manera transaccional y coherente, delegando las reglas puras al dominio y la persistencia a la infraestructura.

##### CreateBranchCommandHandler

<p><em>Tabla de CreateBranchCommandHandler en el Application Layer</em></p>

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
      <td style="padding: 10px; border: 1px solid;">CreateBranchCommandHandler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Command Handler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Orquestar la creación y registro de una nueva sucursal física en el sistema.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Comando</strong></td>
      <td style="padding: 10px; border: 1px solid;">CreateBranchCommand</td>
    </tr>
  </tbody>
</table>

<br>

##### RegisterBatchCommandHandler

<p><em>Tabla de RegisterBatchCommandHandler en el Application Layer</em></p>

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
      <td style="padding: 10px; border: 1px solid;">RegisterBatchCommandHandler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Command Handler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Gestionar el ingreso de un nuevo lote de stock de un insumo al inventario.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Comando</strong></td>
      <td style="padding: 10px; border: 1px solid;">RegisterBatchCommand</td>
    </tr>
  </tbody>
</table>

<br>

##### GetInventoryByBranchQueryHandler

<p><em>Tabla de GetInventoryByBranchQueryHandler en el Application Layer</em></p>

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
      <td style="padding: 10px; border: 1px solid;">GetInventoryByBranchQueryHandler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Query Handler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Consultar y consolidar el nivel de stock actual de los insumos en una sucursal específica.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Query</strong></td>
      <td style="padding: 10px; border: 1px solid;">GetInventoryByBranchQuery</td>
    </tr>
  </tbody>
</table>

<br>

##### StockSubtractedEventHandler

<p><em>Tabla de StockSubtractedEventHandler en el Application Layer</em></p>

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
      <td style="padding: 10px; border: 1px solid;">StockSubtractedEventHandler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Event Handler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Reaccionar a la reducción de stock para verificar si se ha alcanzado el umbral mínimo y emitir alertas si es necesario.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Evento</strong></td>
      <td style="padding: 10px; border: 1px solid;">StockSubtractedEvent</td>
    </tr>
  </tbody>
</table>

<br>

##### DeviceAssignedEventHandler

<p><em>Tabla de DeviceAssignedEventHandler en el Application Layer</em></p>

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
      <td style="padding: 10px; border: 1px solid;">DeviceAssignedEventHandler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Event Handler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Gestionar los procesos posteriores a la vinculación de un sensor IoT a una sucursal, como iniciar la telemetría.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Evento</strong></td>
      <td style="padding: 10px; border: 1px solid;">DeviceAssignedToBranchEvent</td>
    </tr>
  </tbody>
</table>

#### 4.2.4.4. Infrastructure Layer

La capa de infraestructura del Bounded Context de Asset and Resource Management actúa como el puente entre la lógica central del negocio y los mecanismos técnicos externos. En esta capa se materializan las interfaces de repositorios definidas en el dominio para persistir entidades como sucursales, insumos y hardware IoT en la base de datos relacional. Asimismo, integra servicios externos esenciales para el negocio, como la API de Cloudinary para el almacenamiento de imágenes de sucursales y productos, y la configuración de comunicación mediante Message Brokers para publicar eventos de dominio (como cambios críticos de stock) hacia otros contextos del sistema.

##### InventoryRepository

<p><em>Tabla de InventoryRepository en el Infrastructure Layer</em></p>

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
      <td style="padding: 10px; border: 1px solid;">InventoryRepository</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Repositorio</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Persistir y consultar entidades y agregados de inventario (Lotes y Stock) en la base de datos.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Interfaz</strong></td>
      <td style="padding: 10px; border: 1px solid;">IInventoryRepository</td>
    </tr>
  </tbody>
</table>

<br>

##### BranchRepository

<p><em>Tabla de BranchRepository en el Infrastructure Layer</em></p>

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
      <td style="padding: 10px; border: 1px solid;">BranchRepository</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Repositorio</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Manejar el acceso a datos para la configuración, detalles y geolocalización de las sucursales.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Interfaz</strong></td>
      <td style="padding: 10px; border: 1px solid;">IBranchRepository</td>
    </tr>
  </tbody>
</table>

<br>

##### AssetDbContext

<p><em>Tabla de AssetDbContext en el Infrastructure Layer</em></p>

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
      <td style="padding: 10px; border: 1px solid;">AssetDbContext</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">ORM Context</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Punto central de configuración de Entity Framework para mapear las entidades del Bounded Context a la base de datos.</td>
    </tr>
  </tbody>
</table>

<br>

##### CloudinaryImageService

<p><em>Tabla de CloudinaryImageService en el Infrastructure Layer</em></p>

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
      <td style="padding: 10px; border: 1px solid;">CloudinaryImageService</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">External Service Wrapper</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Integrar la API de Cloudinary para la carga, almacenamiento y obtención de URLs de imágenes de insumos y sucursales.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Interfaz</strong></td>
      <td style="padding: 10px; border: 1px solid;">IImageStorageService</td>
    </tr>
  </tbody>
</table>

#### 4.2.4.5. Bounded Context Software Architecture Component Level Diagrams

Esta sección presenta el diagrama de componentes del backend para el bounded context Asset and Resource Management. Se ilustra su interacción con los bounded contexts directamente relacionados dentro de la arquitectura del sistema.

#### 4.2.4.6. Bounded Context Software Architecture Code Level Diagrams

##### 4.2.4.6.1. Bounded Context Domain Layer Class Diagrams

En esta sección, el equipo presenta el Diagrama de Clases detallado para la Domain Layer del Bounded Context de Asset and Resource Management. Este diagrama no solo detalla la estructura estática, sino que evidencia un Modelo de Dominio Rico, donde la lógica de negocio reside dentro de los métodos de los Agregados, garantizando la encapsulación y las invariantes del sistema.

Para garantizar el orden y la legibilidad dada la complejidad del contexto, el diagrama se ha organizado visualmente en cuatro sub-paquetes lógicos:

Branch & IoT Operations: Agrupa la gestión de sucursales (Branch) y la asignación/configuración de hardware IoT (Device).

Supply Catalog: Define el catálogo maestro de insumos y productos (CustomSupply) con sus reglas de costeo.

Inventory & Stock Tracking: Maneja la complejidad transaccional de los lotes física (Batch), deducciones y transferencias.

Domain Events: Mapea los eventos clave que se emiten para la comunicación asíncrona con otros contextos (como Ventas o Notificaciones).

<img src="assets/images/chapter4/bc-resource/ARM-Bounded-Context-Domain-Layer.png" alt="Domain Layer Class Diagram - Asset and Resource Management">

##### 4.2.4.6.2. Bounded Context Database Design Diagram

En esta sección, el equipo presenta el Diagrama de Base de Datos diseñado bajo un enfoque No Relacional (NoSQL), del tipo orientado a documentos, para el Bounded Context de Asset and Resource Management. Este modelo de persistencia ha sido seleccionado para gestionar eficientemente los grandes volúmenes de telemetría IoT y la flexibilidad del catálogo de recursos.

El diseño se fundamenta en principios clave de bases de datos documentales (como MongoDB). Destaca el uso estratégico de la desnormalización y el patrón de documentos embebidos (Embedded Documents) para optimizar el rendimiento de las consultas. Por ejemplo, los atributos de ubicación (location) se anidan directamente dentro de la colección de sucursales (branches), y las especificaciones de hardware (specifications) se embeben en los dispositivos (devices), asegurando que "los datos que se consultan juntos, se almacenen juntos".

<img src="assets/images/chapter4/bc-resource/ARM-Bounded-Context-Domain-Layer-DB-Schema.png" alt="Data Base Class Diagram - Asset and Resource Management" width="800px">

### 4.2.5. Bounded Context: Service Design and Planning

Este Bounded Context se encarga de la formulación y empaquetamiento comercial de los recursos. Proporciona las herramientas para que los administradores de restaurantes diseñen sus recetas (vinculando insumos y cantidades) y para que los administradores de tiendas retail estructuren kits o combos comerciales destinados a sus clientes.

#### 4.2.5.1. Domain Layer

La capa de dominio representa el núcleo (core) de la aplicación para el Bounded Context de Service Design and Planning. En esta capa se encapsulan todas las reglas de negocio, invariantes y la lógica fundamental relacionada con la estructuración de recetas gastronómicas y la composición de kits comerciales.

Esta capa está aislada de detalles técnicos o de infraestructura. Se compone de Entidades (Entities), Raíces de Agregación (Aggregate Roots), Objetos de Valor (Value Objects) para garantizar la inmutabilidad de las composiciones, Eventos de Dominio (Domain Events) y las abstracciones de los repositorios mediante Interfaces.

##### Aggregates & Entities

<p><em>Tabla de Aggregates en el Domain Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Nombre de Clase</th>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Categoría</th>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Propósito y Reglas de Negocio</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Recipe</strong></td>
      <td style="padding: 10px; border: 1px solid;">Aggregate Root</td>
      <td style="padding: 10px; border: 1px solid;">Representa una receta gastronómica. Encapsula la lógica para validar que la formulación contenga insumos válidos, cantidades mayores a cero y permite actualizar su información e imagen.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Kit</strong></td>
      <td style="padding: 10px; border: 1px solid;">Aggregate Root</td>
      <td style="padding: 10px; border: 1px solid;">Representa un combo comercial diseñado por la tienda retail. Contiene la lógica para agrupar productos individuales y establecer un precio de conjunto válido.</td>
    </tr>
  </tbody>
</table>

<br>

##### Value Objects

<p><em>Tabla de Value Objects en el Domain Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Nombre de Clase</th>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Categoría</th>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Propósito y Reglas de Negocio</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>SupplyRequirement</strong></td>
      <td style="padding: 10px; border: 1px solid;">Value Object</td>
      <td style="padding: 10px; border: 1px solid;">Encapsula la relación entre un insumo (SupplyId) y la cantidad requerida para una receta o kit, garantizando que la cantidad siempre sea positiva.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Category</strong></td>
      <td style="padding: 10px; border: 1px solid;">Value Object</td>
      <td style="padding: 10px; border: 1px solid;">Clasificación fuertemente tipada para las recetas y kits, evitando errores de tipografía en agrupaciones.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>RecipeId, KitId</strong></td>
      <td style="padding: 10px; border: 1px solid;">Value Object</td>
      <td style="padding: 10px; border: 1px solid;">Identificadores inmutables para garantizar el tipado estricto en las relaciones y búsquedas.</td>
    </tr>
  </tbody>
</table>

<br>

##### Repository Interfaces

<p><em>Tabla de Abstracciones de Repositorio en el Domain Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Nombre de Interfaz</th>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Categoría</th>
      <th style="padding: 10px; border: 1px solid; text-align: left;">Propósito</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>IRecipeRepository</strong></td>
      <td style="padding: 10px; border: 1px solid;">Repository Interface</td>
      <td style="padding: 10px; border: 1px solid;">Contrato para la persistencia, búsqueda y filtrado de recetas en el catálogo del restaurante.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>IKitRepository</strong></td>
      <td style="padding: 10px; border: 1px solid;">Repository Interface</td>
      <td style="padding: 10px; border: 1px solid;">Contrato para almacenar y recuperar los combos configurados localmente por la tienda retail.</td>
    </tr>
  </tbody>
</table>

#### 4.2.5.2. Interface Layer

En la capa de interfaz se exponen los endpoints HTTP RESTful necesarios para interactuar con las funcionalidades de diseño de servicios. A través de controladores especializados, esta capa actúa como punto de entrada para que las aplicaciones cliente (Web o Móvil) envíen los comandos de creación o edición de recetas y kits, facilitando la subida de imágenes y la definición de formulaciones.

##### RecipeController

<p><em>Tabla de RecipeController en el Interface Layer</em></p>

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
      <td style="padding: 10px; border: 1px solid;">RecipeController</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Controller</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Encargado de exponer endpoints para la gestión del catálogo de recetas y su formulación por parte del administrador de restaurante.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Ruta</strong></td>
      <td style="padding: 10px; border: 1px solid;">/api/v1/recipes</td>
    </tr>
  </tbody>
</table>

<br>

<p><em>Tabla de métodos de RecipeController en el Interface Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid;">Nombre</th>
      <th style="padding: 10px; border: 1px solid;">Ruta</th>
      <th style="padding: 10px; border: 1px solid;">Acción</th>
      <th style="padding: 10px; border: 1px solid;">Handle (Command/Query)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;">Register</td>
      <td style="padding: 10px; border: 1px solid;">/ (POST)</td>
      <td style="padding: 10px; border: 1px solid;">Crea y registra una nueva receta</td>
      <td style="padding: 10px; border: 1px solid;">RegisterRecipeCommand</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;">GetById</td>
      <td style="padding: 10px; border: 1px solid;">/{recipeId} (GET)</td>
      <td style="padding: 10px; border: 1px solid;">Obtiene los detalles de una receta</td>
      <td style="padding: 10px; border: 1px solid;">GetRecipeByIdQuery</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;">Edit</td>
      <td style="padding: 10px; border: 1px solid;">/{recipeId} (PUT)</td>
      <td style="padding: 10px; border: 1px solid;">Modifica la información e insumos</td>
      <td style="padding: 10px; border: 1px solid;">EditRecipeCommand</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;">Delete</td>
      <td style="padding: 10px; border: 1px solid;">/{recipeId} (DELETE)</td>
      <td style="padding: 10px; border: 1px solid;">Elimina lógicamente una receta</td>
      <td style="padding: 10px; border: 1px solid;">DeleteRecipeCommand</td>
    </tr>
  </tbody>
</table>

##### KitController

<p><em>Tabla de KitController en el Interface Layer</em></p>

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
      <td style="padding: 10px; border: 1px solid;">KitController</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Controller</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Exponer endpoints para que los administradores de tiendas retail agrupen productos en combos comerciales.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Ruta</strong></td>
      <td style="padding: 10px; border: 1px solid;">/api/v1/kits</td>
    </tr>
  </tbody>
</table>

<br>

<p><em>Tabla de métodos de KitController en el Interface Layer</em></p>

<table style="width:100%; border-collapse: collapse; border: 1px solid;">
  <thead>
    <tr>
      <th style="padding: 10px; border: 1px solid;">Nombre</th>
      <th style="padding: 10px; border: 1px solid;">Ruta</th>
      <th style="padding: 10px; border: 1px solid;">Acción</th>
      <th style="padding: 10px; border: 1px solid;">Handle (Command/Query)</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td style="padding: 10px; border: 1px solid;">Register</td>
      <td style="padding: 10px; border: 1px solid;">/ (POST)</td>
      <td style="padding: 10px; border: 1px solid;">Registra un nuevo kit comercial</td>
      <td style="padding: 10px; border: 1px solid;">RegisterKitCommand</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;">Edit</td>
      <td style="padding: 10px; border: 1px solid;">/{kitId} (PUT)</td>
      <td style="padding: 10px; border: 1px solid;">Edita la composición del kit</td>
      <td style="padding: 10px; border: 1px solid;">EditKitCommand</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;">Delete</td>
      <td style="padding: 10px; border: 1px solid;">/{kitId} (DELETE)</td>
      <td style="padding: 10px; border: 1px solid;">Deshabilita el kit del catálogo</td>
      <td style="padding: 10px; border: 1px solid;">DeleteKitCommand</td>
    </tr>
  </tbody>
</table>

#### 4.2.5.3. Application Layer

La capa de aplicación de este Bounded Context orquesta los flujos de trabajo dictados por los usuarios al diseñar sus servicios. Aquí residen los Command Handlers encargados de procesar la creación y edición de catálogos, asegurando que las listas de insumos se estructuren correctamente antes de delegar la persistencia al dominio. También aloja Event Handlers que reaccionan a acciones críticas, como notificar a los usuarios cuando un diseño es eliminado.

##### RegisterRecipeCommandHandler

<p><em>Tabla de RegisterRecipeCommandHandler en el Application Layer</em></p>

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
      <td style="padding: 10px; border: 1px solid;">RegisterRecipeCommandHandler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Command Handler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Validar la lista de insumos, coordinar la subida de imágenes y orquestar la creación de una nueva receta.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Comando</strong></td>
      <td style="padding: 10px; border: 1px solid;">RegisterRecipeCommand</td>
    </tr>
  </tbody>
</table>

<br>

##### RegisterKitCommandHandler

<p><em>Tabla de RegisterKitCommandHandler en el Application Layer</em></p>

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
      <td style="padding: 10px; border: 1px solid;">RegisterKitCommandHandler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Command Handler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Procesar la agrupación de productos solicitada por el administrador retail y registrar el nuevo combo en el sistema.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Comando</strong></td>
      <td style="padding: 10px; border: 1px solid;">RegisterKitCommand</td>
    </tr>
  </tbody>
</table>

<br>

##### RecipeDeletedEventHandler

<p><em>Tabla de RecipeDeletedEventHandler en el Application Layer</em></p>

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
      <td style="padding: 10px; border: 1px solid;">RecipeDeletedEventHandler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Event Handler</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Escuchar el evento de eliminación de una receta para coordinar el envío automático de un correo electrónico de alerta al administrador.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Evento</strong></td>
      <td style="padding: 10px; border: 1px solid;">RecipeDeletedEvent</td>
    </tr>
  </tbody>
</table>

#### 4.2.5.4. Infrastructure Layer

La capa de infraestructura de Service Design and Planning materializa los repositorios necesarios para almacenar los modelos de recetas y kits. Además, es el punto donde se implementan los adaptadores para servicios de terceros, los cuales son vitales en este contexto, específicamente para el manejo de archivos multimedia (imágenes de platos o combos) y el servicio de notificaciones transaccionales a los administradores.

##### RecipeRepository

<p><em>Tabla de RecipeRepository en el Infrastructure Layer</em></p>

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
      <td style="padding: 10px; border: 1px solid;">RecipeRepository</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Repositorio</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Implementar las consultas a la base de datos para guardar, editar y buscar recetas gastronómicas.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Interfaz</strong></td>
      <td style="padding: 10px; border: 1px solid;">IRecipeRepository</td>
    </tr>
  </tbody>
</table>

<br>

##### KitRepository

<p><em>Tabla de KitRepository en el Infrastructure Layer</em></p>

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
      <td style="padding: 10px; border: 1px solid;">KitRepository</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">Repositorio</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Gestionar la persistencia de los combos comerciales diseñados por los administradores de tiendas retail.</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Interfaz</strong></td>
      <td style="padding: 10px; border: 1px solid;">IKitRepository</td>
    </tr>
  </tbody>
</table>

<br>

##### External Services Integrations

<p><em>Tabla de Servicios Externos en el Infrastructure Layer</em></p>

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
      <td style="padding: 10px; border: 1px solid;">CloudinaryImageAdapter</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">External Service Wrapper</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Integrarse con la API de Cloudinary para procesar la subida y almacenamiento de imágenes de recetas y kits.</td>
    </tr>
  </tbody>
</table>

<br>

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
      <td style="padding: 10px; border: 1px solid;">EmailNotificationAdapter</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Categoría</strong></td>
      <td style="padding: 10px; border: 1px solid;">External Service Wrapper</td>
    </tr>
    <tr>
      <td style="padding: 10px; border: 1px solid;"><strong>Propósito</strong></td>
      <td style="padding: 10px; border: 1px solid;">Conectar con un proveedor SMTP (ej. SendGrid o AWS SES) para enviar los correos de alerta cuando se elimina una receta o kit.</td>
    </tr>
  </tbody>
</table>

#### 4.2.5.5. Bounded Context Software Architecture Component Level Diagrams

#### 4.2.5.6. Bounded Context Software Architecture Code Level Diagrams

##### 4.2.5.6.1. Bounded Context Domain Layer Class Diagrams

En esta sección se presenta el Diagrama de Clases UML correspondiente a la capa de dominio del Bounded Context de Service Design and Planning. El diseño visual refleja la separación de responsabilidades entre la gestión de recetas para restaurantes y la configuración de kits comerciales para tiendas retail, compartiendo conceptos de valor inmutables.

El modelo destaca por ser un Modelo de Dominio Rico. Las entidades raíz (Recipe y Kit) no son simples contenedores de datos, sino que exponen métodos con lógica de negocio clara (como updateFormulation, updateComposition o updatePricing) que validan las reglas internas antes de cualquier cambio de estado. Además, se evidencia la encapsulación mediante el uso de modificadores de acceso restrictivos (- para atributos) y el uso extensivo de Value Objects (como SupplyRequirement y ServiceCategory) para garantizar la integridad de las agrupaciones desde el momento de su instanciación.

<img src="assets/images/chapter4/bc-planning/Service-Design-and-Planning-Bounded-Context-Domain-Layer.png" alt="Domain Layer Class Diagram - Service Design and Planning">

##### 4.2.5.6.2. Bounded Context Database Design Diagram

En esta sección, el equipo presenta el Diagrama de Base de Datos diseñado para el Bounded Context de Service Design and Planning. Este diagrama detalla el esquema que permite la persistencia de las entidades core: las recetas de los restaurantes y los kits comerciales de las tiendas retail.

<img src="assets/images/chapter4/bc-planning/Service-Design-and-Planning-DB-Schema.png" alt="Database Design Diagram - Service Design and Planning">

### 4.2.6. Bounded Context: Service Operation and Monitoring

#### 4.2.6.1. Domain Layer

#### 4.2.6.2. Interface Layer

#### 4.2.6.3. Application Layer

#### 4.2.6.4. Infrastructure Layer

#### 4.2.6.5. Bounded Context Software Architecture Component Level Diagrams

#### 4.2.6.6. Bounded Context Software Architecture Code Level Diagrams

##### 4.2.6.6.1. Bounded Context Domain Layer Class Diagrams

##### 4.2.6.6.2. Bounded Context Database Design Diagram
