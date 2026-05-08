# Capítulo IV: Solution Software Design
## 4.1. Strategic-Level Domain-Driven Design
### 4.1.1. Design-Level EventStorming
#### 4.1.1.1 Candidate Context Discovery
#### 4.1.1.2 Domain Message Flows Modeling
#### 4.1.1.3 Bounded Context Canvases
### 4.1.2. Context Mapping
### 4.1.3. Software Architecture
#### 4.1.3.1. Software Architecture System Landscape Diagram
#### 4.1.3.2. Software Architecture Context Level Diagrams
#### 4.1.3.2. Software Architecture Container Level Diagrams

El diagrama de contenedores de la arquitectura de software proporciona una visión de alto nivel de los principales contenedores del sistema, incluyendo aplicaciones, servicios, bases de datos y componentes IoT, como dispositivos embebidos y aplicaciones edge que interactúan con sensores físicos. Además, muestra cómo estos elementos se comunican entre sí para procesar y transmitir información. Para Restock, el diagrama de contenedores incluye los siguientes contenedores principales:

<img src="https://i.imgur.com/Mn9kfjy.png" alt="Diagrama de contenedores de Restock">

**Landing Page:** Sitio web estático desarrollado con HTML5, CSS y JavaScript que presenta información pública sobre la plataforma, como funcionalidades, planes y términos de servicio (ToS). Además, guía a los visitantes hacia la aplicación web mediante elementos de navegación y llamados a la acción, interactuando con el contenedor **Web Application** a través de redirecciones. A su vez, redigire a los visitantes de dispositivos móviles a la tienda de aplicaciones para descargar la aplicación móvil.

**Web Server:** Componente que actúa como punto de entrada a la plataforma web de Restock, encargado de entregar la aplicación frontend al navegador del usuario, interactuando con la Restock Platform Web Application.

**Web Application:** Aplicación web desarrollada con TypeScript y Angular que se ejecuta en el navegador del usuario y permite gestionar el inventario, visualizar insumos y platos, y monitorear el stock en tiempo real, interactuando con el Load Balancer mediante solicitudes HTTP que deben llegar hasta el API.

**Mobile Application:** Aplicación móvil multiplataforma desarrollada con Dart y Flutter que permite a los usuarios gestionar inventario, consultar productos y monitorear el stock en tiempo real desde dispositivos móviles, interactuando con Load Balancer mediante HTTP y con la Mobile SQLite Database para almacenamiento local.

**Mobile SQLite Database:** Base de datos local basada en SQLite que almacena información de la aplicación en el dispositivo móvil del usuario para permitir acceso offline y mejorar el rendimiento, interactuando únicamente con la Restock Mobile Application.

**NGINX Load Balancer:** Es el balanceador de carga basado en NGINX que redirige las peticiones HTTP que son para el Cloud REST API hacia una instancia de API Gateway. Ayuda a proteger la entrada directa al servidor central y a reducir saturación en servidores.

**API Gateway:** Es el punto de entrada para acceder al Cloud REST API. Funciona como módulo de seguridad para validar tokens asociadas a las consultas de los clientes (web y móvil).

**Cloud REST API:** REST API en la nube desarrollada con Java y Spring Boot que gestiona la lógica de negocio, procesa datos de inventario, recibe información desde el Edge Application, envía comandos de configuración a los dispositivos y coordina la comunicación entre los distintos componentes del sistema, interactuando con su base de datos centralizada MongoDB Database, base de datos en memoria Redis Cache Server y servicios externos como Stripe, Cloudinary y OneSignal.

**MongoDB Database:** Base de datos central del sistema que almacena información de inventario, usuarios, productos y suscripciones, interactuando con el Cloud REST API.

**Redis Cache Server:** Base de datos en memoria que almacena información que es consultada frecuentemente por los usuarios para reducir latencia y sobrecarga de la base de datos principal MongoDB Database.

**Edge Application:** Edge Gateway desarrollado en Python y Flask que recibe datos de peso, temperatura y humedad desde la aplicación embebida, los procesa y los envía al Cloud REST API, además de recibir comandos de configuración como asignación de suministro desde el API y transmitirlos al dispositivo IoT. Además, se encarga de evaluar el estado de salud de los dispositivos del usuario.

**Edge Local Database:** Base de datos local basada en SQLite que almacena configuración del dispositivo, datos recientes de sensores y eventos pendientes de sincronización para garantizar el funcionamiento offline y la integridad de los datos, interactuando con la Restock Local Station Edge Application.

**MQTT Broker:** Es el servidor que funciona como puente de comunicación entre la nube (Cloud REST API) y el edge gateway (Edge Application). Además, recibe los datos procesados del edge gateway y los enruta hacia el API Gateway para que puedan ser verificados y comparados. También, se encarga de recibir comandos por parte del API en nube para entregarlos al gateway adecuado.

**Embedded Application:** Software embebido desarrollado en C++ que controla el dispositivo físico de medición, captura datos de peso, temperatura y humedad desde los sensores y recibe los datos procesados del gateway para mostrarlos de forma constante en el Display LCD que posee el dispositivo IoT.

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
