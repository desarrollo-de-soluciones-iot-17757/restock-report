# Capítulo VI: Product Implementation, Validation & Deployment

## 6.1. Software Configuration Management

En esta sección el equipo desarrolla y explica la justificación de las herramientas y tecnologías a utilizar que ayudan a desarrollar cada producto de software definido en el alcance del proyecto.

### 6.1.1. Software Development Environment Configuration

A continuación, se define la configuración decidida por el equipo para las diversas áreas que conforman al entorno de desarrollo del producto. Entre los aspectos, se define como se maneja el proyecto, los requisitos, el diseño del producto, el ciclo de vida de desarrollo de software, las pruebas, el despliegue y la documentación.


| Actividad               | Herramienta / Guía                                     | Propósito                                                                          | Tipo de acceso / Ruta                                                                                                            |
| ----------------------- | ------------------------------------------------------ | ---------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------- |
| Project Management      | Jira                                                   | Seguimiento de backlog, tareas, sprints y desempeño de los integrantes del grupo.  | [https://www.atlassian.com/es/software/jira](https://www.atlassian.com/es/software/jira)                                                                                               |
| Requirements Management | Gherkin Conventions                                    | Escritura legible de requisitos con formato Given/When/Then.                       | [https://cucumber.io/docs/gherkin/](https://cucumber.io/docs/gherkin/)                                                                   |
| Product Design          | Structurizr C4                                         | Diseño de la arquitectura del sistema completo y sus aplicaciones.                 | [https://playground.structurizr.com/](https://playground.structurizr.com/)                                                           |
| Product Design          | PlantUML                                               | Diseño de la arquitectura de bajo nivel incluyendo diagramas de clase.             | [https://plantuml.com/](https://plantuml.com/)                                                           |
| Product Design          | Figma                                                  | Prototipos de las aplicaciones web, móvil y el sitio web estático.                 | [https://figma.com](https://figma.com)                                                                                            |
| Product Design          | Wokwi                                                  | Diseño de prototipo del dispositivo IoT.                                           | [https://wokwi.com/](https://wokwi.com/)                                                                                            |
| Software Development    | HTML5, CSS y JavaScript / WebStorm                     | Desarrollo del sitio web estático.                                                 | [https://www.jetbrains.com/es-es/webstorm/](https://www.jetbrains.com/es-es/webstorm/)                        |
| Software Development    | Flutter y Dart / Android Studio                        | Desarrollo de la aplicación móvil.                                                 | [https://developer.android.com/studio?hl=es-419](https://developer.android.com/studio?hl=es-419)                                                               |
| Software Development    | TypeScript y Angular / WebStorm                        | Desarrollo de la aplicación web.                                                   | [https://www.jetbrains.com/es-es/webstorm/](https://www.jetbrains.com/es-es/webstorm/)                                                         |
| Software Development    | Java y Spring Boot / IntelliJ IDEA                     | Desarrollo del REST API y lógica de negocio.                                       | [https://www.jetbrains.com/idea/](https://www.jetbrains.com/idea/)                                                         |
| Software Development    | Python y Flask / PyCharm                               | Desarrollo de la capa Edge para el entorno IoT.                                    | [https://www.jetbrains.com/es-es/pycharm/download/](https://www.jetbrains.com/es-es/pycharm/download/)                                    
| Software Development    | C++ / Arduino IDE                                      | Desarrollo de la aplicación embebida para dispositivos IoT.                        | [https://www.arduino.cc/en/software](https://www.arduino.cc/en/software)                                                         ||
| Software Development    | MongoDB / MongoDB Compass                              | Uso local de la base de datos para pruebas en entornos de desarrollo.              | [https://www.mongodb.com/products/tools/compass](https://www.mongodb.com/products/tools/compass)                                                         ||
| Software Development    | Git + GitHub                                           | Gestión colaborativa del código fuente.                                            | [https://github.com](https://github.com)                                                                                          |
| Software Testing        | jUnit, Mockito                                         | Pruebas unitarias y de integración para el REST API.                               | [https://junit.org/](https://junit.org/) / [https://site.mockito.org/](https://site.mockito.org/)           |
| Software Testing        | pytest                                                 | Pruebas unitarias para el Edge API.                                                | [https://docs.pytest.org/](https://docs.pytest.org/)   |
| Software Deployment     | Vercel                                                 | Despliegue continuo del sitio web estático.                                        | [https://vercel.com/](https://vercel.com/)                                                |
| Software Deployment     | Vercel                                                 | Despliegue continuo de la aplicación web.                                          | [https://vercel.com/](https://vercel.com/)                                                |
| Software Deployment     | Firebase App Distribution                              | Despliegue continuo de la aplicación móvil.                                        | [https://firebase.google.com/docs/app-distribution](https://firebase.google.com/docs/app-distribution)                                                |
| Software Deployment     | Azure Websites                                         | Despliegue continuo del REST API en nube.                                          | [https://azure.microsoft.com/es-es/products/app-service/web](https://azure.microsoft.com/es-es/products/app-service/web)                                                |
| Software Deployment     | MongoDB Atlas Cloud                                    | Despliegue de la base de datos noSQL en la nube.                                   | [https://www.mongodb.com/es/products/platform/atlas-database](https://www.mongodb.com/es/products/platform/atlas-database)                                                |
| Software Documentation  | Swagger                                                | Documentación de APIs, funcionalidades y criterios técnicos.                       | [https://swagger.io/](https://swagger.io/)                                                                                        |

### 6.1.2. Source Code Management

El control de versiones del código fuente de los productos de software para el proyecto (sitio web estático, aplicación web, aplicación móvil, REST API, Edge API y aplicación embebida) sigue un esquema definido por el equipo para un trabajo efectivo.
Para ello, se utiliza a GitHub como plataforma para los repositorios de cada producto de software.
Además, se usa Git Flow como flujo de trabajo para el control de versiones y la creación de ramas para el trabajo en paralelo del proyecto.

#### Repositorios de productos de software

| Producto de software | URL del repositorio en Github                          | 
| -------------------- | ------------------------------------------------------ | 
| Landing Page         |                                                        | 
| Web Application      |                                                        |
| Mobile Application   |                                                        |
| REST Services API    |                                                        |
| Edge Services API    |                                                        |
| Embedded Application |                                                        |

#### Uso de GitFlow

El uso de Git Flow permite la creación de ramas para separar responsabilidades de trabajo y permitir el trabajo paralelo en un mismo producto de software.
A continuación, se explican las ramas que se usan para el desarrollo de los productos de software:

**Rama 'main'**

Es la rama principal del repositorio y donde se almacena la última versión estable del producto.

- No se deben realizar commits directamente a esta rama, a menos que sea el primer commit del repositorio.
- Esta rama solo puede recibir 'merges' desde `release` o alguna rama `hotfix`.

**Rama 'develop'**

Es la rama donde se consolida el progreso del desarrollo de funcionalidades.

- No se deben realizar commits directamente a esta rama.
- Esta rama solo puede recibir 'merges' desde alguna rama `feature` o `bugfix`.

**Rama 'release'**

Es el conjunto de ramas que facilita el versionamiento y lanzamiento de nuevas versiones del producto.

- Se usa SemVer 2.0.0 para el versionamiento de los lanzamientos de las aplicaciones (major.minor.patch).
  - Major: se usa cuando una versión nueva e incompable con la anterior es lanzada.
  - Minor: se usa cuando se lanza un conjunto de funcionalidades nuevas a la aplicación.
  - Patch: se usa cuando un bug o error es resuelto.
- Las ramas de tipo `release` deben nombrase de acuerdo a la versión de la aplicación (ej.: `release/1.0.0`).
- Las ramas de tipo `release` deben ser creadas a partir de la rama `develop`.
- No se deben realizar commits directamente a esta rama, para ello, se crea una rama de tipo `bugfix` y el cambio hecho también debe verse reflejado en `develop`.

**Rama 'feature'**

Es el conjunto de ramas donde cada una contiene las diversas funcionalidades designadas para el producto.

- Estas ramas solo se deben crear a partir de la rama `develop`.
- Se debe nombrar a la rama según la funcionalidad que se desarrolla internamente.
- El nombre de la rama debe estar en minúscula, inglés y separada por guiones.
- Por ejemeplo: `feature/sign-in` o `feature/register-branch`.

**Rama 'hotfix'**

Es el conjunto de ramas donde se resuelven errores críticos de la etapa de producción de una aplicación.

- Estas ramas solo se deben crear a partir de `main`.
- Los cambios hechos en estas ramas debe verse reflejado en `main` y en `develop`.
- Para el nombramiento de estas ramas, debe utilizar el número de versión sobre la cual se están aplicando las correcciones.
- Por ejemplo: `hotfix/1.0.0`.

**Rama 'bugfix'**

Es el conjunto de ramas donde se resuelven bugs menores que no afectan el funcionamiento de la aplicación.

- Estas ramas solo se deben crear desde `develop` o alguna rama de tipo `release`.
- Los cambios hechos en estas ramas deben verse reflejados en la rama desde la cual se creó. Además, los cambios deben verse reflejados en `develop`.
- Para el nombramiento de estas ramas, debe redactar el nombre como si fuese la descripción del bug que se está corrigiendo.
- Por ejemplo: `bugfix/error-password-validation`.

#### Conventional Commits

Los commits son necesarios para dar una descripción breve de alguna modificación o contenido agregado dentro del código de algún producto de software.
Es por ello, que se debe seguir un estándar interno que facilite la lectura de estos.
A continuación, se explica el estándar definido para los commits dentro de la organización:

<div align="center">
  <img src="https://imgur.com/vfirypa.png" alt="mensaje de ejemplo para commits">
</div>

- La sección 'type' indica el tipo de commit que se usa para el mensaje. A continuación, se explican los tipos de commits que se usan para el desarrollo del proyecto:
  - `feat`: Indica que se implementa una nueva funcionalidad dentro de alguna rama de tipo `feature/`.
  - `fix`: Indica una corrección de errores de código o de bugs.
  - `docs`: Indica cambios en la documentación (de las aplicaciones, no en la documentación general del proyecto, pues es considerada también un producto de software).
  - `refactor`: Indica una reestructuración sin cambios en el contenido. Por ejemplo, cambios en el nombramiento de variables o funciones o un cambio para mejor legibilidad del código.
  - `chore`: Indica actualizaciones de dependencias o tareas de mantenimiento. Por ejemplo, `chore: initial commit`.
  - `test`: Indica la adición o modificación de pruebas.
- También, se tiene la sección 'scope'. En ella, se debe indicar la sección de la aplicación que está recibiendo las modificaciones o adiciones.
- A continuación, la sección 'description' indica un resumen de lo que se está agregando o modificando al repositorio de la aplicación. El mensaje de la descripción no puede ser extenso ni entrar en detalles y debe ser redactado en modo imperativo, en inglés, en minúsculas y siempre debe llevar un punto final.
- Finalmente, la sección opcional 'body' incluye una descripción más detallada del cambio aplicado al proyecto. Para nuestro caso, esta sección no es obligatoria.
- Un ejemplo aplicando las normas descritas previamente: `feat(sign-in): add user aggregate root class.`.

### 6.1.3. Source Code Style Guide & Conventions

### 6.1.3. Source Code Style Guide & Conventions

En esta sección se describen las configuraciones y pasos necesarios para desplegar correctamente los distintos productos digitales que conforman la solución Restock, partiendo desde sus respectivos repositorios de código fuente. Asimismo, se especifican las tecnologías, plataformas y servicios utilizados para la publicación y ejecución de cada componente del sistema.

La solución Restock está compuesta por los siguientes productos digitales:

- Landing Page.
- Frontend Web Application.
- Backend REST API.
- Mobile Application.
- Edge API.
- Embedded Application.

##### 1. Landing Page – HTML, CSS y JavaScript

##### Tecnologías Base

| Elemento    | Tecnología              |
| ----------- | ----------------------- |
| Lenguajes   | HTML5, CSS3, JavaScript |
| Hosting     | Vercel                  |
| Repositorio | GitHub                  |

##### Configuración y Despliegue

La Landing Page institucional de Restock se encuentra desarrollada utilizando HTML, CSS y JavaScript puro. El código fuente se almacena en un repositorio GitHub público, el cual se integra con Vercel para permitir el despliegue automático de la aplicación web.

Para permitir el despliegue correcto mediante Vercel, el archivo `index.html` debe ubicarse en la raíz del proyecto o dentro de la carpeta configurada como directorio principal del proyecto.

##### Pasos de despliegue

1. Clonar el repositorio del proyecto:

```bash
git clone <repository-url>
```

2. Acceder a la plataforma de Vercel.

3. Iniciar sesión con la cuenta de GitHub.

4. Seleccionar la opción `Add New Project`.

5. Importar el repositorio correspondiente al Landing Page de Restock.

6. Configurar los siguientes valores:

| Configuración    | Valor                   |
| ---------------- | ----------------------- |
| Framework Preset | `Other`                 |
| Root Directory   | `/`                     |
| Build Command    | No aplica / dejar vacío |
| Output Directory | No aplica / dejar vacío |
| Install Command  | No aplica / dejar vacío |

7. Guardar la configuración e iniciar el despliegue.

Vercel generará automáticamente una URL pública con un formato similar al siguiente:

```text
https://<project-name>.vercel.app/
```

##### Actualizaciones

Cada nuevo commit realizado sobre la rama configurada para producción, generalmente `main`, activará automáticamente un nuevo despliegue en Vercel. De esta manera, la versión publicada del Landing Page se mantiene actualizada sin necesidad de realizar un despliegue manual.

##### 2. Frontend Web Application – Angular

##### Tecnologías Base

| Elemento        | Tecnología |
| --------------- | ----------- |
| Framework       | Angular     |
| Lenguaje        | TypeScript  |
| Build Tool      | Angular CLI |
| Hosting         | Vercel      |
| Package Manager | npm         |

##### Configuración y Despliegue

La aplicación web administrativa de Restock se desarrolla utilizando Angular y TypeScript. El proyecto frontend se despliega en Vercel, una plataforma de hosting orientada a aplicaciones web modernas que permite automatizar el proceso de publicación a partir del repositorio de GitHub.

##### Instalación de dependencias

```bash
npm install
```

##### Ejecución local

```bash
ng serve
```

La aplicación estará disponible en:

```text
http://localhost:4200
```

##### Build de producción

```bash
ng build --configuration production
```

Los archivos generados se almacenan en:

```text
/dist/<project-name>/browser
```

##### Configuración de despliegue en Vercel

Para desplegar la aplicación web en Vercel, se deben seguir los siguientes pasos:

1. Acceder a Vercel.
2. Seleccionar la opción `Add New Project`.
3. Importar el repositorio GitHub correspondiente al frontend.
4. Seleccionar Angular como framework.
5. Configurar el comando de instalación:

```bash
npm install
```

6. Configurar el comando de build:

```bash
npm run build
```

7. Configurar el directorio de salida:

```text
dist/<project-name>/browser
```

8. Configurar variables de entorno.
9. Ejecutar el despliegue.

##### Variables de entorno

La URL base del Backend REST API se configura como variable de entorno dentro de Vercel.

| Variable         | Descripción                                           |
| ---------------- | ------------------------------------------------------ |
| `API_BASE_URL` | URL pública del Backend REST API desplegado en Render |

##### Integración con Backend

El frontend consume la API REST desplegada en Render mediante peticiones HTTP asincrónicas. En producción, la URL base del backend se obtiene desde las variables de entorno configuradas en Vercel.

##### Actualizaciones

Cada push realizado hacia la rama principal genera automáticamente una nueva versión desplegada en Vercel.

##### 3. Backend REST API – Java Spring Boot

##### Tecnologías Base

| Elemento          | Tecnología       |
| ----------------- | ----------------- |
| Framework         | Spring Boot       |
| Lenguaje          | Java 21           |
| Build Tool        | Maven             |
| Contenerización  | Docker            |
| Hosting           | Render            |
| Base de datos     | MongoDB Atlas     |
| API Documentation | OpenAPI / Swagger |

##### Configuración y Despliegue

El backend de Restock expone una API RESTful encargada de la lógica de negocio, autenticación, gestión de inventario, telemetría IoT y comunicación con los demás componentes del sistema.

##### Instalación y ejecución local

```bash
./mvnw spring-boot:run
```

##### Build del proyecto

```bash
./mvnw clean package
```

##### Dockerización

El proyecto incluye un archivo `Dockerfile` para generar la imagen del backend.

##### Construcción de imagen Docker

```bash
docker build -t restock-backend .
```

##### Ejecución del contenedor

```bash
docker run -p 8080:8080 restock-backend
```

##### Variables de entorno

Las credenciales y configuraciones sensibles se administran mediante variables de entorno en Render.

| Variable             | Descripción                   |
| -------------------- | ------------------------------ |
| `MONGODB_URI`      | URI de conexión MongoDB Atlas |
| `JWT_SECRET`       | Clave secreta JWT              |
| `SERVER_PORT`      | Puerto del servidor            |
| `CLOUDINARY_URL`   | Configuración Cloudinary      |
| `ONESIGNAL_APP_ID` | Configuración OneSignal       |

##### Configuración de despliegue en Render

1. Vincular el repositorio GitHub.
2. Detectar automáticamente el `Dockerfile`.
3. Configurar variables de entorno.
4. Configurar puerto de ejecución.
5. Ejecutar despliegue automático.

##### Deploy automático

Cada push realizado a la rama principal genera automáticamente un nuevo despliegue en Render.

##### Exposición de servicios

La API REST se expone públicamente mediante HTTPS y es consumida por:

- Frontend Angular.
- Mobile Application Flutter.
- Edge Application.

##### 4. Mobile Application – Flutter

##### Tecnologías Base

| Elemento        | Tecnología               |
| --------------- | ------------------------- |
| Framework       | Flutter                   |
| Lenguaje        | Dart                      |
| IDE recomendado | Android Studio            |
| Build Tool      | Flutter SDK               |
| Distribución   | Firebase App Distribution |

##### Configuración y Despliegue

La aplicación móvil de Restock está desarrollada utilizando Flutter y Dart. Para su distribución en entornos de prueba, se utiliza Firebase App Distribution, permitiendo compartir versiones APK con testers registrados antes de una publicación formal en una tienda de aplicaciones.

##### Instalación de dependencias

```bash
flutter pub get
```

##### Ejecución local

```bash
flutter run
```

##### Build APK de producción

```bash
flutter build apk --release
```

El archivo generado se ubicará en:

```text
build/app/outputs/flutter-apk/app-release.apk
```

##### Configuración de Firebase App Distribution

Para distribuir la aplicación móvil mediante Firebase App Distribution, se deben seguir los siguientes pasos:

1. Crear o seleccionar un proyecto en Firebase Console.
2. Registrar la aplicación Android dentro del proyecto Firebase.
3. Descargar el archivo de configuración:

```text
google-services.json
```

4. Ubicar el archivo dentro del proyecto Flutter en:

```text
android/app/
```

5. Habilitar Firebase App Distribution.
6. Registrar los correos de los testers autorizados.
7. Subir el archivo APK generado desde Firebase Console o mediante Firebase CLI.

##### Distribución mediante Firebase Console

1. Ingresar a Firebase Console.
2. Seleccionar el proyecto de Restock.
3. Entrar a `App Distribution`.
4. Seleccionar la aplicación Android.
5. Subir el archivo:

```text
app-release.apk
```

6. Agregar testers o grupos de testers.
7. Añadir notas de versión.
8. Publicar la distribución.

##### Distribución mediante Firebase CLI

Para distribuir el APK mediante consola, se puede utilizar Firebase CLI:

```bash
firebase appdistribution:distribute build/app/outputs/flutter-apk/app-release.apk \
  --app <firebase-app-id> \
  --groups "testers" \
  --release-notes "Release version for testing"
```

##### Variables de entorno

Las URLs del backend se configuran mediante archivos internos de configuración según el entorno de ejecución.

| Variable         | Descripción                                           |
| ---------------- | ------------------------------------------------------ |
| `API_BASE_URL` | URL pública del Backend REST API desplegado en Render |

##### Integración con Backend

La aplicación Flutter consume la API REST desplegada en Render utilizando peticiones HTTP asincrónicas. Firebase App Distribution se utiliza únicamente como medio de distribución de versiones de prueba para los usuarios testers.

##### Actualizaciones

Cada nueva versión de prueba requiere generar un nuevo APK release y subirlo a Firebase App Distribution. Los testers registrados reciben una notificación para descargar e instalar la nueva versión.

##### 5. Edge API – Python y Flask

##### Tecnologías Base

| Elemento                  | Tecnología  |
| ------------------------- | ------------ |
| Lenguaje                  | Python       |
| Framework                 | Flask        |
| Comunicación IoT         | MQTT         |
| Runtime                   | Python 3.x   |
| Dispositivo de despliegue | Raspberry Pi |
| Tipo de despliegue        | On-premise   |

##### Configuración y Despliegue

La Edge API actúa como intermediario entre los dispositivos embebidos y la nube. Esta aplicación se despliega de forma local en una Raspberry Pi instalada dentro del establecimiento del cliente, permitiendo recibir telemetría desde los dispositivos IoT, procesar datos cercanos al origen y sincronizar información relevante con el Backend REST API desplegado en la nube.

##### Preparación del entorno en Raspberry Pi

Para ejecutar la Edge API en la Raspberry Pi, se requiere tener instalado Python 3.x y `pip`.

```bash
sudo apt update
sudo apt install python3 python3-pip -y
```

##### Clonación del repositorio

```bash
git clone <edge-api-repository-url>
cd <edge-api-project-folder>
```

##### Instalación de dependencias

```bash
pip install -r requirements.txt
```

##### Ejecución local en Raspberry Pi

```bash
python app.py
```

##### Variables de entorno

| Variable           | Descripción                                           |
| ------------------ | ------------------------------------------------------ |
| `MQTT_BROKER`    | Dirección del broker MQTT local o remoto              |
| `MQTT_PORT`      | Puerto de comunicación MQTT                           |
| `API_BASE_URL`   | URL pública del Backend REST API desplegado en Render |
| `DEVICE_SECRET`  | Token de autenticación para validar dispositivos      |
| `EDGE_DEVICE_ID` | Identificador único de la Raspberry Pi o nodo edge    |

##### Configuración como servicio local

Para mantener la Edge API ejecutándose de forma continua en la Raspberry Pi, se puede configurar como servicio del sistema utilizando `systemd`.

```bash
sudo nano /etc/systemd/system/restock-edge-api.service
```

Luego, se habilita e inicia el servicio:

```bash
sudo systemctl daemon-reload
sudo systemctl enable restock-edge-api
sudo systemctl start restock-edge-api
```

##### Verificación del servicio

```bash
sudo systemctl status restock-edge-api
```

##### Funcionalidades principales

- Recepción de telemetría desde dispositivos IoT.
- Comunicación con dispositivos embebidos mediante MQTT.
- Procesamiento local de datos de peso.
- Cálculo preliminar de stock físico.
- Sincronización de datos con el Backend REST API.
- Ejecución local dentro del establecimiento del cliente.

##### Actualizaciones

Para actualizar la Edge API en la Raspberry Pi, se debe obtener la última versión del repositorio y reiniciar el servicio.

```bash
git pull origin main
pip install -r requirements.txt
sudo systemctl restart restock-edge-api
```

##### 6. Embedded Application – ESP32 y C++

##### Tecnologías Base

| Elemento              | Tecnología         |
| --------------------- | ------------------- |
| Microcontrolador      | ESP32               |
| Lenguaje              | C++                 |
| Entorno de desarrollo | Cirkit Designer IDE |
| Framework             | Arduino Framework   |
| Sensores              | HX711 + Load Cells  |
| Comunicación         | WiFi + MQTT         |

##### Configuración y Carga del Firmware

La Embedded Application corresponde al firmware ejecutado sobre el microcontrolador ESP32. Este componente es responsable de capturar lecturas físicas desde sensores IoT y transmitir la telemetría hacia la Edge API mediante MQTT.

A diferencia de aplicaciones web o cloud, este componente no se despliega en servidores remotos, sino que el firmware se compila y carga directamente en el dispositivo ESP32 mediante conexión USB.

##### Clonación del repositorio

```bash
git clone <embedded-repository-url>
```

##### Preparación del entorno

Para preparar el entorno de desarrollo del firmware se deben realizar los siguientes pasos:

1. Abrir el proyecto en Cirkit Designer IDE.
2. Seleccionar la placa ESP32 correspondiente.
3. Verificar las conexiones de sensores HX711 y Load Cells.
4. Configurar parámetros WiFi y MQTT.
5. Verificar las librerías necesarias.

##### Librerías requeridas

- HX711 Library.
- WiFi Library.
- PubSubClient.
- Preferences Library.

##### Configuración de comunicación

Antes de cargar el firmware, se deben configurar los siguientes parámetros dentro del proyecto:

| Parámetro        | Descripción                   |
| ----------------- | ------------------------------ |
| `WIFI_SSID`     | Nombre de la red WiFi          |
| `WIFI_PASSWORD` | Contraseña de la red          |
| `MQTT_BROKER`   | Dirección del broker MQTT     |
| `MQTT_PORT`     | Puerto MQTT                    |
| `DEVICE_ID`     | Identificador único del ESP32 |
| `DEVICE_SECRET` | Token de autenticación        |

##### Compilación del firmware

El firmware se compila desde Cirkit Designer IDE utilizando Arduino Framework para ESP32.

##### Carga del firmware

1. Conectar el ESP32 mediante cable USB.
2. Seleccionar el puerto serial correspondiente.
3. Compilar el proyecto.
4. Cargar el firmware al microcontrolador.
5. Verificar la salida mediante el monitor serial.

##### Verificación posterior

Luego de cargar el firmware, se debe validar que:

- El ESP32 se conecte correctamente a la red WiFi.
- El dispositivo publique mensajes MQTT.
- Las lecturas de peso sean recibidas por la Edge API.
- El dispositivo mantenga comunicación estable con la infraestructura IoT.

##### Actualizaciones

Las actualizaciones del firmware requieren recompilar el proyecto y volver a cargar manualmente el firmware en el ESP32 desde Cirkit Designer IDE.

##### 7. Software Deployment Diagram (C4 Model)

El Deployment Diagram del modelo C4 representa la distribución física de los distintos contenedores de software de Restock, incluyendo clientes web y móviles, infraestructura cloud, broker MQTT, Edge Application y dispositivos IoT embebidos.

<img src="assets/images/chapter6/deployment-configuration/deployment-diagram.png" alt="Diagrama de despliegue de contenedores de Restock" style="width:100%; height:auto;">

## 6.2. Landing Page, Services & Applications Implementation

Con la preparación previa hecha incluyendo identificación de requisitos, priorización según el negocio, diseño de arquitectura tanto en alto nivel (diagramas de contexto, contenedores y contexto) como en nivel detallado (diagramas de clase y de base de datos), diseño de experiencia de usuario (UX) y el prototipado de la solución, se implementan los productos de software (landing page, aplicación web, aplicación móvil, REST API, edge services y aplicación embebida) pertenecientes al alcance del proyecto.
Además, para este proyecto, el trabajo y la entrega se divide en 3 sprints donde cada uno posee un objetivo que define su alcance y los productos que deben ser desarrollados para cumplir con el alcance.

### 6.2.1. Sprint 1

En esta sección se detalla el proceso de trabajao del equipo durante el primer sprint del proyecto.
Este sprint se centra en el desarrollo de las funcionalidades principales de la plataforma relacionadas al manejo de inventarios, recetas y kits y registro de dispositivos para la aplicación web.
Además, el alcance del sprint llega hasta la implementación de una primera versión del Landing Page con secciones como beneficios, testimonios, descripción de funcionalidades, entre otros.

#### 6.2.1.1. Sprint Planning 1

<table>
  <tr>
    <td>Sprint #</td>
    <td>Sprint 1</td>
  </tr>
  <tr>
    <td colspan="2"><strong>Sprint Planning Background</strong></td>
  </tr>
  <tr>
    <td>Date</td>
    <td>2026-05-05</td>
  </tr>
  <tr>
    <td>Time</td>
    <td>07:00 PM (GMT-5)</td>
  </tr>
  <tr>
    <td>Location</td>
    <td>Modalidad remota mediante la plataforma Discord</td>
  </tr>
  <tr>
    <td>Prepared By</td>
    <td>Shapiama Rivera, Gabriela Nicole</td>
  </tr>
  <tr>
    <td>Attendees (to planning meeting)</td>
    <td>Castro Alejos, Julio Daniel / Juarez Leon, Nicolas Emilio / Guerra Perez, José Jahaziel / Navarro Chinga, Antonio Jhair / Coronel Espinoza, Farid Sebastian / Shapiama Rivera, Gabriela Nicole / Diaz Quispe, Matias Sebastian </td>
  </tr>
  <tr>
    <td colspan="2"><strong>Sprint Goal & User Stories</strong></td>
  </tr>
  <tr>
    <td>Sprint 1 Goal</td>
    <td>
<strong>Nos enfocamos en ofrecer </strong> información clara y detallada a nuevos visitantes sobre la plataforma, así como proveer a los administradores de tiendas retail o retaurantes herramientas para la gestión de inventarios que incluyen soporte multi sucursal, gestión de suministros, notificaciones, gestión de recetas y kits, manejo de ventas, gestión de dispositivos y estadísticas de datos sobre suministros y alertas. <br>
<strong>Creemos que esto proporciona </strong> mayor comprensión del propósito de la solución y confianza a los visitantes y mejora en la eficiencia operativa de inventarios de los negocios de los administradores de restaurantes y retail. <br>
<strong>Esto se confirmará cuando </strong> nuevos visitantes decidan registrarse en la plataforma para gestionar el inventario de sus negocios, y los administradores de tiendas retail y restaurantes utilicen las herramientas para gestión de inventarios de forma rutinaria en las operaciones de sus negocios.
    </td>
  </tr>
  <tr>
    <td>Sprint 1 Velocity</td>
    <td>40</td>
  </tr>
  <tr>
    <td>Sum of Story Points</td>
    <td>40</td>
  </tr>
</table>

#### 6.2.1.2. Aspect Leaders and Collaborators

Durante el Sprint 1, se han definido los pilares estratégicos del sistema basados en una arquitectura de contextos delimitados (Bounded Contexts). Estos abarcan desde la seguridad y acceso hasta la gestión compleja de activos, ventas y monitoreo de servicios para los sectores de retail y restaurantes.

Con el objetivo de asegurar una comunicación clara y un flujo de trabajo eficiente, se ha elaborado la siguiente matriz de liderazgo y colaboración (LACX). En ella se designa un líder responsable (L) para la integridad de cada contexto y colaboradores (C) que aseguran la integración y el cumplimiento de los 32 puntos de historia definidos en la planificación.

| Team Member (Last Name, First Name) |  GitHub Username  |     IAM     |     ARM     | Planning and Planning | Sales Management | Devices Mangement |  Tracking  | Communications | Profiles and Preferences |
| :---------------------------------- | :----------------: | :---------: | :---------: | :-------------------: | :--------------: | :---------------: | :---------: | :------------: | :----------------------: |
| Navarro Chinga, Antonio Jhair       |  AntonioNavarro24  | **L** |            |           C           |                  |                  |      C      |                |                          |
| Guerra Perez, José Jahaziel        |     jahazielgg     |            |            |           C           |        C        |                  |      C      |                |       **L**       |
| Juarez Leon, Nicolas Emilio         |     JuarezLn10     |            |      C      |                      |                  |    **L**    | **L** |                |                          |
| Diaz Quispe, Matias Sebastian       |    equinox-1092    |      C      |            |                      |        C        |                  |            |  **L**  |            C            |
| Castro Alejos, Julio Daniel         |      JulioXC4      |            |      C      |      **L**      |                  |                  |            |       C       |                          |
| Shapiama Rivera, Gabriela Nicole    | GabrielaShapiama28 |            | **L** |                      |                  |         C         |            |       C       |            C            |
| Coronel Espinoza, Farid Sebastian   |       Far14z       |            |      C      |                      |   **L**   |         C         |            |                |                          |

#### 6.2.1.3. Sprint Backlog 1

Como se mencionó previamente en el planeamiento del Sprint 1, el objetivo del mismo es desarrollar y desplegar una primera versión funcional de la Landing Page y la aplicación web frontend. Esto conlleva implementar las funcionalidades clave que permitan a los visitantes conocer el valor de negocio de la plataforma, así como a los administradores de restaurantes y tiendas retail gestionar su perfil, autenticarse, controlar el stock en inventarios, administrar dispositivos IoT y registrar sus ventas desde la interfaz web.
Luego de definir el objetivo del sprint, se identificaron las historias de usuario correspondientes. A continuación, se dividió cada historia de usuario en tareas relacionadas a la implementación y cumplimiento de dicha historia. Para ello, se utilizó la aplicación Jira, que nos ayuda a gestionar el progreso del sprint.

Proyecto en Jira: [https://ui-topic.atlassian.net/jira/software/projects/UTI/boards/35?atlOrigin=eyJpIjoiYjQ3ZDVjYWM4ZTdlNDY1MjgwNzhkYzhiOTY2NDE0NGEiLCJwIjoiaiJ9](https://ui-topic.atlassian.net/jira/software/projects/UTI/boards/35?atlOrigin=eyJpIjoiYjQ3ZDVjYWM4ZTdlNDY1MjgwNzhkYzhiOTY2NDE0NGEiLCJwIjoiaiJ9)

<p align="center">
  <img src="https://imgur.com/H36C6RG.png" 
  alt="sprint_backlog_1"/>
</p>

A continuación, se presenta la tabla con las tareas necesarias para completar satisfactoriamente este primer sprint. Además, se asignó un miembro del equipo a cada tarea a desarrollar y el estado de cada tarea.

| Sprint 1 | Sprint Backlog 1 | | | | | | |
|----------|-----------------|----------------|-------|-------------|-------------------|-------------|--------|
| **User Story** | **Título** | **Work Item/Task** | **Título** | **Descripción** | **Estimation (SP)** | **Assigned to** | **Status** |
| UTI-439 | US-11: Gestión de perfil | UTI-592 | Desarrollar la visualización de la información del perfil | Como usuario de la plataforma, quiero gestionar la información de mi perfil, para asegurar que mi información sea la correcta. | 0.5 | José Jahaziel Guerra Perez | Done |
| | | UTI-593 | Implementar la edición de datos básicos | | | Gabriela Nicole Shapiama Rivera | Done |
| | | UTI-595 | Configurar preferencias del sistema | | | Matias D. | Done |
| UTI-429 | US-01: Conocer el valor de negocio de la plataforma | UTI-526 | Desarrollar la sección de beneficios | Como visitante del sitio web estático, quiero determinar el valor de negocio, para tomar la decisión de convertirme en usuario de la plataforma. | 0.4 | Julio Castro Alejos | Done |
| | | UTI-527 | Crear y estructurar la sección de preguntas frecuentes | | | Matias D. | Done |
| | | UTI-542 | Implementar Media Queries en el CSS | | | Matias D. | Done |
| | | UTI-545 | Implementar etiquetas ARIA  | | | Gabriela Nicole Shapiama Rivera | Done |
| | | UTI-548 | Permitir el cambio dinámico de idioma | | | Julio Castro Alejos | Done |
| UTI-430 | US-02: Aumento de confianza sobre la plataforma | UTI-528 | Implementar la sección de testimonios | Como visitante, quiero conocer sobre el producto y quienes fueron los creadores, para aumentar la confianza sobre el uso de la plataforma. | 0.5 | Matias D. | Done |
| | | UTI-529 | Crear la sección de términos y condiciones | | | Gabriela Nicole Shapiama Rivera | Done |
| | | UTI-538 | Crear la sección de políticas de privacidad | | | Julio Castro Alejos | Done |
| | | UTI-543 | Implementar Media Queries en el CSS | | | Matias D. | Done |
| | | UTI-546 | Implementar etiquetas ARIA (Accesibilidad) | | | Gabriela Nicole Shapiama Rivera | Done |
| | | UTI-549 | Permitir el cambio dinámico de idioma | | | Julio Castro Alejos | Done |
| UTI-431 | US-03: Acceso a las aplicaciones | UTI-531 | Implementar el flujo de redirección a la app móvil | Como visitante, quiero acceder o descargar la aplicación, para empezar a usarla en mis operaciones de negocio. | 0.4 | Julio Castro Alejos | Done |
| | | UTI-532 | Implementar el flujo de acceso a la plataforma web | | | Gabriela Nicole Shapiama Rivera | Done |
| | | UTI-533 | Diseñar la interfaz de selección entre plataformas | | | Matias D. | Done |
| | | UTI-544 | Implementar Media Queries en el CSS | | | Matias D. | Done |
| | | UTI-547 | Implementar etiquetas ARIA (Accesibilidad) | | | Gabriela Nicole Shapiama Rivera | Done |
| UTI-432 | US-04: Registro de usuario | UTI-534 | Desarrollar lógica de creación de cuenta | Como visitante, quiero registrarme como administrador de una tienda retail, para acceder a las funcionalidades de la aplicación. | 0.5 | Matias D. | Done |
| | | UTI-535 | Integrar verificación de seguridad de contraseña | | | Antonio Navarro | Done |
| | | UTI-536 | Redirigir al usuario tras registro exitoso | | | Matias D. | Done |
| | | UTI-537 | Desarrollar un registro del negocio del usuario | | | Antonio Navarro | Done |
| UTI-445 | US-17: Control y ajuste de stock en lotes | UTI-554 | Implementar la funcionalidad de registro de ingreso de mercadería | Como administrador del negocio, quiero registrar los movimientos de entrada y salida de suministros, así como definir sus niveles de reserva, para garantizar que el inventario esté siempre actualizado. | 0.3 | Julio Castro Alejos | Done |
| | | UTI-556 | Implementar validaciones para el registro de movimientos | | | Julio Castro Alejos | Done |
| | | UTI-557 | Registrar historial de movimientos y ajustes de stock | | | Gabriela Nicole Shapiama Rivera | In-Progress |
| UTI-460 | US-32: Gestionar y consultar las ventas del negocio | UTI-578 | Implementar la funcionalidad de registro de ventas | Como administrador del negocio, quiero registrar y consultar las ventas de productos o combos, para mantener actualizado el inventario y hacer seguimiento al desempeño comercial. | 0.5 | Nicolás Juárez | Done |
| | | UTI-579 | Implementar la funcionalidad de consulta de ventas | | | Farid Coronel | To-Review |
| | | UTI-580 | Visualizar el detalle de una venta | | | José Jahaziel Guerra Perez | Done |
| UTI-449 | US-21: Administrar dispositivos y sus parámetros de abastecimiento | UTI-562 | Implementar la configuración y almacenamiento de parámetros de abastecimiento | Como administrador, quiero administrar los dispositivos y sus límites de reposición, para organizar el stock en tienda y evitar discrepancias de inventario. | 0.5 | Farid Coronel | Done |
| | | UTI-564 | Diseñar la interfaz de administración de dispositivos | | | Gabriela Nicole Shapiama Rivera | In-Progress |
| | | UTI-565 | Desarrollar la edición de dispositivos | | | Nicolás Juárez | Done |

#### 6.2.1.4. Development Evidence for Sprint Review

En esta sección, se describen los principales avances de implementación realizados en este primer sprint. Se tienen como principales avances la implementación de la primera versión de la Landing Page y el Web Application.

Cada miembro del equipo avanzó progresivamente en las diferentes áreas del proyecto: en la Landing Page, se implementó las secciones de beneficios, integrantes, FAQs, Planes de suscripción y la redirección hacia la aplicación web y las tiendas de descarga de la aplicación móvil. En la aplicación web, se implementó las pantallas de administración para restaurantes y retail de consumo masivo, gestión de sucursales, suministros, dispositivos y configuración de preferencias de usuario. 

A continuación, se muestra una tabla que contiene la información sobre los **commits** realizados que contienen las funcionalidades implementadas para completar el primer sprint.


| Repository              | Branch                   | Commit Id                                | Commit Message                                                                                                 | Commited On |
|-------------------------|--------------------------|------------------------------------------|----------------------------------------------------------------------------------------------------------------|-------------|
| restock-landing-page    | master                   | c4d1d91309ecd68035221e82ba0ebf5596db282d | chore: initial commit.                                                                                         | 08/05/26    |
| restock-web-application | main                     | 1ac30de5797ce40dffb7fe42b2703f093d088613 | chore: initial commit.                                                                                         | 08/05/26    |
| restock-landing-page    | feature/hero             | 137c93e1068496a6063d32bac6a2dee75e235eec | feat(hero): add hero section.                                                                                  | 12/05/26    |
| restock-landing-page    | feature/hero             | 137c93e1068496a6063d32bac6a2dee75e235eec | feat(hero): add hero section.                                                                                  | 12/05/26    |
| restock-landing-page    | feature/faq              | 22c208b3aaefcbce8eb0751bdab1489a27462be7 | feat(faq): add faq section.                                                                                    | 12/05/26    |
| restock-landing-page    | feature/download         | c0342fd8cbc565e7b37e7aa9c9189afd1276e4d7 | feat(download): add download section.                                                                          | 12/05/26    |
| restock-landing-page    | feature/testimonials     | 5dfdf9cd19030ff80d8f9c0a618f13c95fb09d21 | feat(testimonials): add testimonials section.                                                                  | 12/05/26    |
| restock-landing-page    | feature/download         | bc973a3ad3186cdc634da99727bd5e7b2e5e6050 | fix(download): update link of play and apple store.                                                            | 14/05/26    |
| restock-web-application | feature/initial-config   | 5402e827034d9529d50f6bb46632cffda0aa6a1f | chore: initialize angular standalone application                                                               | 12/05/26    |
| restock-web-application | fetaure/initial-config   | a211b83dd2a21d17d32faab5f16882ea5f08e531 | feat(top-bar): add top bar component with search and user profile features                                     | 12/05/26    |
| restock-web-application | feature/profiles         | b0fe9090d4c066c2b01282e6afb8590f1c0f7b08 | feat(profiles): implement businesses and profiles api endpoints with assemblers and response interfaces        | 12/05/26    |
| restock-web-application | feature/inventory        | 5402e827034d9529d50f6bb46632cffda0aa6a1f | feat(resource): add inventory domain models.                                                                   | 12/05/26    |
| restock-web-application | feature/register         | 42fbf570a51f126699a2fee8618a0af860bd1580 | feat(i18n): add i18n to authentication section and sign-up form.                                               | 12/05/26    |
| restock-web-application | feature/intial-config    | 9d10d4c2f00919c6f2b67f679ffe6a66937e43c4 | feat(config): add db json server configuration.                                                                | 13/05/26    |
| restock-web-application | feature/sales-management | 4df66f6fb80b50c629ad43a0c316dcbb5868ebad | feat(sales): add lazy loading for sales routes and update sales api service for retrieving sales by branch id. | 13/05/26    |
| restock-web-application | feature/sign-up          | 623bdd8e147cd9f3d89af70ac425c5753b2eefbc | fix(sign-up): update endpoint name for sign up.                                                                | 14/05/26    |


#### 6.2.1.5. Testing Suite Evidence for Sprint Review

#### 6.2.1.6. Execution Evidence for Sprint Review

En esta sección, se presenta la evidencia de ejecución de los productos implementados en este primer sprint. Los logros incluyen el desarrollo y despliegue de la primer versión de la Landing Page, la aplicación web.

A continuación, se muestran las capturas de pantalla y enlaces de acceso a cada producto implementado. Estas evidencias reflejan el progreso realizado en el sprint y sirven como comprobante del trabajo completado.

## **Landing Page**

Se adjuntan los enlaces para acceder al sitio web estático desplegado y al vídeo de demostración. El vídeo muestra el funcionamiento de cada sección del sitio web y su visualización en un navegador web.
- Vídeo de ejecución: https://acortar.link/IoO3Qp

#### Sección Hero

Sección principal del sitio web de Restock. Presenta el título "Smart Inventory for Restaurants & Retail" junto a dos botones de acción.

<img src="https://i.imgur.com/eRR8EeY.png" alt="hero-web" style="width: 100%; height: auto;"/>

#### Acerca de Restock

Sección informativa sobre la startup UI-Topic. Incluye tres tarjetas con íconos que describen cómo ayudan, su propuesta de valor y su misión y visión, enfocadas en el manejo inteligente de inventarios.

<img src="https://i.imgur.com/Ppt4KhG.png" alt="about-restock-web" style="width: 100%; height: auto;"/>

#### Conoce al equipo

Sección que presenta al equipo detrás de Restock con fotos circulares de cada miembro. Se muestran siete integrantes con sus nombres y roles dentro del desarrollo.

<img src="https://i.imgur.com/F0CgaNR.png" alt="meet-the-team" style="width: 100%; height: auto;"/>

#### Dispositivo IoT

Sección que presenta a detalle el dispositivo IoT, destaca tres beneficios clave mediante tarjetas: precisión de la balanza inteligente, protección de cadena de frío y control de calidad ambiental.

<img src="https://i.imgur.com/XJkcsdU.png" alt="meet-the-team" style="width: 100%; height: auto;"/>

#### Beneficios

Sección que divide los beneficios en dos categorías: restaurantes y tiendas retail. Cada categoría tiene cinco funcionalidades representadas con íconos y descripciones cortas sobre control de stock e inventario.

<img src="https://i.imgur.com/1oQ54mQ.png" alt="benefits" style="width: 100%; height: auto;"/>

#### Testimonios

Sección de testimonios que muestra tres reseñas con calificación de estrellas de clientes reales.

<img src="https://i.imgur.com/8L2iZDb.png" alt="testimonials" style="width: 100%; height: auto;"/>

#### Preguntas frecuentes (FAQ)

Sección de preguntas frecuentes que presenta cinco preguntas en acordeón sobre el funcionamiento de los dispositivos, compatibilidad, sensores y conectividad.

<img src="https://i.imgur.com/cAq8JLb.png" alt="faq" style="width: 100%; height: auto;"/>

#### ¿Como funciona?

Sección que explica en tres pasos cómo funciona Restock: instalar el dispositivo, conectarlo y asignar inventario, y monitorear el stock en tiempo real desde el dashboard.

<img src="https://i.imgur.com/arKRiI2.png" alt="how-it-works" style="width: 100%; height: auto;"/>

#### Planes de suscripción

Sección de planes de suscripción con tres opciones: Basic (S/ 59.99/mes), Premium (S/ 49.99/mes, el más popular) y Pro (S/ 39.99/mes). Cada plan lista sus características principales con un botón para seleccionarlo.

<img src="https://i.imgur.com/dNmTDhu.png" alt="plan-and-subscriptions" style="width: 100%; height: auto;"/>

#### Usa la aplicación web

Sección de llamada a la acción que incluye dos botones (Get Started y Watch Demo).

<img src="https://i.imgur.com/pRBTjs8.png" alt="go-to-app-web" style="width: 100%; height: auto;"/>

#### Descarga la aplicación

Sección que promociona la app móvil de Restock. Muestra botones de descarga para Google Play y App Store junto a una vista previa del móvil con la pantalla de batches.

<img src="https://i.imgur.com/NLvtb3J.png" alt="download app" style="width: 100%; height: auto;"/>

#### Footer

Pie de página en fondo negro con el logo de Restock y enlaces organizados en tres columnas: Producto (documentación y tutoriales), Compañía (about, políticas, LinkedIn) y Soporte (centro de ayuda, FAQ, contacto).

<img src="https://i.imgur.com/GYMMtQU.png" alt="footer" style="width: 100%; height: auto;"/>


#### Versión para dispositivos móviles

Vista general de todas las secciones del sitio adaptadas para dispositivos móviles.

<img src="https://i.imgur.com/GCQq8zK.png" alt="mobile-version" style="width: 100%; height: auto;"/>

<img src="https://i.imgur.com/YSNc4IB.png" alt="mobile-version" style="width: 100%; height: auto;"/>

## **Aplicación Web**

Se adjuntan los enlaces para el vídeo de demostración de la aplicación web. El vídeo muestra el funcionamiento de las pantallas implementadas, incluyendo administración para restaurantes y retail de consumo masivo, gestión de sucursales, suministros, dispositivos y configuración de preferencias del usuario.
- Vídeo de ejecución: [Restock Web Application - Sprint 1]()

#### Inicio de sesión

<img src="" alt="sign-in" style="width: 100%; height: auto;"/>


#### Registro de usuario

<img src="https://i.imgur.com/nTioVNT.png" alt="sign-up" style="width: 100%; height: auto;"/>

<img src="https://i.imgur.com/9qIy3a3.png" alt="role-selection" style="width: 100%; height: auto;"/>

#### Gestión de sucursales

<img src="" alt="branches" style="width: 100%; height: auto;"/>

<img src="" alt="branches" style="width: 100%; height: auto;"/>

<img src="" alt="branches" style="width: 100%; height: auto;"/>


#### Gestión de suministros

<img src="" alt="supplies" style="width: 100%; height: auto;"/>

<img src="" alt="supplies" style="width: 100%; height: auto;"/>

<img src="" alt="supplies" style="width: 100%; height: auto;"/>

<img src="" alt="supplies" style="width: 100%; height: auto;"/>

#### Gestión de inventario

<img src="https://i.imgur.com/1zlXafL.png" alt="batches" style="width: 100%; height: auto;"/>

<img src="" alt="inventory" style="width: 100%; height: auto;"/>

<img src="" alt="inventory" style="width: 100%; height: auto;"/>

<img src="" alt="inventory" style="width: 100%; height: auto;"/>

#### Ventas de una sucursal

<img src="https://i.imgur.com/1qO4O2Q.png" alt="sales" style="width: 100%; height: auto;"/>

<img src="https://i.imgur.com/RiLXMTZ.png" alt="sales" style="width: 100%; height: auto;"/>

#### Gestión de dispositivos

<img src="" alt="devices" style="width: 100%; height: auto;"/>

<img src="" alt="devices" style="width: 100%; height: auto;"/>

<img src="" alt="devices" style="width: 100%; height: auto;"/>

<img src="" alt="devices" style="width: 100%; height: auto;"/>


#### Recetas y Kits

<img src="" alt="recipes" style="width: 100%; height: auto;"/>

<img src="" alt="recipes" style="width: 100%; height: auto;"/>

<img src="" alt="kits" style="width: 100%; height: auto;"/>

<img src="" alt="kits" style="width: 100%; height: auto;"/>


##### Preferencias de usuario


<img src="" alt="user-preferences" style="width: 100%; height: auto;"/>

#### 6.2.1.7. Services Documentation Evidence for Sprint Review

#### 6.2.1.8. Software Deployment Evidence for Sprint Review

#### 6.2.1.9. Team Collaboration Insights during Sprint


### 6.2.2. Sprint 2

#### 6.2.2.1. Sprint Planning 2

#### 6.2.2.2. Aspect Leaders and Collaborators

#### 6.2.2.3. Sprint Backlog 2

#### 6.2.2.4. Development Evidence for Sprint Review

#### 6.2.2.5. Testing Suite Evidence for Sprint Review

#### 6.2.2.6. Execution Evidence for Sprint Review

#### 6.2.2.7. Services Documentation Evidence for Sprint Review

#### 6.2.2.8. Software Deployment Evidence for Sprint Review

#### 6.2.2.9. Team Collaboration Insights during Sprint


### 6.2.3. Sprint 3

#### 6.2.3.1. Sprint Planning 3

#### 6.2.3.2. Aspect Leaders and Collaborators

#### 6.2.3.3. Sprint Backlog 3

#### 6.2.3.4. Development Evidence for Sprint Review

#### 6.2.3.5. Testing Suite Evidence for Sprint Review

#### 6.2.3.6. Execution Evidence for Sprint Review

#### 6.2.3.7. Services Documentation Evidence for Sprint Review

#### 6.2.3.8. Software Deployment Evidence for Sprint Review

#### 6.2.3.9. Team Collaboration Insights during Sprint

## 6.3. Validation Interviews

### 6.3.1. Diseño de Entrevistas

### 6.3.2. Registro de Entrevistas

### 6.3.3. Evaluaciones según heurísticas

## 6.4. Video About-the-Product
