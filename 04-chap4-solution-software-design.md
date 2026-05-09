# Capítulo IV: Solution Software Design

## 4.1. Strategic-Level Domain-Driven Design

En esta sección se aborda el enfoque de Strategic-Level Domain-Driven Design (DDD), el cual permite definir una visión global del sistema a partir de la identificación y organización de los distintos dominios del negocio. A través de este enfoque, el equipo establece los bounded contexts, delimita responsabilidades y analiza las relaciones entre las diferentes áreas funcionales.

### 4.1.1. Design-Level EventStorming

En esta sección se presenta el Design-Level Event Storming, técnica utilizada para detallar el comportamiento del sistema mediante la identificación de eventos, comandos, actores, políticas, modelos de lectura, sistemas externos y agregados. Este enfoque permite profundizar en los bounded contexts definidos previamente y comprender con mayor precisión las interacciones dentro del dominio.

A partir del Big Picture EventStorming, el equipo identificó los siguientes pain points distribuidos en los distintos flujos del negocio. Estos puntos de fricción representan situaciones sin resolver en la operación actual y constituyeron el punto de partida para el diseño detallado del sistema:

**Flujo de cierre de caja:**
- **"What happens if the count was not done correctly?"**: Existía ambigüedad sobre qué ocurre cuando el conteo físico de caja presenta errores. Este pain point evidenció la necesidad de modelar un flujo de corrección que contemple la detección de diferencias, su resolución y el registro de justificaciones.
- **"What do I do with the missing money?"**: No estaba definido el proceso a seguir cuando se detecta una diferencia de caja no resuelta. Este punto señaló la necesidad de un flujo de escalamiento hacia el manager y generación de reportes de cierre.

**Flujo de gestión de inventario en restaurante:**
- **"How do I reduce the wastage?"**: La operación manual de inventario no disponía de mecanismos para controlar el desperdicio de insumos. Este painpoint motivó el diseño de alertas de stock y seguimiento de mermas en el sistema.
- **"What happens if no provider has the supply needed?"**: El flujo de reabastecimiento no contemplaba el escenario en que ningún proveedor disponga del insumo requerido, dejando al negocio sin alternativa. Este punto evidenció la necesidad de gestionar proveedores alternativos o generar alertas críticas.
- **"What happens if the order is rejected?"**: No estaba modelado qué ocurre cuando el proveedor rechaza la orden de compra, interrumpiendo el flujo de reabastecimiento.

**Flujo de gestión de inventario en tienda retail:**
- **"What happens if no provider has the supply needed?"**: Pain point análogo al del sector restaurante, evidenciando la misma brecha en ambos segmentos objetivo.
- **"What happens if the order is rejected?"**: Igualmente presente en el sector retail, señalando la ausencia de un flujo de contingencia ante rechazos de proveedores.
- **"What happens with the expired products?"**: El proceso de ajuste de stock por diferencias detectadas no contemplaba el tratamiento específico de productos vencidos, generando una brecha en el control de inventario.

**Flujo de organización de góndolas:**
- **"What happens with the products in the back of the gondola?"**: El flujo de reposición en góndola no definía qué hacer con los productos ubicados en la parte trasera, una práctica crítica para el control de vencimientos mediante rotación FIFO.

**Flujo de preparación de platos:**
- **"How much time does the order take to reach the kitchen?"**: No estaba definido el tiempo máximo aceptable ni el mecanismo de seguimiento del estado del pedido entre sala y cocina.
- **"What happens if we prepared the wrong dish?"**: El flujo de preparación no contemplaba el manejo de errores en la elaboración del plato ni la reposición de insumos afectados.

**Flujo de atención al cliente en restaurante:**
- **"How much time does the order take to reach the kitchen?"**: Pain point recurrente también presente en el flujo de atención al cliente, reforzando la necesidad de visibilidad del estado del pedido.
- **"What happens if the calculations are wrong?"**: El cálculo del precio de la orden podía presentar errores sin un mecanismo de corrección definido antes del cobro.
- **"What happens if the system goes down?"**: La dependencia del POS para procesar pagos dejaba al negocio sin alternativa ante una caída del sistema.

**Flujo de atención al cliente en tienda retail:**
- **"What happens if the customer needs a product that I don't have?"**: El flujo de atención no contemplaba cómo gestionar la demanda de productos agotados o no disponibles en tienda.
- **"What happens if the system goes down?"**: Análogo al restaurante, la dependencia del POS presentaba el mismo riesgo operativo.

**Flujo de ideación y registro de ofertas:**
- **"What happens if the offer doesn't work?"**: No estaba definido el proceso de evaluación y retiro de una oferta que no genera el impacto esperado en ventas.

**Flujo de creación y prueba de recetas:**
- **"What happens if I don't calculate the correct price?"**: El cálculo del costo teórico de una receta podía presentar errores sin un mecanismo de validación definido antes de su aprobación.
- **"How do I know the new recipe will work?"**: No estaba definido el criterio de aceptación de una receta nueva, dejando la decisión sin un proceso estructurado de prueba y validación.

**Flujo de cierre de día en restaurante y retail:**
- **"What if the place gets robbed?"**: Presente en ambos sectores, este pain point señalaba la ausencia de un protocolo de seguridad ante incidentes físicos al cierre del establecimiento.

Estos pain points del Big Picture evidenciaron las principales brechas operativas de los negocios objetivo y orientaron las decisiones de diseño del sistema. Aquellos directamente relacionados con la gestión de inventarios, el control de stock, la detección de discrepancias y la trazabilidad de insumos fueron priorizados en el Design-Level EventStorming, ya que constituyen el núcleo de valor de la solución Restock. Los pain points relacionados con operaciones fuera del alcance del sistema (seguridad física, atención al cliente presencial, elaboración de platos) fueron registrados como contexto del problema pero no forman parte del diseño técnico de la plataforma.

A partir de este análisis, el equipo avanzó con la construcción del modelo detallado identificando los siguientes pain points específicos para resolver dentro del Design-Level:

- **"How do I access the services?"**: Resuelto mediante el modelado del flujo de Sign up y Sign in en IAM.
- **"What information does a recipe require?"**: Resuelto estableciendo los eventos de registro de receta en Design and Planning.
- **"What information does a Kit require?"**: Resuelto estableciendo los eventos de registro de kit en Design and Planning.
- **"How do I record a sale?"**: Resuelto con el flujo de venta y sus políticas automáticas en Sales Management.
- **"How do you register a branch?"**: Resuelto con el flujo de alta de sucursal en Asset and Resource Management.
- **"How do you register a custom supply?"**: Resuelto con el flujo de registro de insumo personalizado en Asset and Resource Management.

Con estos pain points identificados y priorizados, el equipo avanzó con la construcción del modelo completo siguiendo los nueve pasos del Design-Level Event Storming.

Con el fin de mantener la consistencia y facilitar la interpretación del modelo, el equipo definió una convención de colores para los post-its utilizados:

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/OfzjwJm.png" alt="event-storming-color-convention">
</div>

Con el fin de mantener la consistencia y facilitar la interpretación del modelo, el equipo definió una convención de colores para los post-its utilizados durante la tercera fase del Design-Level Event Storming. Esta convención permitió identificar de manera visual los distintos elementos del dominio, tales como eventos, comandos, actores, políticas, modelos de lectura y sistemas externos, facilitando la comprensión de las relaciones y flujos dentro del sistema.

#### Paso 1: Event

El primer paso consistió en la identificación de los eventos de dominio del sistema. Un evento de dominio representa un hecho relevante que ya ocurrió dentro del negocio y se expresa en tiempo pasado. En esta técnica los eventos se representan con tarjetas de color naranja.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/99oEpmr.png" alt="event">
  <img src="https://imgur.com/uF1M7Jc.png" alt="event">
</div>

El equipo identificó los eventos de dominio agrupados por columnas, representando los distintos flujos del sistema. Entre los eventos identificados se encuentran: User data was saved, Payment accepted, Plan activated, Account created, Recipe register initialized, Supplies selected, Recipe image uploaded, Kit saved into the catalog, Sale confirmed, Branch registered, Custom Supply created, Batch created, Transfer confirmed, Weight registered, Temperature registered, Humidity registered, Values checked, Physical stock estimated, Data anomaly detected, Discrepancy detected, Stock verified, Anomaly detected, Notification sent to the center, entre otros. Cabe destacar que los eventos de telemetría incluyen explícitamente el registro de peso, temperatura y humedad como variables monitoreadas por los dispositivos IoT.

#### Paso 2: Timelines

El segundo paso consistió en organizar los eventos de dominio dentro de líneas de tiempo por cada bounded context del sistema. El objetivo fue establecer el orden cronológico natural en que los hechos ocurren dentro de cada flujo.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/N3A08JD.png" alt="time-line">
  <img src="https://imgur.com/b2VepjU.png" alt="time-line">
  <img src="https://imgur.com/GHpCIkg.png" alt="time-line">
  <img src="https://imgur.com/eNAJXbz.png" alt="time-line">
  <img src="https://imgur.com/0LdKD0Q.png" alt="time-line">
</div>

El equipo organizó los eventos en secuencias horizontales ordenadas bajo los bounded contexts identificados: Identity and Access Management (IAM), Subscriptions and Payments, Profiles and Preferences, Asset and Resource Management, Design and Planning, Sales Management, Device Management y Tracking. El bounded context de Tracking incluye tres flujos diferenciados: el flujo de telemetría física (Weight registered → Temperature registered → Humidity registered → Values checked → Approximated supply data processed → Physical stock estimated), el flujo de comparación de stock (Physical stock received → Digital stock received → Difference evaluated → Discrepancy detected / Stock verified) y el flujo de salud del dispositivo (Voltage registered → CPU usage registered → Memory usage registered → Device temperature registered → Data analyzed / Anomaly detected).

#### Paso 3: Paint Point

El tercer paso incorporó la identificación de los pain points dentro de los flujos ya organizados. Los pain points se representan con tarjetas en forma de rombo de color rosa y señalan fricciones, dudas o decisiones de diseño pendientes que el equipo detectó al revisar las líneas de tiempo.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/0QGK9vD.png" alt="paint-point">
  <img src="https://imgur.com/U8QiL0s" alt="paint-point">
  <img src="https://imgur.com/0C8oOMR.png" alt="paint-point">
  <img src="https://imgur.com/jIvMoqL.png" alt="paint-point">
  <img src="https://imgur.com/3rKIBL0.png" alt="paint-point">
  <img src="https://imgur.com/Pp4xgKP.png" alt="paint-point">
</div>

Se identificaron seis pain points distribuidos en los bounded contexts con mayor ambigüedad de diseño. Cada uno fue resuelto en el transcurso del Design-Level EventStorming tal como se describe al inicio de esta sección:

- **"How do I access the services?"** en IAM. Resuelto mediante el modelado del flujo Sign up con sus cuatro eventos (User entered personal data, User entered their password, User Role was chosen, User data was saved) y la política automática Create profile automatically.

- **"What information does a recipe require?"** en Design and Planning. Resuelto estableciendo seis eventos de registro: Recipe register initialized, Category selected, Recipe information entered, Supplies selected, The quantity of supplies was established, Recipe image uploaded.

- **"What information does a Kit require?"** en Design and Planning. Resuelto estableciendo siete eventos: Kit register initialized, Category selected, Kit description entered, Supplies selected, Quantity of supplies established, Recipe image uploaded, Kit saved into the catalog.

- **"How do I record a sale?"** en Sales Management. Resuelto mediante el flujo de seis eventos: Sale initialized, Branch selected, Recipes selected, Additional supplies were registered, Calculate total price, Sale confirmed; con dos políticas automáticas que calculan el total y descuentan el stock.

- **"How do you register a branch?"** en Asset and Resource Management. Resuelto con cinco eventos: Branch register was initialized, Branch name was entered, Branch location was selected, Branch image was loaded, Branch registered; más la restricción Cannot delete branch with stock available.

- **"How do you register a custom supply?"** en Asset and Resource Management. Resuelto con seis eventos: Name entered, Category selected, Unit price entered, Unit of measurement entered, Custom Supply image was loaded, Custom Supply created.

#### Paso 4: Pivotal Points

El cuarto paso incorporó la identificación de los pivotal points, representados como líneas verticales de separación entre bounded contexts. Estos puntos señalan los momentos de transición más relevantes en el recorrido del sistema, donde el flujo cambia de contexto o de responsabilidad.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/RGOcMYK.png" alt="pivotal-point">
  <img src="https://imgur.com/YHAHFyV.png" alt="pivotal-point">
  <img src="https://imgur.com/uUMZjIW.png" alt="pivotal-point">
  <img src="https://imgur.com/rD5GwRE.png" alt="pivotal-point">
  <img src="https://imgur.com/hw1P6o3.png" alt="pivotal-point">
  <img src="https://imgur.com/mOw9dHN.png" alt="pivotal-point">
  <img src="https://imgur.com/vpFvHI9.png" alt="pivotal-point">
</div>

El equipo reconoció pivotal points en los siguientes momentos:

- En **IAM**, la transición entre el flujo de Sign up y el flujo de Sign in marca el cambio de actor (de Visitant a User) y de intención.
- En **Subscriptions and Payments**, la transición entre la selección del plan y el procesamiento del pago marca el momento en que el sistema externo Stripe toma control del flujo financiero.
- En **Asset and Resource Management**, la transición entre la gestión de sucursales y la gestión de insumos personalizados representa un cambio de objeto de dominio.
- En **Design and Planning**, la transición entre el flujo de recetas y el flujo de kits marca el cambio de actor responsable.
- En **Sales Management**, la transición hacia el cálculo del precio total y la confirmación de la venta representa el momento de mayor impacto operativo, ya que dispara políticas automáticas de descuento de stock.
- En **Tracking**, la transición desde la recepción de telemetría hacia la comparación de stock y la detección de discrepancias marca el punto donde el sistema pasa del monitoreo pasivo a la acción correctiva.

En Communications y Profiles and Preferences no se identificaron pivotal points relevantes, ya que sus flujos mantienen una secuencia continua sin cambios de contexto marcados.

#### Paso 5: Commands

El quinto paso consistió en identificar los comandos del sistema. Un comando representa la intención de un actor de provocar un cambio de estado en el dominio. Los comandos se representan con tarjetas de color azul y se ubican antes del evento de dominio que producen.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/oChmol2.png" alt="commands">
  <img src="https://imgur.com/yii7ltr.png" alt="commands">
  <img src="https://imgur.com/UsAg66F.png" alt="commands">
  <img src="https://imgur.com/bw7fYmO.png" alt="commands">
  <img src="https://imgur.com/Wg0qEsV.png" alt="commands">
  <img src="https://imgur.com/IAtSW8V.png" alt="commands">
</div>

El equipo incorporó los comandos en cada línea de tiempo de la siguiente manera:

- En **IAM** se definieron: Sign up, Sign in y Register new user for account.

- En **Profiles and Preferences** se definieron: Change Password, Update personal data, Register new business, Request information about supplies, Request last supplies registered y Request recent alerts.

- En **Subscriptions and Payments** se definieron: Select subscription plan, Update plan limits, Configure plan limits, Register payment, Create account y Associate to account.

- En **Asset and Resource Management** se definieron: Create branch, Edit branch, Delete branch, Register Custom Supply, Edit Custom Supply, Delete Custom Supply, Add supply batch stock, Subtrack supply batch stock y Transfer supply batch stock.

- En **Design and Planning** se definieron: Register recipe, Edit recipe, Delete recipe, Register Kit, Edit Kit y Delete kit.

- En **Sales Management** se definieron: Register sale y Show sales.

= En **Device Management** se definieron: Register new device, Configure a device y Deactivate device.

= En **Tracking** se definieron: Evaluate device state, Register state, Evaluate stock, Perform stock adjustment, Register threshold, Edit threshold y Verify threshold.

#### Paso 6: Policies and Actors

El sexto paso incorporó al modelo los actores y las políticas del sistema. Los actores se representan con tarjetas pequeñas de color amarillo. Las políticas son reglas de negocio automáticas que, ante la ocurrencia de un evento, disparan un nuevo comando sin intervención humana directa, y se representan con tarjetas de color lila.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/ZSbeOHv.png" alt="policies-actors">
  <img src="https://imgur.com/wUaOO3L.png" alt="policies-actors">
  <img src="https://imgur.com/Bq5ICTb.png" alt="policies-actors">
  <img src="https://imgur.com/i98m21X.png" alt="policies-actors">
</div>

El equipo identificó como actores principales al **Retail Manager** y al **Restaurant Manager**, presentes en la mayoría de los bounded contexts operativos. El actor **Visitant** fue identificado únicamente en IAM para el flujo de Sign up. El actor **User** fue identificado en IAM, Subscriptions and Payments y Profiles and Preferences. El actor **Device** fue identificado en Tracking como emisor autónomo de eventos de telemetría.

Las políticas identificadas por bounded context son las siguientes:

- En **IAM:** Create profile automatically, disparada tras User data was saved, y Access the dashboard when logging in, disparada tras Worker data was saved.

- En **Subscriptions and Payments:** Generate a payment order in Stripe with details, disparada tras Payment details entered; Configures the plan limits for the account, disparada tras New plan chosen; Creates a new account for the business, disparada tras Account created; y Sends the payment summary to the user, disparada tras Summary generated.

- En **Profiles and Preferences** y **Design and Planning:** Upload the photo to the API and get the link, disparada cada vez que se carga o actualiza una imagen de perfil, negocio, receta o kit a través de Cloudinary API.

- En **Sales Management:** Sum all the prices of the recipes and additional supplies, disparada tras Additional supplies were registered para calcular el total; y Subtract automatically the stock of the sold supplies, disparada tras Sale confirmed para actualizar el inventario.

- En **Asset and Resource Management:** Gets the info and sends a message, disparada tras Batch stock added to the inventory; y Verifies the current stock of the warehouse and subtracts it, disparada durante la transferencia de stock entre sucursales.

- En **Device Management:** Gets info of the change and sends a notification, disparada tras Configuration confirmed; y Creates or edits a threshold record for alert handling, disparada tras configuraciones de umbrales en el dispositivo.

- En **Tracking:** Divide the weight received to calculate the physical stock, disparada al procesar los datos de telemetría para estimar el stock físico.

#### 4.1.1.1 Candidate Context Discovery

Luego de identificar los eventos, flujos, comandos y políticas del dominio, el equipo avanzó con la detección de contextos candidatos. Esta fase les permitió organizar los elementos vinculados de acuerdo con su cohesión funcional y las reglas de negocio que compartían, lo que facilitó la definición de los futuros Bounded Contexts. De este modo, el equipo logro modelar el dominio de Restock en contextos con responsabilidades claramente separadas.

#### Paso 7: Read models

El séptimo paso consistió en identificar los modelos de lectura del sistema. Los read models se representan con tarjetas de color verde y corresponden a las vistas que los actores necesitan consultar antes de emitir un comando.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/X0h65gU.png" alt="read-models">
  <img src="https://imgur.com/FTHqAMi.png" alt="read-models">
  <img src="https://imgur.com/K1i9PTY.png" alt="read-models">
  <img src="https://imgur.com/fhmxcNR.png" alt="read-models">
  <img src="https://imgur.com/z2zBn1G.png" alt="read-models">
</div>

El equipo incorporó los read models en los siguientes bounded contexts:

- En **IAM:** Sign-up Form, consultada por el Visitant antes de registrarse; y Sign-in Form, consultada por el User antes de autenticarse.

- En **Profiles and Preferences:** Profile settings, consultada al cambiar contraseña o actualizar datos personales; Business Profile, consultada al registrar o actualizar la información del negocio; y Workers Management, consultada al registrar un nuevo usuario para la cuenta.

- En **Subscriptions and Payments:** Subscription plans, consultada por el User antes de seleccionar o actualizar un plan de suscripción.

- En **Design and Planning:** Recipe Catalog, consultada por el Restaurant Manager al registrar, editar o eliminar una receta; y Kit Catalog, consultada por el Retail Manager al registrar, editar o eliminar un kit.

- En **Sales Management:** Sales Management, consultada al registrar una venta o filtrar el historial de ventas.

- En **Asset and Resource Management:** Branch Management, consultada al crear, editar o eliminar sucursales; Custom Supply Management, consultada al registrar, editar o eliminar insumos personalizados; Inventory Management, consultada al añadir o transferir stock; y Batch Management, consultada al registrar un lote.

En **Device Management:** Device Management, consultada al registrar, configurar o desactivar un dispositivo.

#### Paso 8: External Systems

El octavo paso consistió en incorporar al modelo los sistemas externos. Los sistemas externos se representan con tarjetas de color rojo o rosa oscuro y corresponden a servicios fuera del dominio propio que participan en los flujos de negocio.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/SaHLR0Z.png" alt="external-systems">
  <img src="https://imgur.com/5jLk4hf.png" alt="external-systems">
  <img src="https://imgur.com/V28VaFs.png" alt="external-systems">
  <img src="https://imgur.com/2KDUQy1.png" alt="external-systems">
  <img src="https://imgur.com/Dhrs7SO.png" alt="external-systems">
</div>

El equipo identificó tres sistemas externos:

- **Cloudinary API** presente en Profiles and Preferences (carga de imágenes de perfil y negocio), Asset and Resource Management (carga de imágenes de sucursales e insumos) y Design and Planning (carga de imágenes de recetas y kits). Es activada mediante la política Upload the photo to the API and get the link.

- **Stripe** presente en Subscriptions and Payments, encargado de procesar los pagos de suscripción. Aparece en el flujo entre Payment details entered y Pay subscription plan, activado mediante la política Generate a payment order in Stripe with details.

- **OneSignal API** presente en Communications, responsable de enviar notificaciones push a los usuarios. Es activado mediante la política Gets the info and sends a message, disparada tras el evento Notification sent to the center.

#### Paso 9: Add Aggregates

El noveno paso consistió en identificar los agregados del dominio y agrupar en torno a ellos los comandos, eventos y políticas correspondientes. Los agregados se representan con tarjetas de color amarillo de mayor tamaño y constituyen la unidad de consistencia del dominio.

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

El equipo identificó los agregados en cada bounded context de la siguiente manera:

- En **IAM** se identificó el agregado **User**, que centraliza los flujos de Sign up, Sign in y Register new user for account, garantizando que la identidad y el acceso de cada actor estén correctamente gestionados.

- En **Subscriptions and Payments** se identificaron tres agregados: **Subscription**, que agrupa los eventos de selección de plan y procesamiento mediante Stripe; **Plan**, que gestiona la detección y configuración de límites del plan contratado; y **Payment**, que agrupa el registro del pago, la recepción del monto y la generación del resumen de facturación.

- En **Profiles and Preferences** se identificaron dos agregados: **Profile**, que centraliza la creación de perfil, el cambio de contraseña, la actualización de datos personales y la carga de imágenes mediante Cloudinary API; y **Business**, que gestiona el registro y actualización de la información comercial del negocio.

- En **Asset and Resource Management** se identificaron cuatro agregados: **Branch**, que gestiona el ciclo de vida completo de las sucursales incluyendo la restricción de eliminación cuando existe stock disponible e integración con Cloudinary API; **Custom Supply**, que gestiona el catálogo de insumos personalizados con su información, imagen y estado; **Inventory**, que centraliza las operaciones de adición y transferencia de stock entre sucursales; y **Batch**, que gestiona los lotes de inventario, incluyendo su creación, transferencia y descuento de stock.

- En **Design and Planning** se identificaron dos agregados: **Recipe**, que centraliza el registro, edición y eliminación de recetas junto con la vinculación de insumos, sus cantidades y la integración con Cloudinary API; y **Kit**, que gestiona la composición de kits comerciales para el sector retail con la misma estructura.

- En **Sales Management** se identificó el agregado **Sales Order**, que centraliza el registro de ventas, el cálculo automático del precio total y el filtrado del historial de ventas.

- En **Communications** se identificó el agregado **Notification**, que gestiona la generación de notificaciones ante eventos del sistema y su despacho mediante OneSignal API.

- En **Device Management** se identificó el agregado **Device**, que centraliza el registro, configuración y desactivación de dispositivos IoT, incluyendo la asignación de sucursal, insumo de seguimiento, umbrales de peso, humedad y temperatura, y programación de encendido y apagado.

En **Tracking** se identificaron seis agregados:

- **Device Health Record**, que gestiona el monitoreo de la salud operativa del dispositivo a partir de métricas de voltaje, uso de CPU, uso de memoria y temperatura del dispositivo, con dos posibles resultados: Data analyzed o Anomaly detected.

- **Box State Record**, que centraliza el flujo de telemetría física del dispositivo: Weight registered → Temperature registered → Humidity registered → Values checked → Divide the weight received to calculate the physical stock → Approximated supply data processed → Physical stock estimated, con dos posibles derivaciones: Processed data stored o Data anomaly detected. Este agregado incorpora explícitamente el registro de temperatura y humedad como variables monitoreadas junto al peso.

- **Stock Comparison**, que gestiona la comparación entre el stock físico estimado por el dispositivo y el stock digital registrado en el sistema, evaluando la diferencia y derivando en Discrepancy detected o Stock verified.

- **Power Schedule**, que gestiona la programación de encendido y apagado del dispositivo, con el flujo: Device selected → Power off schedule set → Power on schedule set → Configuration stored, y la ejecución automática: Schedules detected → Schedule time reached → Turn on/off action evaluated → Device turned on / Device turned off.

- **Conciliation Task**, que gestiona el proceso de ajuste de stock cuando se detecta una discrepancia: Physical and digital stock received → Stock difference received → Stock adjusted → Real stock stored.

- **Box Threshold**, que centraliza la configuración y verificación de umbrales de alerta por dispositivo. Al registrar un umbral se capturan los límites mínimos y máximos de peso, humedad y temperatura junto al nombre del insumo. Al verificar un umbral se calcula si los datos actuales superan los límites configurados, generando la política Generates an alert of surpassed threshold cuando corresponde.

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
