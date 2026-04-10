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
| **Gateway** | Componente intermedio que recibe datos o eventos del dispositivo y los redirige al sistema para monitoreo o generación de reportes. |
| **Edge API** | Servicio de borde que recibe datos del dispositivo y los prepara para ser procesados por el sistema central o la nube. |
| **Cloud Provider** *(Proveedor cloud)* | Infraestructura en la nube donde se almacenan, procesan y analizan los datos de telemetría e inventario. |
| **Supply item** *(Insumo)* | Ingrediente, alimento o material consumible cuyo stock debe ser controlado. |
| **Product** *(Producto)* | Elemento registrado en inventario; puede ser consumible o no consumible. |
| **Supply name** *(Nombre del insumo)* | Nombre con el que se identifica un insumo dentro del sistema. |
| **Device identifier** *(Identificador del dispositivo)* | Código único que permite asociar una balanza o sensor a una cabina, insumo o sucursal específica. |
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
| **Units estimated** *(Unidades estimadas)* | Cantidad inferida de unidades de insumo con base en el peso total y el peso unitario. |
| **Telemetry** *(Telemetría)* | Datos transmitidos por el dispositivo, como peso y otros valores operativos. |
| **Telemetry history** *(Historial de telemetría)* | Registro histórico de datos enviados por dispositivos a lo largo del tiempo. |
| **Analytics** *(Analítica)* | Procesamiento e interpretación de datos de telemetría e inventario para generar decisiones o alertas. |
| **Status check** *(Verificación de estado)* | Evaluación del estado actual del stock o del dispositivo luego de recibir datos. |
| **Telemetry received** *(Telemetría recibida)* | Evento que indica que el sistema recibió datos desde el dispositivo. |
| **Records received** *(Registros recibidos)* | Evento que indica que el sistema recibió registros o datos necesarios para actualizar el inventario. |
| **Sensor data read** *(Datos del sensor leídos)* | Evento que indica que el dispositivo obtuvo una lectura válida del sensor. |
| **Sensor data sent** *(Datos del sensor enviados)* | Evento que indica que el dispositivo transmitió la lectura al sistema. |
| **Read weight data** *(Leer datos de peso)* | Acción o comando mediante el cual el dispositivo obtiene el peso actual del stock. |
| **Sender sensor verified** *(Emisor del sensor verificado)* | Validación del origen del dato antes de procesarlo, para asegurar que la lectura proviene de un dispositivo reconocido. |
| **Calculate stock** *(Calcular stock)* | Proceso que transforma la lectura de peso en una cantidad estimada de unidades o stock disponible. |
| **Approximate supply weight checked** *(Peso aproximado del insumo validado)* | Verificación del peso leído para determinar si es consistente con lo esperado. |
| **Calculated weight received** *(Peso calculado recibido)* | Evento que indica que el sistema recibió el valor final de peso ya procesado o estimado. |
| **Calculated weight verified** *(Peso calculado verificado)* | Confirmación de que el valor calculado es válido para compararlo contra umbrales o stock esperado. |
| **Stock anomaly** *(Anomalía de stock)* | Comportamiento irregular del stock detectado por el sistema, como variaciones inesperadas o inconsistentes. |
| **Stock discrepancy** *(Discrepancia de stock)* | Diferencia entre el stock físico estimado por el dispositivo y el stock digital almacenado en el sistema. |
| **Stock matched** *(Stock coincidente)* | Estado en el que el stock físico y el digital coinciden dentro del margen aceptado. |
| **Stock adjusted** *(Stock ajustado)* | Resultado de una corrección manual o asistida aplicada al stock registrado. |
| **Stock anomaly detected** *(Anomalía de stock detectada)* | Evento emitido cuando el sistema identifica una irregularidad en el comportamiento del stock. |
| **Stock discrepancy detected** *(Discrepancia de stock detectada)* | Evento emitido cuando el sistema detecta diferencia entre stock físico y digital. |
| **Discrepancy dashboard** *(Panel de discrepancias)* | Vista donde el usuario monitorea inconsistencias entre el stock real y el registrado. |
| **Conciliation task** *(Tarea de conciliación)* | Proceso iniciado para revisar y corregir una discrepancia de inventario. |
| **Reconciliation task created** *(Tarea de conciliación creada)* | Evento que indica que se abrió una tarea para resolver una discrepancia. |
| **Perform stock comparison** *(Realizar comparación de stock)* | Acción de comparar el stock físico medido contra el stock digital almacenado. |
| **Physical count** *(Conteo físico)* | Verificación manual del inventario real por parte de un usuario. |
| **Physical count confirmed** *(Conteo físico confirmado)* | Evento que confirma que el usuario validó manualmente el stock real. |
| **Adjust stock** *(Ajustar stock)* | Acción manual o asistida para corregir el stock digital del sistema. |
| **Reconciliation completed** *(Conciliación completada)* | Evento que indica que la discrepancia fue revisada y resuelta. |
| **Supply threshold** *(Umbral de abastecimiento)* | Límite configurado para determinar cuándo el stock está en una zona crítica, normal o excedida. |
| **Threshold** *(Umbral)* | Valor de referencia mínimo y/o máximo usado para evaluar el stock de un insumo. |
| **Threshold check** *(Verificación de umbral)* | Proceso de comparar el stock calculado contra los límites configurados. |
| **Register threshold** *(Registrar umbral)* | Acción de crear un nuevo umbral para un dispositivo o insumo. |
| **Edit threshold** *(Editar umbral)* | Acción de modificar un umbral existente. |
| **Verify threshold** *(Verificar umbral)* | Acción de validar si el stock actual está dentro o fuera del rango configurado. |
| **Threshold registered** *(Umbral registrado)* | Evento que indica que un nuevo umbral fue creado en el sistema. |
| **Threshold updated** *(Umbral actualizado)* | Evento que indica que un umbral existente fue modificado. |
| **Threshold checked for device identifier** *(Umbral verificado para identificador de dispositivo)* | Evento que confirma que el sistema comparó el stock de un dispositivo específico con su umbral configurado. |
| **Maximum and minimum weight** *(Peso máximo y mínimo)* | Valores límite usados para definir el rango permitido o esperado para un insumo en una cabina. |
| **Maximum and minimum weight received** *(Peso máximo y mínimo recibido)* | Evento que indica que el sistema recibió los parámetros de rango al registrar un umbral. |
| **Maximum and minimum weight updated** *(Peso máximo y mínimo actualizado)* | Evento que indica que se modificaron los valores de rango del umbral. |
| **Threshold surpassed** *(Umbral superado)* | Estado que indica que el stock calculado está por encima o por debajo del rango permitido. |
| **Pre-alert** *(Prealerta)* | Notificación preventiva generada antes de llegar a un estado crítico o cuando el umbral es superado. |
| **Supply request** *(Solicitud de insumos)* | Pedido generado para reponer un insumo cuando el stock así lo requiere. |
| **Replenishment** *(Reposición)* | Proceso de reabastecimiento del stock después de una solicitud o alerta. |
| **Inventory alert** *(Alerta de inventario)* | Notificación generada por bajo stock, anomalías, discrepancias o superación de umbrales. |
| **Anomaly report** *(Reporte de anomalía)* | Registro formal generado cuando se detecta una anomalía relacionada con inventario o telemetría. |
| **Malfunction report** *(Reporte de falla)* | Registro formal generado cuando el dispositivo presenta una avería o comportamiento incorrecto. |
| **Device health** *(Salud del dispositivo / estado del dispositivo)* | Estado operativo general del dispositivo IoT. |
| **Device health status** *(Estado de salud del dispositivo)* | Indicador visible del estado actual del dispositivo, por ejemplo operativo, inestable o con falla. |
| **Malfunction** *(Falla)* | Problema técnico en el dispositivo, sensor o comunicación que impide una lectura confiable. |
| **Malfunction detected** *(Falla detectada)* | Evento emitido cuando el sistema identifica que el dispositivo o sensor no funciona correctamente. |
| **Situation data** *(Datos de situación)* | Información contextual recibida por el módulo de salud del dispositivo para generar reportes o alertas. |
| **Reports data** *(Datos de reportes)* | Información ya procesada y lista para ser mostrada o filtrada en el módulo de reportes. |
| **Show reports** *(Mostrar reportes)* | Acción mediante la cual un usuario consulta el historial o estado de anomalías y fallas. |
| **Filters applied** *(Filtros aplicados)* | Estado o evento que indica que se acotó la visualización de reportes mediante criterios específicos. |
| **Device selected** *(Dispositivo seleccionado)* | Estado en el que el usuario eligió un dispositivo concreto para revisar su información. |
| **Ticket** *(Ticket / incidencia)* | Caso de seguimiento abierto para resolver una anomalía o falla detectada en el dispositivo. |
| **Resolve ticket** *(Resolver ticket)* | Acción administrativa para cerrar una incidencia luego de haber sido atendida. |
| **Ticket resolved** *(Ticket resuelto)* | Evento que indica que una incidencia fue cerrada satisfactoriamente. |
| **Inventory manager** *(Administrador de inventario)* | Usuario responsable del control de stock, revisión de discrepancias y decisiones de reposición. |
| **Retail manager** *(Administrador retail)* | Usuario encargado de supervisar inventario y reportes en una tienda del contexto retail. |
| **Restaurant manager** *(Administrador de restaurante)* | Usuario encargado de supervisar inventario y reportes en una sucursal del contexto gastronómico. |
| **Admin** *(Administrador del sistema)* | Usuario con privilegios para resolver tickets y administrar configuraciones más sensibles. |
| **Supplier** *(Proveedor)* | Entidad externa que abastece insumos al negocio. |
| **Verified supplier** *(Proveedor verificado)* | Proveedor validado por el sistema o negocio para participar en procesos automáticos de abastecimiento. |
| **Internal consumption** *(Consumo interno)* | Uso de insumos que no genera una venta directa, como merma, pruebas o caducidad. |
| **Supply history** *(Historial de insumos)* | Registro de movimientos de entrada, salida, consumo y reposición de cada insumo. |
| **Menu dependency** *(Dependencia de menú)* | Relación entre un plato y los insumos necesarios para prepararlo. |
| **POS terminal** *(Terminal POS)* | Sistema de punto de venta que puede integrarse con inventario para reflejar consumo automáticamente. |
