# Capítulo IV: Solution Software Design
## 4.1. Strategic-Level Domain-Driven Design
### 4.1.1. Design-Level EventStorming
#### 4.1.1.1 Candidate Context Discovery
#### 4.1.1.2 Domain Message Flows Modeling
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
