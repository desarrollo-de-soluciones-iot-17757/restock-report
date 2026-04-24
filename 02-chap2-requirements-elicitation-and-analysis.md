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

El Big Picture Event Storming nos ayuda a explorar los eventos relacionados al negocio de los restaurantes y de las tiendas retail. Se empezó colocando eventos de dominio relacionados sin importar el orden. Luego, se formaron líneas de tiempo que ayuden a denotar una secuencia de eventos de dominio que posea coherencia con el negocio y sus relaciones con otros eventos. Finalmente, se identificaron los actores que interactúan en el negocio y los puntos de dolor. A continuación, se adjuntan las capturas de pantalla de cada paso realizado para diagramar el Big Picture Event Storming del proyecto:

**Paso 1: Free Exploration**

<div align="center">
  <img src="https://i.imgur.com/5huCOyK.png" style="width: 100%; height: auto;" alt="Imagen de identificacion de eventos del negocio">
</div>

Para este primer paso, el equipo se reunió e inició una lluvia de ideas con el objetivo de identificar los eventos significativos que suelen ocurrir en el día a día de los restaurantes y tiendas retail. Para este proceso no se necesitó de que los eventos sigan una secuencia. Además, se usaron bloques de color naraja para identificarlos.

**Paso 2: Structured organization**

<div align="center">
  <img src="https://i.imgur.com/UK1f8Gy.png" style="width: 100%; height: auto;" alt="Eventos de cierre de caja para ambos sectores y gestión de inventarios y reposicionamiento de productos en restaurantes.">

  <img src="https://i.imgur.com/JxzNtoY.png" style="width: 100%; height: auto;" alt="Gestión de inventarios y reposicionamiento de productos en tiendas retail y actividades de cierre de tienda para ambos sectores.">

  <img src="https://i.imgur.com/uzZnfOb.png" style="width: 100%; height: auto;" alt="Reposicionamiento de products en góndolas para tiendas retail, flujo de preparación de comandas y atención al cliente en restaurantes.">

  <img src="https://i.imgur.com/Lk2gGLW.png" style="width: 100%; height: auto;" alt="Atención al cliente en tiendas retail, ideación y preparación de oferta (o promociones) y recetas.">
</div>

Luego de identificar a los eventos significativos del negocio, se formaron líneas de tiempo con cada uno de ellos para formar una secuencia coherente y capaz de explicarse por sí misma al momento de la lectura. Además, como resultado de la formación de líneas de tiempo, se identificaron flujos referentes a recepción de clientes, preparación de comandas, revisión de inventarios, reposición de productos, cierre de caja, definición de recetas y creación de ofertas. Al tener las líneas de tiempo formadas, se identificaron a los actores que interactúan en el negocio y que son responsables de los eventos de dominio. Para ello, se identificó a gerentes, almaceneros, proveedores, cocineros, cajeros, meseros, sistema POS y clientes. Luego, a cada evento de dominio, se le asignó el actor que ejecuta un flujo de acciones. Finalmente, se analizaron las líneas de tiempo formadas en búsqueda de puntos de dolor que afecten a los actores del negocio. De esta forma, se puede encontrar zonas a aprovechar para oportunidades de solución. Para ello, el equipo centró sus ideas en pensar cómo cada actor identificado para los eventos y analizar qué es aquello que los fastidia o causa frustración. Como resultado de este proceso, se identificaron varios puntos de dolor que servirán como base para el diseño del software solución.

## 2.5. Ubiquitous Language
