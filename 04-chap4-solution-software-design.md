# Capítulo IV: Solution Software Design
## 4.1. Strategic-Level Domain-Driven Design

En esta sección se aborda el enfoque de Strategic-Level Domain-Driven Design (DDD), el cual permite definir una visión global del sistema a partir de la identificación y organización de los distintos dominios del negocio. A través de este enfoque, el equipo establece los bounded contexts, delimita responsabilidades y analiza las relaciones entre las diferentes áreas funcionales.

### 4.1.1. Design-Level EventStorming

En esta sección se presenta el Design-Level Event Storming, técnica utilizada para detallar el comportamiento del sistema mediante la identificación de eventos, comandos y reglas de negocio. Este enfoque permite profundizar en los bounded contexts definidos previamente y comprender con mayor precisión las interacciones dentro del dominio.

A continuación, se describen los distintos bounded contexts identificados.

#### 1. Identity and Access Management

Este bounded context gestiona el registro, la autenticación y la asignación de roles de los usuarios dentro del sistema, permitiendo controlar el acceso a las funcionalidades disponibles.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/zkDUj9I.png" alt="identity-and-access-management">
</div>

En la imagen se observa el flujo de registro e inicio de sesión, en el cual el usuario ingresa sus datos personales, su contraseña y selecciona un rol. Posteriormente, el sistema valida las credenciales y autentica al usuario.

Además, se evidencia la creación automática del perfil y la asociación del usuario con una cuenta de negocio en el caso de roles específicos, como el de trabajador. Este contexto también contempla decisiones relacionadas con la elección de un plan, lo que demuestra su conexión directa con otros módulos del sistema.

#### 2. Profile Management

Este bounded context se encarga de la gestión y actualización de la información del perfil del usuario.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/JhuqGxM.png" alt="profile-management">
</div>

En la imagen se identifican procesos como la creación del perfil, la actualización de datos personales, el cambio de contraseña y la gestión de la foto de perfil. También se evidencia la integración con un sistema externo, Cloudinary API, para el almacenamiento de imágenes.

Asimismo, se observan acciones específicas como la edición de información y la configuración del perfil, lo que permite mantener actualizados los datos del usuario dentro del sistema.

#### 3. Alerts and Notifications

Este bounded context gestiona la generación y el envío de notificaciones a partir de eventos relevantes del sistema, permitiendo mantener informado al usuario.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/KhRjH5Y.png" alt="alerts-and-notifications">
</div>

En la imagen se observa que las notificaciones se generan a partir de eventos del sistema mediante el proceso de creación de una nueva notificación. Luego, la información de la situación es recibida, procesada y enviada al centro de notificaciones.

Además, se evidencia el uso de un sistema externo, OneSignal API, para el envío de mensajes. También se incluyen funcionalidades como la visualización de notificaciones y la aplicación de filtros, lo que indica que este contexto no solo gestiona el envío, sino también la consulta de notificaciones por parte del usuario.

#### 4. Service Design and Planning

Este bounded context se enfoca en la gestión y planificación de recetas, permitiendo su registro, edición y organización dentro del sistema.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/dk4Uhso.png" alt="service-design-and-planning">
</div>

En la imagen se identifican procesos claros como el registro de recetas, en el cual se selecciona una categoría, se ingresan datos, se asignan insumos y se define la cantidad de estos. Asimismo, se observa la carga de imágenes mediante la integración con Cloudinary API, lo que evidencia el uso de un sistema externo.

También se incluyen procesos de edición, donde se actualizan datos, categorías, insumos e imágenes, así como la confirmación de cambios. Finalmente, se observa la eliminación de insumos y la posible generación de alertas mediante el envío de correo, lo que indica una interacción con el contexto de notificaciones. Este bounded context refleja un flujo completo de gestión de recetas, desde su creación hasta su mantenimiento.

#### 5. Subscriptions and Payments

Este bounded context se encarga de la gestión de suscripciones y pagos dentro de la plataforma. Permite a los usuarios seleccionar un plan, ingresar sus datos de pago, procesar la transacción y activar la suscripción correspondiente. Asimismo, contempla la configuración y actualización de los límites asociados a cada plan.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/aDQ35ov.png" alt="subscriptions-and-payments">
</div>

Este bounded context concentra el ciclo completo de monetización del sistema. En primer lugar, se realiza el registro del negocio y la creación de la cuenta. Posteriormente, el usuario selecciona un plan de suscripción e ingresa sus datos de pago, los cuales son procesados a través de un proveedor externo. Una vez que el pago es aceptado, la suscripción se activa y se configuran los límites correspondientes.

Además, este contexto no solo gestiona los pagos, sino también la habilitación de capacidades dentro del sistema, ya que define los recursos disponibles según el plan contratado. Por ello, mantiene una relación directa con la verificación y actualización de límites cuando se produce un cambio de suscripción.

#### 6. Service Operation and Monitoring

Este bounded context está orientado a la operación del servicio y al monitoreo continuo de los recursos. Su propósito es supervisar el estado de los dispositivos, el comportamiento del stock y la detección de anomalías, con el fin de generar alertas, reportes y acciones correctivas.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/bkOMb8M.png" alt="service-operation-and-monitoring">
</div>

Este bounded context actúa como el núcleo de supervisión operativa del sistema. Recibe datos provenientes de dispositivos y eventos de telemetría, los cuales son utilizados para calcular el estado actual del stock y verificar su consistencia.

A partir de estos datos, el sistema compara valores estimados con valores reales, detecta anomalías y evalúa si se han superado los umbrales definidos. Asimismo, se monitorea la salud de los dispositivos para identificar posibles fallas.

Cuando se detecta alguna inconsistencia o problema, se generan reportes, alertas o tickets que permiten la intervención de usuarios responsables. De esta manera, este contexto garantiza la visibilidad y control continuo sobre los recursos y la operación del sistema.

#### 7. Asset and Resource Management

Este bounded context se encarga de la gestión de los activos y recursos del negocio. Incluye la administración de sucursales, suministros personalizados, inventarios, lotes y dispositivos, permitiendo su registro, actualización, transferencia y asociación.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/pPp4MA4.png" alt="asset-and-resource-management">
</div>

Este bounded context representa la capa encargada de la gestión de los recursos físicos y operativos del sistema. En él se administran las sucursales, los suministros personalizados, los inventarios organizados por lotes y los dispositivos asociados.

Cada entidad cuenta con operaciones de creación, edición y eliminación, así como mecanismos de asociación entre sí. Además, se contemplan procesos de transferencia de stock entre sucursales y actualización de cantidades disponibles.

Por otro lado, se gestiona el ciclo de vida de los dispositivos, incluyendo su registro, configuración, asignación y desactivación. En conjunto, este contexto permite mantener la trazabilidad, organización y control eficiente de los recursos del negocio.

#### 8. Sales Order Management

Este bounded context se encarga de la gestión de órdenes de venta dentro del sistema. Permite registrar ventas, calcular precios totales, gestionar los productos asociados y actualizar automáticamente el stock en función de las transacciones realizadas.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/uQCiGQC.png" alt="sales-order-management">
</div>

Este bounded context gestiona el flujo completo de una venta desde su inicio hasta su confirmación. El proceso comienza con el registro de la venta, donde se selecciona la sucursal correspondiente y los productos o recetas involucradas. Posteriormente, se registran suministros adicionales si corresponde y se calcula el precio total considerando todos los elementos.

Una vez confirmado el monto, la venta se valida y se marca como completada. Como parte del proceso, el sistema descuenta automáticamente del inventario los suministros utilizados, asegurando la consistencia del stock.

Adicionalmente, este contexto permite la consulta de ventas mediante filtros, lo que facilita el análisis y seguimiento de las transacciones realizadas. También se genera información asociada a la venta confirmada, la cual puede ser utilizada por otros contextos del sistema, como notificaciones o monitoreo.

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
