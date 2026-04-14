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


## 2.5. Ubiquitous Language

| **Term (EN)** | **Definición (ES)** |
|---|---|
| **Branch** *(Sucursal)* | Sede física del restaurante o tienda donde operan los dispositivos, cabinas y procesos de inventario. |
| **Cabin** *(Cabina)* | Estructura física de almacenamiento donde se coloca un insumo o producto y cuya base contiene el dispositivo de pesaje. |
| **Device** *(Dispositivo / Balanza)* | Balanza IoT ubicada en la base de cada cabina, encargada de medir el peso del stock en tiempo real. |
| **Sensor** *(Sensor)* | Componente del dispositivo que capta datos físicos, principalmente peso, para ser enviados al sistema. |
| **Supply item** *(Insumo)* | Ingrediente, alimento o material consumible cuyo stock debe ser controlado. |
| **Product** *(Producto)* | Elemento registrado en inventario; puede ser consumible o no consumible. |
| **Supply name** *(Nombre del insumo)* | Nombre con el que se identifica un insumo dentro del sistema. |
| **Stock level** *(Nivel de stock)* | Cantidad disponible de un producto o insumo en el sistema. |
| **Physical stock** *(Stock físico)* | Cantidad real del insumo calculada a partir del peso medido por el dispositivo. |
| **Digital stock** *(Stock digital / registrado)* | Cantidad almacenada en el sistema según registros, movimientos y operaciones previas. |
| **Stock record** *(Registro de stock)* | Entidad central que consolida telemetría, cálculos y estado actual del stock. |
| **Stock estimation** *(Estimación de stock)* | Cálculo realizado por el sistema para inferir la cantidad disponible a partir del peso recibido. |
| **Physical stock estimated** *(Stock físico estimado)* | Resultado del cálculo del stock físico a partir de datos de pesaje y unidad base. |
| **Recomputed physical estimate** *(Reestimación física)* | Recalculo del stock físico cuando llegan nuevos datos o se detectan inconsistencias. |
| **Stable weight** *(Peso estable)* | Medición considerada confiable porque el valor del peso dejó de fluctuar. |
| **Supply weight** *(Peso del insumo)* | Peso total detectado del insumo contenido en una cabina. |
| **Unit weight** *(Peso unitario)* | Peso de referencia de una unidad del insumo, usado para estimar cuántas unidades hay disponibles. |
| **Telemetry** *(Telemetría)* | Datos transmitidos por el dispositivo, como peso y otros valores operativos. |
| **Analytics** *(Analítica)* | Procesamiento e interpretación de datos de telemetría e inventario para generar decisiones o alertas. |
| **Status check** *(Verificación de estado)* | Evaluación del estado actual del stock o del dispositivo luego de recibir datos. |
| **Approximate supply weight checked** *(Peso aproximado del insumo validado)* | Verificación del peso leído para determinar si es consistente con lo esperado. |
| **Calculated weight received** *(Peso calculado recibido)* | Evento que indica que el sistema recibió el valor final de peso ya procesado o estimado. |
| **Calculated weight verified** *(Peso calculado verificado)* | Confirmación de que el valor calculado es válido para compararlo contra umbrales o stock esperado. |
| **Stock anomaly** *(Anomalía de stock)* | Comportamiento irregular del stock detectado por el sistema, como variaciones inesperadas o inconsistentes. |
| **Stock discrepancy** *(Discrepancia de stock)* | Diferencia entre el stock físico estimado por el dispositivo y el stock digital almacenado en el sistema. |
| **Stock matched** *(Stock coincidente)* | Estado en el que el stock físico y el digital coinciden dentro del margen aceptado. |
| **Conciliation task** *(Tarea de conciliación)* | Proceso iniciado para revisar y corregir una discrepancia de inventario. |
| **Perform stock comparison** *(Realizar comparación de stock)* | Acción de comparar el stock físico medido contra el stock digital almacenado. |
| **Physical count** *(Conteo físico)* | Verificación manual del inventario real por parte de un usuario. |
| **Adjust stock** *(Ajustar stock)* | Acción manual o asistida para corregir el stock digital del sistema. |
| **Reconciliation completed** *(Conciliación completada)* | Evento que indica que la discrepancia fue revisada y resuelta. |
| **Supply threshold** *(Umbral de abastecimiento)* | Límite configurado para determinar cuándo el stock está en una zona crítica, normal o excedida. |
| **Threshold** *(Umbral)* | Valor de referencia mínimo y/o máximo usado para evaluar el stock de un insumo. |
| **Maximum and minimum weight** *(Peso máximo y mínimo)* | Valores límite usados para definir el rango permitido o esperado para un insumo en una cabina. |
| **Pre-alert** *(Prealerta)* | Notificación preventiva generada antes de llegar a un estado crítico o cuando el umbral es superado. |
| **Replenishment** *(Reposición)* | Proceso de reabastecimiento del stock después de una solicitud o alerta. |
| **Anomaly report** *(Reporte de anomalía)* | Registro formal generado cuando se detecta una anomalía relacionada con inventario o telemetría. |
| **Malfunction report** *(Reporte de falla)* | Registro formal generado cuando el dispositivo presenta una avería o comportamiento incorrecto. |
| **Device health** *(Salud del dispositivo / estado del dispositivo)* | Estado operativo general del dispositivo IoT. |
| **Malfunction** *(Falla)* | Problema técnico en el dispositivo, sensor o comunicación que impide una lectura confiable. |
| **Situation data** *(Datos de situación)* | Información contextual recibida por el módulo de salud del dispositivo para generar reportes o alertas. |
| **Reports data** *(Datos de reportes)* | Información ya procesada y lista para ser mostrada o filtrada en el módulo de reportes. |
| **Ticket** *(Ticket / incidencia)* | Caso de seguimiento abierto para resolver una anomalía o falla detectada en el dispositivo. |
| **Inventory manager** *(Administrador de inventario)* | Usuario responsable del control de stock, revisión de discrepancias y decisiones de reposición. |
| **Retail manager** *(Administrador retail)* | Usuario encargado de supervisar inventario y reportes en una tienda del contexto retail. |
| **Restaurant manager** *(Administrador de restaurante)* | Usuario encargado de supervisar inventario y reportes en una sucursal del contexto gastronómico. |
| **Supplier** *(Proveedor)* | Entidad externa que abastece insumos al negocio. |
| **Supply history** *(Historial de insumos)* | Registro de movimientos de entrada, salida, consumo y reposición de cada insumo. |
| **Menu dependency** *(Dependencia de menú)* | Relación entre un plato y los insumos necesarios para prepararlo. |
| **POS terminal** *(Terminal POS)* | Sistema de punto de venta que puede integrarse con inventario para reflejar consumo automáticamente. |
