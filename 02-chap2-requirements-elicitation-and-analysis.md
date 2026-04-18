# Capítulo II: Requirements Elicitation & Analysis

## 2.1. Competidores


### 2.1.1. Análisis competitivo


### 2.1.2. Estrategias y tácticas frente a competidores


## 2.2. Entrevistas

INTRODUCCION

### 2.2.1. Diseño de entrevistas


### 2.2.2. Registro de entrevistas


### 2.2.3. Análisis de entrevistas


## 2.3. Needfinding

INTRODUCCION

### 2.3.1. User Personas


### 2.3.2. User Task Matrix


### 2.3.3. User Journey Mapping


### 2.3.4. Empathy Mapping


## 2.4. Big Picture EventStorming

En esta sección, se explica el proceso hecho para el desarrollo del Big Picture Event Storming que nos ayuda a explorar los eventos relacionados al negocio. Se empezó colocando eventos de dominio relacionados sin importar el orden. Luego, se formaron líneas de tiempo que ayuden a denotar una secuencia de eventos de dominio que posea coherencia con el negocio y sus relaciones con otros eventos. Finalmente, se identificaron los actores que interactúan en el negocio y los puntos de dolor.

A continuación, se adjuntan las capturas de pantalla de cada paso realizado para diagramar el Big Picture Event Storming del proyecto:

**Paso 1: Identificar eventos de dominio**

<div align="center">
  <img src="https://i.imgur.com/k0ifXzX.jpeg" style="width: 75%; height: auto;" alt="Imagen de identificacion de eventos del negocio">
</div>

Para este primer paso, el equipo se reunió e inició una lluvia de ideas con el objetivo de identificar los eventos significativos que suelen ocurrir en el día a día de los restaurantes y tiendas retail. Para este proceso no se necesitó de que los eventos sigan una secuencia. Además, se usaron bloques de color naraja para identificarlos.

**Paso 2: Formar líneas de tiempo**

<div align="center">
  <img src="https://i.imgur.com/XwfJD9O.jpeg" style="width: 75%; height: auto;" alt="Formacion de lineas de tiempo con los eventos identificados">
</div>

Luego de identificar a los eventos significativos del negocio, se formaron líneas de tiempo con cada evento para que formen una secuencia coherente y que pueda explicarse por sí misma al momento de la lectura. Además, como resultado de la formación de líneas de tiempo, se identificaron flujos referentes a recepción de clientes, preparación de comandas, revisión de inventarios, reposición de productos, cierre de caja, definición de recetas y creación de ofertas.

**Paso 3: Identificar actores**

<div align="center">
  <img src="https://i.imgur.com/7vgkBAw.jpeg" style="width: 75%; height: auto;" alt="Identificar actores que interacúan en el negocio">
</div>

Al tener las líneas de tiempo formadas, se identificaron a los actores que interactúan en el negocio y que son responsables de los eventos de dominio. Para ello, se identificó a gerentes, almaceneros, proveedores, cocineros, cajeros, meseros, sistema POS y clientes. Luego, a cada evento de dominio, se le asignó el actor que ejecuta dicha acción.

**Paso 4: Resaltar puntos de dolor**

<div align="center">
  <img src="https://i.imgur.com/JUwLpTQ.jpeg" style="width: 75%; height: auto;" alt="Puntos de dolor en los procesos de atención al cliente en restaurantes y tiendas retail">
</div>

<div align="center">
  <img src="https://i.imgur.com/dHvAkm8.jpeg" style="width: 75%; height: auto;" alt="Puntos de dolor en los procesos de definición de recetas y creación de ofertas">
</div>

<div align="center">
  <img src="https://i.imgur.com/Dw4aQ23.jpeg" style="width: 75%; height: auto;" alt="Puntos de dolor en el proceso de gestión de inventarios y reposición de productos">
</div>

<div align="center">
  <img src="https://i.imgur.com/6JKw97z.jpeg" style="width: 75%; height: auto;" alt="Puntos de dolor en los procesos de cierre de turno y cierre de caja">
</div>

Finalmente, se analizaron las líneas de tiempo formadas en búsqueda de puntos de dolor que afecten a los actores del negocio. De esta forma, se puede encontrar zonas a aprovechar para oportunidades de solución. Para ello, el equipo centró sus ideas en pensar cómo cada actor identificado para los eventos y analizar qué es aquello que los fastidia o causa frustración. Como resultado de este proceso, se identificaron varios puntos de dolor que servirán como base para el diseño del software solución.

## 2.5. Ubiquitous Language
