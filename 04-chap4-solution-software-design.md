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
  <img src="https://imgur.com/99oEpmr.png" alt="event">
  <img src="https://imgur.com/uF1M7Jc.png" alt="event">
</div>

El equipo identificó los eventos de dominio agrupados por columnas, representando los distintos flujos del sistema. 

#### Paso 2: Timelines

El segundo paso consistió en organizar los eventos de dominio dentro de líneas de tiempo por cada bounded context del sistema. El objetivo fue establecer el orden cronológico natural en que los hechos ocurren dentro de cada flujo, agrupándolos bajo sus respectivos encabezados de contexto.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/N3A08JD.png" alt="time-line">
  <img src="https://imgur.com/b2VepjU.png" alt="time-line">
  <img src="https://imgur.com/GHpCIkg.png" alt="time-line">
  <img src="https://imgur.com/eNAJXbz.png" alt="time-line">
  <img src="https://imgur.com/0LdKD0Q.png" alt="time-line">
</div>

El equipo organizó los eventos en secuencias horizontales ordenadas bajo diez bounded contexts claramente etiquetados: Identity and Access Management (IAM), Subscriptions and Payments, Profiles and Preferences, Communications, Asset and Resource Management (ARM), Design and Planning, Sales Management, Analytics, Device Management y Tracking. Cada línea de tiempo muestra los eventos en el orden en que ocurren naturalmente dentro del flujo de negocio correspondiente, permitiendo al equipo verificar que la narrativa del sistema sea coherente y completa de extremo a extremo.

#### Paso 3: Paint Point

El tercer paso incorporó la identificación de los puntos de dolor, también llamados pain points, dentro de los flujos ya organizados. Los pain points se representan con tarjetas en forma de rombo de color rosa y señalan fricciones, dudas, riesgos o decisiones de diseño pendientes que el equipo detectó al revisar las líneas de tiempo.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/0QGK9vD.png" alt="paint-point">
  <img src="https://imgur.com/U8QiL0s" alt="paint-point">
  <img src="https://imgur.com/0C8oOMR.png" alt="paint-point">
  <img src="https://imgur.com/jIvMoqL.png" alt="paint-point">
  <img src="https://imgur.com/3rKIBL0.png" alt="paint-point">
  <img src="https://imgur.com/Pp4xgKP.png" alt="paint-point">
</div>

El equipo incorporó pain points en los contextos donde surgieron preguntas sin resolver. En IAM se identificó el pain point "How do I access the services?", relacionado con el flujo de registro inicial de un usuario en el sistema. En Design and Planning se marcaron dos pain points: "What information does a recipe require?" y "What information does a Kit require?", señalando la necesidad de definir los datos mínimos para registrar cada elemento. En Sales Management se levantó la pregunta "How do I record a sale?", referida al proceso y condiciones necesarias para confirmar una venta. En Asset and Resource Management se plantearon las preguntas "How do you register a branch?", cuestionando los datos y pasos requeridos para dar de alta una sucursal, y "How do you register a custom supply?", indicando dudas sobre la información mínima necesaria para crear un insumo personalizado. Estos puntos quedaron visibles en el tablero como señales de alerta para ser resueltos en iteraciones posteriores del diseño.

#### Paso 4: Pivotal Points

El cuarto paso incorporó la identificación de los pivotal points dentro de los flujos ya organizados. Estos puntos se representan como las líneas o momentos de transición más relevantes dentro del recorrido, y permiten visualizar dónde ocurre un cambio significativo en la dirección, el contexto o la decisión del proceso. Su identificación ayudó a comprender cómo se conectan las distintas etapas del negocio y cuáles son los momentos clave que estructuran la experiencia analizada.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/RGOcMYK.png" alt="pivotal-point">
  <img src="https://imgur.com/YHAHFyV.png" alt="pivotal-point">
  <img src="https://imgur.com/uUMZjIW.png" alt="pivotal-point">
  <img src="https://imgur.com/rD5GwRE.png" alt="pivotal-point">
  <img src="https://imgur.com/hw1P6o3.png" alt="pivotal-point">
  <img src="https://imgur.com/mOw9dHN.png" alt="pivotal-point">
  <img src="https://imgur.com/vpFvHI9.png" alt="pivotal-point">
</div>

En este paso, el equipo reconoció pivotal points en los contextos donde el flujo presenta una transición importante. En IAM, se observó el momento en que el visitante pasa del acceso general al inicio del registro como usuario. En Asset and Resource Management, se identificaron dos pivotal points: el primero en el momento en que la intención de crear una sucursal se transforma en el registro formal de sus datos, y el segundo cuando se pasa de la gestión general del inventario al alta específica de un insumo personalizado. En Design and Planning, los pivotal points aparecen cuando el actor debe definir la composición necesaria para registrar una receta o un kit. En Sales Management, el punto crítico se ubica en la transición hacia la confirmación de una venta. En Tracking, el pivotal point se encuentra en el momento en que el flujo de telemetría pasa del monitoreo continuo a la detección de una anomalía de stock. En Communications y Analytics no se identificaron pivotal points relevantes, debido a que sus flujos mantienen una secuencia continua sin cambios de dirección marcados.

#### Paso 5: Commands

El quinto paso consistió en identificar los comandos del sistema. Un comando representa la intención de un actor de provocar un cambio de estado en el dominio. Los comandos se representan con tarjetas de color azul y se ubican inmediatamente antes del evento de dominio que producen.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/oChmol2.png" alt="commands">
  <img src="https://imgur.com/yii7ltr.png" alt="commands">
  <img src="https://imgur.com/UsAg66F.png" alt="commands">
  <img src="https://imgur.com/bw7fYmO.png" alt="commands">
  <img src="https://imgur.com/Wg0qEsV.png" alt="commands">
  <img src="https://imgur.com/IAtSW8V.png" alt="commands">
</div>

El equipo incorporó los comandos en cada línea de tiempo. En IAM se definieron: Sign up, Sign in y Register new user for account. En Profiles and Preferences se definieron: Change Password, Update personal data, Register new business, Request information about supplies, Request last supplies registered y Request recent alerts. En Subscriptions and Payments se definieron: Select subscription plan, Update plan limits, Configure plan limits, Register payment, Create account y Associate to account. En Asset and Resource Management se definieron: Create branch, Edit branch, Delete branch, Register Custom Supply, Edit Custom Supply, Delete Custom Supply, Register batch, Add supply batch stock, Transfer supply batch stock y Subtrack batch stock. En Design and Planning se definieron: Register recipe, Edit recipe, Delete recipe, Register Kit, Edit Kit y Delete kit. En Sales Management se definieron: Register sale y Show sales. En Device Management se definieron: Register new device, Configure a device y Deactivate device. En Tracking se definieron: Evaluate device state, Register state, Evaluate stock, Perform stock comparison, Register threshold, Edit threshold, Verify threshold y Perform stock adjustment.

#### Paso 6: Policies and Actors

El sexto paso incorporó al modelo los actores y las políticas del sistema. Los actores son los roles de personas que interactúan con el sistema emitiendo comandos, representados con tarjetas pequeñas de color amarillo. Las políticas son reglas de negocio automáticas que, ante la ocurrencia de un evento, disparan un nuevo comando sin intervención humana directa, representadas con tarjetas de color lila.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/ZSbeOHv.png" alt="policies-actors">
  <img src="https://imgur.com/wUaOO3L.png" alt="policies-actors">
  <img src="https://imgur.com/Bq5ICTb.png" alt="policies-actors">
  <img src="https://imgur.com/i98m21X.png" alt="policies-actors">
</div>

El equipo identificó como actores principales al Retail Manager y al Restaurant Manager, presentes en la mayoría de los contextos del sistema. El actor Visitant fue identificado únicamente en el contexto de IAM para el flujo de registro inicial. El actor User fue identificado en los contextos de IAM, Subscriptions and Payments y Profiles and Preferences. El actor Device fue identificado en los contextos de Device Management y Tracking como emisor automático de eventos de telemetría.
Las políticas fueron incorporadas en los flujos donde el sistema debe reaccionar automáticamente ante ciertos eventos. En IAM se definió una política que crea el perfil del usuario automáticamente al completarse el registro. En Subscriptions and Payments se definieron cuatro políticas: una que genera una orden de pago en Stripe con los detalles del plan seleccionado, una que configura los límites del plan para la cuenta al detectarse un nuevo plan, una que crea una nueva cuenta para el negocio al completarse el proceso de cuenta, y una que envía el resumen del pago al usuario una vez generado. En Profiles and Preferences se definió una política que sube la foto a la API de Cloudinary y obtiene el enlace al actualizarse la imagen de perfil o negocio. En Design and Planning se definieron políticas que suben la foto a la API de Cloudinary y obtienen el enlace al cargarse o actualizarse imágenes de recetas y kits. En Sales Management se definió una política que suma automáticamente los precios de las recetas y los insumos adicionales para calcular el total, y otra que envía la información de la venta confirmada. En Asset and Resource Management se definió una política que verifica el stock actual del almacén y lo descuenta al transferir stock entre sucursales, y otra que obtiene la información y envía un mensaje al añadir stock al inventario. En Device Management se definió una política que obtiene la información del cambio y envía una notificación ante eventos de configuración del dispositivo, y otra que crea o edita un registro de umbral para el manejo de alertas. En Tracking se definieron políticas que dividen el peso recibido y configuran el cálculo del stock físico.

#### 4.1.1.1 Candidate Context Discovery

Luego de identificar los eventos, flujos, comandos y políticas del dominio, el equipo avanzó con la detección de contextos candidatos. Esta fase les permitió organizar los elementos vinculados de acuerdo con su cohesión funcional y las reglas de negocio que compartían, lo que facilitó la definición de los futuros Bounded Contexts. De este modo, el equipo logro modelar el dominio de Restock en contextos con responsabilidades claramente separadas.

#### Paso 7: Read models

El séptimo paso consistió en identificar los modelos de lectura (read models) del sistema. Los read models se representan con tarjetas de color verde y corresponden a las vistas o proyecciones de datos que los actores necesitan consultar para poder tomar una decisión y emitir un comando.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/X0h65gU.png" alt="read-models">
  <img src="https://imgur.com/FTHqAMi.png" alt="read-models">
  <img src="https://imgur.com/K1i9PTY.png" alt="read-models">
  <img src="https://imgur.com/fhmxcNR.png" alt="read-models">
  <img src="https://imgur.com/z2zBn1G.png" alt="read-models">
</div>

El equipo incorporó los read models en los puntos del flujo donde el actor necesita información disponible antes de actuar. En IAM se identificaron las vistas de Sign-up Form y Sign-in Form, que el visitante y el usuario consultan antes de registrarse o autenticarse. En Profiles and Preferences se definieron las vistas de Profile settings, utilizada al cambiar contraseña o actualizar datos personales, y Business Profile, utilizada al registrar o actualizar la información del negocio. Asimismo, se definió la vista de Workers Management, consultada por el Retail Manager y Restaurant Manager al registrar un nuevo usuario para la cuenta. En Subscriptions and Payments se identificó la vista de Subscription plans, que el usuario consulta antes de seleccionar o actualizar un plan. En Asset and Resource Management se identificaron las vistas de Branch Management, consultada al crear, editar o eliminar sucursales; Custom Supply Management, consultada al registrar, editar o eliminar insumos personalizados; Inventory Management, consultada al añadir o transferir stock de lotes; y Batch Management, consultada al registrar un lote o transferir stock al almacén. En Design and Planning se identificaron las vistas de Recipe Catalog y Kit Catalog, que permiten al manager consultar el catálogo existente antes de editar o eliminar un ítem. En Sales Management se identificó la vista de Sales Management, consultada al registrar o filtrar ventas. En Device Management se definió la vista de Device Management, consultada al registrar, configurar o desactivar un dispositivo.

#### Paso 8: External Systems

El octavo paso consistió en incorporar al modelo los sistemas externos con los que el sistema interactúa. Los sistemas externos se representan con tarjetas de color rosa oscuro y corresponden a servicios o plataformas fuera del dominio propio que participan en los flujos de negocio.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/SaHLR0Z.png" alt="external-systems">
  <img src="https://imgur.com/5jLk4hf.png" alt="external-systems">
  <img src="https://imgur.com/V28VaFs.png" alt="external-systems">
  <img src="https://imgur.com/2KDUQy1.png" alt="external-systems">
  <img src="https://imgur.com/Dhrs7SO.png" alt="external-systems">
</div>

El equipo identificó tres sistemas externos. El primero es Cloudinary API, presente en los contextos de Profiles and Preferences, Asset and Resource Management y Design and Planning, siendo responsable de la carga, almacenamiento y recuperación de imágenes del sistema mediante la política "Upload the photo to the API and get the link". El segundo es Stripe, integrado en el contexto de Subscriptions and Payments, encargado de procesar los pagos de suscripción mediante la generación de una orden de pago con los detalles del plan seleccionado. El tercero es OneSignal API, integrado en el contexto de Communications, responsable de obtener la información del evento y enviar el mensaje de notificación push correspondiente a los usuarios del sistema.

#### Paso 9: Add Aggregates

El noveno paso consistió en identificar los agregados del dominio y agrupar en torno a ellos los comandos, eventos y políticas correspondientes. Los agregados se representan con tarjetas de color amarillo de mayor tamaño y constituyen la unidad de consistencia del dominio, encapsulando la lógica de negocio dentro de sus límites.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/PBMkzAf.png" alt="aggregates">
  <img src="https://imgur.com/bz39Etw.png" alt="aggregates">
  <img src="https://imgur.com/NKfdPMt.png" alt="aggregates">
  <img src="https://imgur.com/LgEVu9L.png" alt="aggregates">
  <img src="https://imgur.com/x1YNoUB.png" alt="aggregates">
  <img src="https://imgur.com/SCVcxva.png" alt="aggregates">
  <img src="https://imgur.com/MhiSYQl.png" alt="aggregates">
  <img src="https://imgur.com/jCdhakC.png" alt="aggregates">
  <img src="https://imgur.com/1RTkenv.png" alt="aggregates">
  <img src="https://imgur.com/xKjeZEy.png" alt="aggregates">
  <img src="https://imgur.com/AB3T2Wc.png" alt="aggregates">
</div>

El equipo identificó los aggregates en cada bounded context. En IAM se identificó el aggregate User, que agrupa los flujos de registro, autenticación y registro de nuevos usuarios para una cuenta. En Subscriptions and Payments se identificaron tres aggregates: Subscription, que agrupa los eventos de selección y actualización de planes junto con el procesamiento mediante Stripe; Plan, que agrupa la detección y configuración de límites del plan; y Payment, que agrupa el registro del pago y la generación del resumen. En Profiles and Preferences se identificaron dos aggregates: Profile, que agrupa los flujos de cambio de contraseña, actualización de datos personales y carga de imágenes mediante Cloudinary API; y Business, que agrupa el registro y actualización de la información del negocio. En Asset and Resource Management se identificaron cuatro aggregates: Branch, que agrupa la creación, edición y eliminación de sucursales junto con la integración de Cloudinary API para imágenes; Custom Supply, que agrupa el registro, edición y eliminación de insumos personalizados con su respectiva carga de imágenes; Inventory, que agrupa los flujos de adición y transferencia de stock entre sucursales; y Batch, que agrupa el registro de lotes, la transferencia de stock al almacén y el descuento de stock. En Design and Planning se identificaron dos aggregates: Recipe, que agrupa el registro, edición y eliminación de recetas junto con la integración de Cloudinary API; y Kit, que agrupa el registro, edición y eliminación de kits con su respectiva carga de imágenes. En Sales Management se identificó el aggregate Sales Order, que agrupa los flujos de registro de ventas, cálculo del precio total y filtrado de ventas. En Communications se identificó el aggregate Notification, que agrupa la generación de notificaciones y su envío mediante OneSignal API. En Device Management se identificó el aggregate Device, que agrupa el registro, configuración y desactivación de dispositivos. En Tracking se identificaron cuatro aggregates: Device Health Record, que agrupa el monitoreo del estado del dispositivo; Box State Record, que agrupa el registro de telemetría física del contenedor incluyendo peso, temperatura y humedad; Stock Comparison, que agrupa la comparación entre el stock físico estimado y el stock digital para detectar discrepancias; Power Schedule, que agrupa la configuración del encendido y apagado programado del dispositivo; Conciliation Task, que agrupa el proceso de ajuste de stock al detectarse diferencias; y Box Threshold, que agrupa el registro, edición y verificación de umbrales de alerta por dispositivo.

A partir del modelo de Event Storming, se llevó a cabo una sesión de Candidate Context Discovery para identificar los bounded contexts de la solución. Se utilizó principalmente la técnica look-for-pivotal-events durante la sesión.

Primero, se buscaron eventos clave que indiquen cambios de estado entre diferentes partes del proceso del negocio:

<img src="assets/images/chapter4/candidate_context/candidate_step1.png" alt=“DDD” width="500px">

Luego, se agruparon los eventos de acuerdo a los principales cambios de contexto.

<img src="assets/images/chapter4/candidate_context/candidate_step2.png" alt=“DDD” width="500px">

Se trazaron fronteras alrededor de los grupos identificados, estableciendo los límites iniciales de los bounded contexts.

<img src="assets/images/chapter4/candidate_context/candidate_step3.png" alt=“DDD” width="500px">

Finalmente, se seleccionaron nombres para los bounded context. Dando como resultado la definición de 8 bounded contexts y la **versión final del Event Storming**:

<img src="https://imgur.com/oI92pdH.png" alt=“DDD” width="800px">

A continuación, se explicará en qué consiste cada bounded context:

**Identity and Access Management:** También llamado "IAM", este bounded context contiene el proceso de ingreso del usuario a la plataforma, ya sea iniciando sesión o registrandose.

<img src="assets/images/chapter4/candidate_context/bounded_iam.jpg" alt=“DDD” width="500px">

**Subscriptions and Payments:** También llamado "Subscriptions", este bounded context contiene el proceso de selección de planes, configuración de suscripciones, procesamiento de pagos e inicialización de cuentas de negocio, incluyendo la integración con plataformas externas como Stripe.

<img src="assets/images/chapter4/candidate_context/bounded_subscriptions.jpg" alt=“DDD” width="500px">

**Profiles and Preferences:** También llamado "Profile", este bounded context contiene el proceso de gestión de la información personal del usuario, incluyendo la actualización de datos, cambio de contraseña y configuración de preferencias, así como la gestión de información del negocio.

<img src="assets/images/chapter4/candidate_context/bounded_profile.jpg" alt=“DDD” width="500px">

**Communication:** También llamado "Notifications", este bounded context contiene el proceso de generación, envío y recepción de notificaciones dentro de la plataforma, a partir de eventos relevantes del sistema como alertas de stock o incidencias, integrándose con servicios externos como OneSignal para la distribución de mensajes.

<img src="https://imgur.com/5iFcZh6.jpg" alt="DDD" width="500px">

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
