# Capítulo V: Solution UI/UX Design
## 5.1. Style Guidelines

En esta sección se presentan las Style Guidelines, entendidas como un conjunto de principios y criterios que orientan la creación de productos digitales de manera coherente, funcional y visualmente consistente. Su propósito es asegurar que cada elemento de la interfaz mantenga uniformidad en la experiencia del usuario, facilitando la legibilidad, la accesibilidad y el reconocimiento de la identidad del producto. A través de estas pautas, se establecen reglas sobre tipografía, colores, espaciado, componentes e interacciones, promoviendo una comunicación clara y una experiencia ordenada, intuitiva y profesional.

### 5.1.1. General Style Guidelines

El equipo de UI-Topic ha definido un sistema integral de Style Guidelines que establece las bases visuales y comunicacionales de Restock en todas sus plataformas: aplicación web, aplicación móvil y dispositivos IoT. Estas directrices garantizan coherencia, accesibilidad y alineación con la identidad de marca en cada punto de contacto, reduciendo la carga cognitiva del usuario y fortaleciendo la confianza en el sistema.

El diseño se sustenta en principios de usabilidad, accesibilidad y diseño centrado en el usuario. La correcta aplicación de estas guías permite que los equipos de diseño y desarrollo colaboren bajo un lenguaje visual unificado, facilitando la escalabilidad del producto y asegurando una experiencia profesional y técnicamente robusta. Como señala Zeldman (2024), una guía de estilos bien estructurada agiliza la evolución del producto y asegura una experiencia consistente en todos los entornos de uso.

#### 5.1.1.1. Colores

El color constituye uno de los recursos comunicacionales más poderosos en el diseño de interfaces. Su correcta aplicación no solo define la identidad visual de una marca, sino que también guía la atención del usuario, comunica estados del sistema y refuerza la jerarquía de la información. La paleta cromática de Restock fue definida a partir del sistema visual del proyecto, el cual establece cuatro familias de color: Primary (`#10B981`), Secondary (`#111827`), Tertiary (`#DC2626`) y Neutral (`#F4F7F6`).

Investigaciones recientes señalan que las interfaces que emplean paletas cromáticas estructuradas y semánticamente coherentes reducen los errores de navegación y mejoran la retención de información por parte del usuario (Westland & Maggio, 2023). Bajo este marco, cada color de Restock cumple un rol funcional específico dentro del sistema de diseño.

**Color primario:**

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/N6SmUw2.png" alt="primary-color">
</div>

El verde esmeralda (`#10B981`) y sus variantes constituyen el color principal del sistema. Esta elección responde a su asociación semántica con crecimiento, eficiencia y control, conceptos directamente alineados con la propuesta de valor de Restock como plataforma de gestión de inventarios. A nivel perceptivo, los tonos verdes de media saturación favorecen la concentración y reducen la fatiga visual en sesiones de uso prolongado, lo que resulta especialmente relevante para administradores que interactúan con dashboards y métricas durante largas jornadas operativas.

| Nombre          | Hex       | Uso principal                                                              | Justificación                                                            |
|-----------------|-----------|----------------------------------------------------------------------------|--------------------------------------------------------------------------|
| Verde Esmeralda | `#10B981` | Botones primarios, barras de navegación, estados activos, íconos de acción | Color de marca principal; contraste mínimo 4.5:1 sobre blanco |
| Verde Profundo  | `#065F46` | Encabezados, textos sobre fondo claro, estados hover en elementos primarios | Mayor oscuridad para jerarquía tipográfica y contraste AAA               |
| Verde Medio     | `#059669` | Confirmaciones, indicadores de éxito, badges de estado activo              | Variante funcional para señalización positiva del sistema                |
| Verde Claro     | `#6EE7B7` | Fondos de sección destacada, chips informativos, estados seleccionados     | Variante de baja saturación para fondos y contenedores secundarios       |
| Verde Menta     | `#D1FAE5` | Fondos sutiles, zonas de descanso visual, tarjetas informativas            | Proporciona respiro visual sin competir con elementos interactivos       |

- **Jerarquía visual:** El tono más oscuro ancla la estructura de navegación, mientras los tonos más claros señalizan niveles de interacción progresivos, reduciendo la carga cognitiva al distinguir zonas estáticas de dinámicas.
- **Consistencia de marca:** Los tres verdes principales comparten la misma temperatura de color, evitando derivaciones que puedan confundir al usuario respecto a la identidad de la plataforma (Wheeler & Meyerson, 2024).
- **Accesibilidad:** Todos los contrastes han sido validados según WCAG 2.1 para asegurar cumplimiento AA/AAA en texto y elementos interactivos, protegiendo a usuarios con deficiencias visuales (World Wide Web Consortium, 2025).

**Color secundario:**

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/HLfGfHZ.png" alt="secondary-color">
</div>

El azul marino oscuro (`#111827`) actúa como color de soporte estructural del sistema. Su alta oscuridad y neutralidad cromática lo convierten en el soporte ideal para textos principales, fondos de paneles laterales y encabezados de sección, generando un contraste sólido con los elementos primarios verdes.

| Nombre          | Hex       | Uso principal                                                       | Justificación                                                                |
|-----------------|-----------|---------------------------------------------------------------------|------------------------------------------------------------------------------|
| Azul Marino     | `#111827` | Textos principales, barras laterales, fondos de modo oscuro         | Contraste superior a 15:1 con blanco; cumple WCAG AAA para tipografía       |
| Gris Medianoche | `#1F2937` | Paneles secundarios, encabezados de tabla, fondos de tarjeta oscura | Variante ligeramente más clara para crear profundidad en capas               |
| Gris Acero      | `#374151` | Labels de formularios, bordes de componentes, íconos inactivos      | Tono intermedio que establece límites sin saturar visualmente                |
| Gris Suave      | `#6B7280` | Textos de ayuda contextual, placeholders, metadatos                 | Legibilidad confortable para información de menor jerarquía                  |
| Gris Perla      | `#9CA3AF` | Texto desactivado, elementos inactivos                              | Señaliza estados no interactivos manteniendo contraste mínimo 3:1            |

- **Jerarquía visual:** Los tonos secundarios crean la estructura invisible de la interfaz, diferenciando zonas de navegación, contenido y datos sin competir con los elementos primarios.
- **Consistencia:** Todos los tonos comparten la misma temperatura de color fría, garantizando transiciones fluidas entre secciones de la plataforma.
- **Accesibilidad:** Cada token ha sido validado contra WCAG 2.1 para asegurar lectura cómoda y correcta separación de componentes interactivos (World Wide Web Consortium, 2025).

**Color terciario:**

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/pAxpbJl.png" alt="tertiary-color">
</div>

El rojo coral intenso (`#DC2626`) se reserva para comunicar urgencia, errores críticos y alertas de alta prioridad. Su uso estratégico garantiza que el usuario identifique de inmediato situaciones que requieren intervención, como quiebres de stock, discrepancias críticas de inventario o fallas en dispositivos IoT. Este color no debe emplearse de manera decorativa ni en elementos de navegación habitual, ya que su impacto semántico perdería efectividad.

| Nombre      | Hex       | Uso principal                                                  | Justificación                                                                    |
|-------------|-----------|----------------------------------------------------------------|----------------------------------------------------------------------------------|
| Rojo Alerta | `#DC2626` | Alertas críticas, botones de cancelación, indicadores de error | Semántica de peligro universalmente reconocida; contraste AAA con blanco         |
| Rojo Oscuro | `#991B1B` | Estados hover en alertas, bordes de campos con error           | Variante oscura para estados activos en contextos de alerta                      |
| Rojo Claro  | `#FCA5A5` | Fondos de mensajes de error, chips de alerta                   | Variante suave para contenedores de advertencia sin saturar la vista             |
| Rojo Mínimo | `#FEE2E2` | Fondos de sección con notificación crítica                     | Fondo de alerta de muy baja saturación para no distraer del contenido principal  |

- **Jerarquía visual:** El uso restringido del rojo garantiza que su aparición en pantalla sea siempre significativa, evitando la normalización que reduciría su efectividad como señal de alerta.
- **Consistencia:** Los cuatro tonos comparten la misma temperatura cálida, manteniendo una señalización coherente en todos los estados de error y alerta del sistema.
- **Accesibilidad:** Todos los tonos han sido validados contra WCAG 2.1, asegurando contraste suficiente tanto en texto como en elementos no textuales (World Wide Web Consortium, 2025).

**Color neutral:**

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/d5wPnUD.png" alt="neutral-color">
</div>

El blanco grisáceo (`#F4F7F6`) y su familia de neutros constituyen el lienzo sobre el cual se despliegan todos los elementos de la interfaz. Su función es proporcionar descanso visual, mejorar el contraste con los colores funcionales y mantener una sensación de orden y limpieza en las vistas de gestión de inventario.

| Nombre          | Hex       | Uso principal                                               | Justificación                                               |
|-----------------|-----------|-------------------------------------------------------------|-------------------------------------------------------------|
| Blanco Grisáceo | `#F4F7F6` | Fondo general de la aplicación, fondos de página            | Lienzo principal; reduce el contraste agresivo del blanco puro |
| Blanco Puro     | `#FFFFFF` | Tarjetas, modales, paneles flotantes                        | Máximo contraste para contenedores de información crítica   |
| Gris Borde      | `#E5E7EB` | Líneas divisorias, bordes de inputs, separadores de sección | Define límites de componentes sin generar ruido visual      |

- **Jerarquía visual:** La escala neutral define los niveles de importancia del contenido sin recurrir a color saturado, permitiendo que el sistema de color semántico (primario, terciario) conserve su impacto.
- **Consistencia:** Todos los tonos neutros comparten la misma temperatura ligeramente fría, armonizando con el secundario y generando una interfaz visualmente cohesiva.
- **Accesibilidad:** Cada tono ha sido validado para garantizar contraste suficiente en texto y componentes no textuales conforme a WCAG 2.1 (World Wide Web Consortium, 2025).

#### 5.1.1.2. Tipografía

La tipografía es un vehículo fundamental de comunicación y un componente decisivo en la percepción de la marca. La elección tipográfica genera una respuesta psicológica directa en el usuario, influenciando su percepción de confiabilidad y modernidad antes incluso de procesar el contenido (Jay & Lupton, 2024). En Restock, la selección tipográfica responde tanto a criterios funcionales de legibilidad como a la necesidad de proyectar una identidad profesional, accesible y tecnológicamente actualizada.

A partir de la imagen de referencia del sistema visual del proyecto, el equipo confirma el uso de **Inter** como tipografía principal, aplicada consistentemente en los niveles de Headline, Body y Label de la interfaz.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/UiDSdhb.png" alt="typographie">
</div>

*Modelo tipográfico Inter Headline, Body y Label para Restock*

Las fuentes sans-serif presentan una geometría que se rasteriza de forma eficiente, permitiendo una presentación consistente y legible tanto en pantallas de baja resolución como en dispositivos de gama alta (González-Rodríguez et al., 2024). Inter, en particular, fue concebida para optimizar la lectura en monitores y dispositivos móviles, con métricas que garantizan claridad desde 12 px hasta tamaños de display, lo que la convierte en la elección más adecuada para una plataforma de gestión de inventarios donde la precisión en la lectura de datos es crítica.

*Escala tipográfica y usos de la familia Inter en la interfaz de Restock*

| Rol      | Familia | Peso           | Tamaño   | Altura de línea | Uso principal                                                                        |
|----------|---------|----------------|----------|-----------------|--------------------------------------------------------------------------------------|
| Headline | Inter   | 500 (Medium)   | 28–36 px | 1.25×           | Títulos de sección, encabezados de página y elementos de alto impacto visual         |
| Body     | Inter   | 400 (Regular)  | 14–16 px | 1.5×            | Cuerpo de texto, descripciones, datos de inventario y contenido informativo general  |
| Label    | Inter   | 400–500        | 12–13 px | 1.4×            | Etiquetas de componentes, metadatos, campos de formulario y elementos secundarios    |

La elección de Inter responde a cuatro criterios técnicos fundamentales:

**1. Legibilidad optimizada en pantallas de distintas densidades**

Inter fue diseñada con hinting específico para pantallas digitales, lo que garantiza que sus contornos se mantengan nítidos tanto en displays de baja resolución como en dispositivos Retina o 4K. Esto resulta especialmente relevante para Restock, donde datos numéricos como cantidades de stock, precios y alertas deben ser legibles de forma inmediata (González-Rodríguez et al., 2024).

**2. Geometría funcional sin ornamentos**

Su estructura sans-serif con proporciones abiertas asegura que los caracteres sean distinguibles incluso a 12 px, evitando confusiones entre glifos similares como "1", "l" e "I", frecuentes en tipografías de menor calidad para pantalla.

**3. Compatibilidad multiplataforma**

Inter está disponible en Google Fonts con carga optimizada desde CDN, ofrece amplia compatibilidad entre navegadores y sistemas operativos, y puede implementarse en frameworks como Angular (web) y Flutter (móvil) sin pérdida de consistencia visual entre plataformas (Bhanarkar et al., 2023).

**4. Coherencia con la identidad de Restock**

Su estética moderna, neutral y funcional se alinea con los valores de la plataforma: precisión, eficiencia y profesionalismo. A diferencia de opciones más decorativas, Inter refuerza la percepción de herramienta confiable sin añadir ruido visual a interfaces densas en datos.

**Principios de aplicación tipográfica:**

- **Contraste de peso:** Se utilizan únicamente dos pesos (400 regular y 500 medium) para establecer jerarquía sin sobrecargar visualmente la interfaz.
- **Escala jerárquica:** Los títulos (Headline) captan la atención en puntos clave de navegación; los cuerpos (Body) garantizan lectura cómoda; las etiquetas (Label) organizan la información de menor jerarquía sin competir con el contenido principal.
- **Espaciado entre letras:** Se aplica espaciado negativo ligero (–0.3 a –0.5 px) en los Headline para mejorar la cohesión visual de los bloques de título en tamaños grandes.
- **Longitud de línea:** Se recomienda un máximo de 65–75 caracteres por línea en Body para garantizar legibilidad óptima en pantallas de escritorio, reduciendo a 45–55 caracteres en dispositivos móviles.

#### 5.1.1.3. Espaciado

El espaciado es un pilar fundamental para garantizar legibilidad, jerarquía visual y una experiencia de uso fluida en todas las plataformas de Restock. El sistema de espaciado se basa en una unidad base de 8 px y sus múltiplos (4 px, 8 px, 12 px, 16 px, 24 px, 32 px), siguiendo las recomendaciones de sistemas modulares de diseño contemporáneo.

Este enfoque ofrece ventajas técnicas y de usabilidad concretas: garantiza consistencia de diseño al eliminar valores arbitrarios, facilita la implementación mediante design tokens o variables CSS, permite escalar los espaciados de forma predecible en breakpoints responsivos y reduce la carga cognitiva del usuario al crear ritmos visuales coherentes (Wang et al., 2025).

*Escala de espaciado del sistema de diseño de Restock*

| Token     | Valor | Uso principal                                                                        |
|-----------|-------|--------------------------------------------------------------------------------------|
| spacing-1 | 4 px  | Separación mínima entre íconos y etiquetas, espaciado interno de badges y chips      |
| spacing-2 | 8 px  | Separación entre elementos funcionalmente relacionados, padding de botones pequeños  |
| spacing-3 | 12 px | Padding vertical de inputs, separación entre campos de formulario                    |
| spacing-4 | 16 px | Padding interno de tarjetas, separación estándar entre componentes de lista          |
| spacing-6 | 24 px | Separación entre secciones dentro de una vista, márgenes de paneles                 |
| spacing-8 | 32 px | Separación entre bloques de contenido independientes, márgenes de página             |

*Directrices de espaciado para elementos de texto en Restock*

| Elemento    | Tamaño   | Altura de línea | Margen inferior |
|-------------|----------|-----------------|-----------------|
| Headline H1 | 36 px    | 44 px (1.22×)   | 32 px           |
| Headline H2 | 28 px    | 36 px (1.28×)   | 24 px           |
| Body        | 16 px    | 24 px (1.5×)    | 16 px           |
| Body small  | 14 px    | 20 px (1.43×)   | 12 px           |
| Label       | 12–13 px | 18 px (1.4×)    | 8 px            |

*Directrices de padding y margen para los componentes principales de Restock*

| Componente               | Padding interno                        | Margen externo | Gutter |
|--------------------------|----------------------------------------|----------------|--------|
| Botón primario           | 10 px (vertical) × 20 px (horizontal) | 8 px           | —      |
| Input / Campo de formulario | 10 px (vertical) × 14 px (horizontal) | 12 px        | —      |
| Tarjeta (Card)           | 16 px                                  | 16 px          | 16 px  |
| Navbar / Sidebar         | 20 px                                  | —              | —      |
| Grid de contenido        | —                                      | —              | 16 px  |

**Principios de agrupamiento y alineación:**

- **Agrupamiento semántico:** Los elementos funcionalmente relacionados (ícono con etiqueta, input con helper text) se agrupan con márgenes internos de 4–8 px; las secciones independientes se separan con 24–32 px, aplicando el principio de proximidad de la Gestalt para reducir la carga cognitiva (Zeldman, 2024).
- **Alineación consistente:** Todos los elementos siguen la cuadrícula modular de 8 px en ambos ejes, garantizando una distribución homogénea de la interfaz y facilitando la implementación en CSS Grid.
- **Escalado responsivo:** En dispositivos móviles (menor a 768 px) se conservan los primeros múltiplos (4, 8, 16 px); en tablet y escritorio (mayor a 768 px) se incorporan múltiplos superiores (24, 32 px) para aprovechar el espacio adicional sin generar distribuciones desequilibradas.

#### 5.1.1.4. Branding

El branding de Restock ha sido diseñado para reflejar simplicidad, confianza y profesionalismo. El logotipo y los íconos adoptan un enfoque minimalista, con líneas claras y formas simples que comunican el propósito de la plataforma de forma inmediata. El diseño incorpora la inicial del nombre del producto representada de manera que simboliza gestión y orden, con una apariencia limpia fácilmente reconocible tanto en entornos web como móviles.

Los íconos de la plataforma provienen de la biblioteca **Tabler Icons** en su variante outline, seleccionada por su estilo limpio, trazos uniformes de 2 px y amplia cobertura de conceptos relacionados con inventario, logística y gestión operativa. Su geometría modular armoniza con la tipografía Inter y con la paleta cromática del sistema, reforzando la coherencia visual en todos los puntos de contacto.

<img src="https://i.ibb.co/rfzS7Twx/image.png" style="display: flex; align-items: center;"/>

#### 5.1.1.5. Tono de Comunicación y Lenguaje Aplicado

De acuerdo con Smith y Zook (2024), el tono de comunicación es un componente esencial en el diseño de interfaces. No solo moldea la percepción emocional de los usuarios, sino que también contribuye a forjar una identidad de marca coherente y memorable. Un tono bien calibrado genera sensaciones de cercanía y confianza, mientras que un lenguaje claro y directo facilita la toma de decisiones en entornos operativos exigentes.

En Restock, el tono de comunicación fue definido considerando el perfil de sus usuarios principales: administradores de restaurantes y tiendas retail que gestionan operaciones críticas de inventario en su día a día. La plataforma se comunica con claridad, sin tecnicismos innecesarios, pero con el rigor suficiente para transmitir confiabilidad.

El tono de Restock se define en las siguientes dimensiones:

*Dimensiones del tono de comunicación de Restock*

| Dimensión               | Posición                              | Justificación                                                                                                                                                  |
|-------------------------|---------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Divertido / Serio       | Inclinado hacia serio                 | La plataforma gestiona operaciones críticas de negocio. La comunicación prioriza claridad y precisión sobre el humor, sin resultar fría ni distante            |
| Formal / Casual         | Punto intermedio, levemente casual    | Se evita el lenguaje corporativo excesivo. Las instrucciones son directas y comprensibles para administradores de distintos niveles de experiencia tecnológica |
| Respetuoso / Irreverente| Marcadamente respetuoso               | El lenguaje mantiene en todo momento un tono empático y profesional, reconociendo la exigencia del contexto operativo del usuario                             |
| Entusiasta / Sereno     | Levemente entusiasta                  | La plataforma motiva la acción sin generar ansiedad. Los mensajes de alerta son informativos, no alarmistas; las confirmaciones son afirmativas sin exagerar  |

**Principios de comunicación aplicados:**

- **Claro y conciso:** Se emplean oraciones breves y directas, con un máximo de 25–30 palabras en mensajes operativos. Los términos técnicos se introducen únicamente cuando son necesarios, acompañados de una explicación breve en su primer uso.
- **Orientado a la acción:** Los mensajes priorizan la información que permite al usuario resolver tareas o tomar decisiones. Los llamados a la acción son específicos y concretos: "Registrar lote", "Ver discrepancias", "Configurar alerta".
- **Empático y contextual:** El sistema reconoce el impacto de los eventos en la operación del negocio. Una alerta de stock crítico no solo informa, sino que orienta al usuario hacia la acción correcta sin generar alarma innecesaria.
- **Consistente y reconocible:** El estilo de redacción (voz activa, vocabulario operativo, estructura de mensajes) se mantiene uniforme en toda la plataforma, reforzando la identidad de la herramienta.

*Patrones de tono aplicados según el contexto de interacción en Restock*

| Contexto                      | Tono                            | Ejemplo                                                                                                          |
|-------------------------------|----------------------------------|------------------------------------------------------------------------------------------------------------------|
| Confirmación de acción        | Afirmativo y directo             | "Lote registrado correctamente."                                                                                 |
| Alerta de stock bajo          | Claro y orientado a la acción    | "El insumo Harina de trigo ha alcanzado su nivel mínimo. Se recomienda reponer el stock."                       |
| Error del sistema             | Sobrio y tranquilizador          | "No fue posible completar la operación. Verifique su conexión e intente nuevamente."                            |
| Mensaje de bienvenida         | Cercano y profesional            | "Bienvenido a Restock. Comience registrando su primera sucursal."                                               |
| Notificación de discrepancia  | Informativo y preciso            | "Se detectó una diferencia entre el stock físico y el registrado en Aceite de oliva. Revise la conciliación."  |

**Vocabulario preferido:**

El vocabulario empleado en la interfaz se alinea con el Ubiquitous Language definido en el modelo de dominio del sistema (véase Capítulo 2), garantizando coherencia entre la terminología de la interfaz y los conceptos del negocio. Términos como "insumo", "lote", "sucursal", "stock físico", "stock registrado" y "discrepancia" se emplean de forma consistente en todos los mensajes, etiquetas y notificaciones de la plataforma.

Se evitan anglicismos innecesarios, jerga técnica no definida y expresiones ambiguas. Cuando se introduce un término especializado, este se acompaña de una descripción breve en el contexto de su primer uso, asegurando que usuarios de distintos niveles de experiencia tecnológica puedan operar la plataforma con eficiencia.

### 5.1.2. Web, Mobile and IoT Style Guidelines

En esta seccion se presentara el diseño visual y de interacción para las tres plataformas que conforman la solución Restock: la aplicación web responsiva, la aplicación móvil y los dispositivos IoT de monitoreo de inventario. Estas guías aseguran que la experiencia del usuario sea coherente, funcional y alineada con la identidad de marca en cada punto de contacto, independientemente del canal utilizado.

Cada subapartado aborda los estándares visuales e interactivos propios de su plataforma, considerando las particularidades técnicas y operativas de cada entorno. En el caso de los dispositivos IoT, se incluyen además los estándares de interacción con la interfaz física del hardware, abarcando el display LCD, los LEDs de señalización y el botón de control incorporado en la balanza inteligente de Restock.

#### 5.1.2.1. Web Style Guidelines

La interfaz web de Restock está desarrollada con TypeScript y Angular, y está orientada a administradores de restaurantes y tiendas retail que acceden a la plataforma desde computadoras de escritorio o laptops para gestionar inventarios, sucursales, ventas y alertas. Las decisiones de estilo para esta plataforma priorizan la claridad de los datos, la jerarquía visual y la adaptabilidad a distintos tamaños de pantalla.

##### 5.1.2.1.1. Sistema de cuadrícula y espaciado

La cuadrícula de Restock Web se basa en una estructura modular que organiza el contenido de manera consistente. El contenedor principal tiene un ancho máximo que evita la dispersión del contenido en pantallas muy anchas. Los márgenes laterales y los espacios entre columnas siguen la escala de espaciado de 8 px definida en las General Style Guidelines (`spacing-1` a `spacing-8`), aplicada como design tokens en CSS para garantizar coherencia global.

La estructura de columnas se adapta según el dispositivo:

- En **escritorio** (pantallas amplias): se emplea una distribución multicolumna que permite mostrar el dashboard, el sidebar de navegación y los paneles de datos de inventario de forma simultánea. El sidebar ocupa una fracción del ancho total y el contenido principal ocupa el resto, separados por un gutter de 24 px. Los márgenes laterales del contenedor son de 32 px.

- En **tableta** (pantallas medianas): el sidebar de navegación se colapsa o reduce, y el contenido principal se reorganiza en menos columnas. Los márgenes laterales se reducen a 24 px y el gutter entre columnas a 16 px.

- En **móvil** (pantallas pequeñas): el contenido adopta una disposición de columna única. El sidebar se convierte en un menú desplegable, las tarjetas de inventario se apilan verticalmente y los márgenes laterales se reducen a 16 px.

El espaciado interno de los componentes sigue la escala establecida: los botones primarios emplean 10 px de padding vertical y 20 px horizontal; los inputs usan 10 px vertical y 14 px horizontal; las tarjetas tienen 16 px de padding interno y 16 px de margen externo entre ellas. La separación entre secciones independientes del dashboard es de 24 px, y entre bloques de contenido mayor de 32 px.

##### 5.1.2.1.2. Responsividad y Adaptabilidad

La plataforma web de Restock adopta una estrategia de diseño responsivo que garantiza la funcionalidad en distintos tamaños de pantalla, priorizando la legibilidad de datos numéricos de stock, alertas y métricas operativas.

**Comportamiento de los componentes clave según el dispositivo:**

- Las **tablas de inventario**, componente central de la plataforma, adaptan su presentación según el ancho disponible. En escritorio muestran todas las columnas (nombre del insumo, stock físico, stock registrado, umbral, estado y acciones). En tableta se priorizan las columnas de mayor relevancia operativa y se habilita scroll horizontal para las restantes. En móvil se presenta una vista de tarjeta por insumo en lugar de tabla, conservando los datos esenciales.

- El **dashboard** con métricas de stock y ventas emplea una distribución de widgets en cuadrícula en escritorio. En tableta los widgets se reorganizan en dos columnas. En móvil se apilan en una sola columna con scroll vertical, manteniendo los indicadores de alerta crítica visibles en la parte superior de la vista.

- El **sidebar de navegación** permanece visible y expandido en escritorio. En tableta se colapsa a un sidebar de íconos sin etiquetas de texto. En móvil se convierte en un menú desplegable accesible desde un botón de navegación en el encabezado, empleando íconos Tabler Icons en variante outline de 24 px.

- Los **formularios** de registro de insumos, sucursales y configuración de balanzas adaptan sus campos al ancho disponible. En escritorio los campos se disponen en dos columnas. En tableta y móvil adoptan disposición de columna única con campos a ancho completo. Los labels emplean la fuente Inter 400 Regular en 12–13 px (color `#374151`, Gris Acero), y los inputs aplican el padding definido en la escala de espaciado.

##### 5.1.2.1.3. Tipografía en la interfaz web

La plataforma web aplica la familia **Inter** en todos sus niveles tipográficos, conforme a la decisión establecida en las General Style Guidelines. La jerarquía tipográfica en la interfaz web se implementa de la siguiente manera:

- Los **encabezados de sección y títulos de página** (Headline) emplean Inter Medium 500 en tamaños entre 28 y 36 px, con altura de línea de 1.25×. Se aplican en tonos del color secundario (`#111827` Azul Marino o `#065F46` Verde Profundo) para establecer jerarquía visual sobre el fondo neutro (`#F4F7F6`).

- El **cuerpo de texto** de descripciones, datos de inventario y contenido informativo emplea Inter Regular 400 en 14–16 px con altura de línea de 1.5×. El color principal para cuerpo de texto es `#111827` sobre fondos claros, garantizando un contraste superior a 15:1 conforme a WCAG AAA.

- Las **etiquetas de componentes**, metadatos de tabla, placeholders de inputs y textos secundarios emplean Inter Regular 400 o Medium 500 en 12–13 px con altura de línea de 1.4×. Los placeholders y textos de ayuda contextual usan `#6B7280` (Gris Suave); los textos desactivados usan `#9CA3AF` (Gris Perla).

- Los **valores numéricos** de stock, cantidades, precios y métricas del dashboard emplean Inter Medium 500 en tamaños de 16–28 px según su nivel de jerarquía, asegurando la distinción inmediata de cifras críticas como niveles de stock bajo o discrepancias detectadas.

##### 5.1.2.1.4. Accesibilidad en la interfaz web

La plataforma web de Restock aplica los estándares WCAG 2.1 de nivel AA/AAA, validados para toda la paleta cromática del sistema. Los criterios de accesibilidad aplicados son:

- En cuanto al **contraste cromático**, todos los textos de cuerpo sobre fondos claros superan el ratio de 4.5:1. Los encabezados grandes superan el ratio de 3:1. Los íconos funcionales y bordes de componentes cumplen el ratio mínimo de 3:1 sobre el fondo.

- Para la **navegación con teclado**, todos los elementos interactivos de la interfaz botones de acción, inputs, selectores de sucursal, controles del dashboard— son accesibles mediante la tecla Tab en un orden lógico que sigue el flujo de lectura de la pantalla. Los elementos decorativos quedan excluidos del tabulado. El indicador de foco visible emplea el color primario Verde Esmeralda (`#10B981`) con borde de 3 px para garantizar su visibilidad.

- El **etiquetado semántico** de los componentes sigue las convenciones ARIA: los íconos Tabler Icons que comunican información de estado llevan `aria-label` descriptivo; las tablas de inventario emplean encabezados con `role="columnheader"`; las alertas de stock crítico emplean `role="alert"` para anunciarse automáticamente a lectores de pantalla; los modales de confirmación emplean `role="dialog"` con `aria-labelledby` y `aria-modal="true"`.

##### 5.1.2.1.5. Patrón Z en la interfaz web

El patrón Z es un principio de diseño visual que describe la trayectoria natural del ojo humano al escanear una interfaz. El usuario inicia la lectura en la esquina superior izquierda, se desplaza horizontalmente hacia la esquina superior derecha, realiza un movimiento diagonal hacia la esquina inferior izquierda y concluye en la esquina inferior derecha. Esta trayectoria en forma de "Z" se repite de forma instintiva en interfaces con estructura horizontal, como dashboards, landing pages y vistas de gestión de datos (Zeldman, 2024).

En Restock Web, el patrón Z se aplica de la siguiente manera:

| Zona | Posición | Contenido asignado | Justificación |
|------|----------|--------------------|---------------|
| Punto 1 | Superior izquierda | Logo de Restock y nombre de la sucursal activa | Ancla la identidad de marca y el contexto operativo del usuario |
| Punto 2 | Superior derecha | Ícono de notificaciones, perfil de usuario y acceso rápido a alertas | Concentra los controles de mayor frecuencia de uso en sesión activa |
| Diagonal | Centro | Contenido principal del dashboard: métricas de stock, widgets de alertas y gráficos de rotación | La zona de mayor densidad informativa aprovecha el tránsito visual natural entre los dos puntos superiores e inferiores |
| Punto 3 | Inferior izquierda | Sidebar de navegación con accesos a módulos: Inventario, Sucursales, Dispositivos, Ventas | Organiza la navegación secundaria en la zona de llegada natural del primer movimiento diagonal |
| Punto 4 | Inferior derecha | Botón de acción primaria (registro de lote, nueva venta) o resumen de estado del sistema | Ubica la acción principal en el punto de conclusión del recorrido visual |

**Principios de aplicación del patrón Z en Restock Web:**

- Los elementos de mayor jerarquía visual (logo, alertas críticas, métricas de stock) se posicionan en los extremos del eje horizontal superior, aprovechando que son los primeros puntos que el usuario fija al iniciar la sesión.
- El contenido informativo de mayor densidad, como las tablas de inventario y los dashboards de métricas, se ubica en la zona central de la diagonal, donde el ojo transita de forma natural sin requerir esfuerzo adicional de búsqueda.
- Los botones de acción primaria se posicionan en la esquina inferior derecha, coincidiendo con el punto de conclusión del recorrido Z, lo que reduce la distancia cognitiva entre la lectura de la información y la ejecución de la acción correspondiente.
- En vistas de listado de insumos y tablas de stock, el patrón Z se aplica a nivel de componente: el nombre del insumo y su estado de stock ocupan los extremos superiores de cada fila, mientras las acciones de edición o reposición se ubican en el extremo derecho inferior de la tarjeta o fila.

#### 5.1.2.2. Mobile Style Guidelines

La aplicación móvil de Restock está desarrollada con Dart y Flutter, orientada a los mismos segmentos de usuarios que la plataforma web: administradores de restaurantes y tiendas retail que necesitan consultar el estado del inventario, registrar movimientos de stock y recibir alertas en tiempo real desde sus dispositivos móviles. Las decisiones de diseño móvil priorizan la simplicidad de la interacción táctil y la legibilidad de datos operativos en contextos de uso dinámico como cocinas o almacenes.

##### 5.1.2.2.1. Paleta cromática y tipografía en móvil

La aplicación móvil aplica la misma paleta definida en las General Style Guidelines de Restock, garantizando coherencia visual entre la plataforma web y la aplicación móvil. El color primario Verde Esmeralda (`#10B981`) se emplea en los elementos de navegación activos, botones principales y badges de estado normal. El color terciario Rojo Alerta (`#DC2626`) identifica alertas críticas, errores y acciones destructivas. Los fondos de pantalla emplean el Blanco Grisáceo (`#F4F7F6`) y el Blanco Puro (`#FFFFFF`) para los paneles flotantes y tarjetas de datos.

La tipografía **Inter** se integra como fuente personalizada en el bundle de la aplicación Flutter, aplicando los mismos pesos y tamaños definidos en las General Style Guidelines: 
- Inter Medium 500 para títulos de pantalla y etiquetas denavegación activa, Inter Regular 400 para cuerpos de texto y datos de inventario.
- El escalado de tipografía respeta la configuración de accesibilidad del sistema operativo del usuario, permitiendo que la fuente escale con Dynamic Type en iOS o con el ajuste de tamaño de fuente en Android sin romper el layout.

##### 5.1.2.2.2. Navegación y jerarquía visual

La navegación principal de la aplicación móvil de Restock emplea una **barra de navegación inferior** que concentra los accesos a las secciones de mayor frecuencia de uso: Dashboard, Inventario, Alertas, Ventas y Perfil. Esta ubicación responde a la necesidad de los administradores de acceder rápidamente a estas secciones durante la operación diaria del negocio, en contextos donde el uso con una sola mano es frecuente.

El ícono activo de la barra inferior se presenta en Verde Esmeralda (`#10B981`) con etiqueta de texto en Inter Medium 500 de 12 px. Los íconos inactivos emplean Gris Suave (`#6B7280`) con etiqueta en Inter Regular 400. Todos los íconos corresponden a la librería Tabler Icons en variante outline con trazo de 2 px, manteniendo coherencia con el sistema iconográfico de la plataforma web.

Para accesos secundarios de menor frecuencia, como configuración avanzada de balanzas, gestión de sucursales adicionales o consulta de términos, se emplea un **menú lateral deslizante** accesible desde el encabezado de la pantalla. Este menú presenta las opciones en Inter Regular 400 de 14 px con íconos Tabler Icons alineados a la izquierda, sobre fondo Blanco Puro (`#FFFFFF`) con separadores en Gris Borde (`#E5E7EB`).

El **botón de acción flotante (FAB)** representa la acción primaria de cada pantalla operativa. En la vista de inventario corresponde a "Registrar lote"; en la vista de ventas a "Nueva venta"; en la vista de sucursales a "Agregar sucursal". El FAB emplea el color primario Verde Esmeralda (`#10B981`) con ícono Tabler en blanco (`#FFFFFF`), posicionado en la esquina inferior derecha de la pantalla para facilitar su acceso con el pulgar.

El **encabezado de pantalla** presenta el título de la sección en Inter Medium 500 de 16–18 px en color Azul Marino (`#111827`), sobre fondo Blanco Puro (`#FFFFFF`). El encabezado incluye acceso al centro de notificaciones mediante un ícono Tabler de campana con badge numérico en Rojo Alerta (`#DC2626`) cuando existen alertas sin leer. Al hacer scroll hacia abajo en listas largas de inventario, el encabezado se contrae reduciendo su altura para maximizar el área de contenido visible.

##### 5.1.2.2.3. Interacciones táctiles y gestos

Las interacciones táctiles de la aplicación móvil de Restock responden a las acciones operativas más frecuentes de los administradores de inventario:

- El **tap** activa la selección de un insumo, la apertura del detalle de un lote o la confirmación de una acción. La respuesta visual se produce mediante un efecto de tinta en el color primario con opacidad reducida, confirmando al usuario que la pulsación fue registrada.

- El **deslizamiento vertical** en listas de inventario y tablas de stock activa la actualización de datos con la acción pull-to-refresh, mostrando un indicador de carga en Verde Esmeralda (`#10B981`) mientras el sistema consulta el estado actualizado del inventario desde el servidor.

- El **deslizamiento horizontal** sobre una tarjeta de insumo o un ítem de la lista de alertas revela opciones contextuales de acción rápida como editar, desactivar o marcar como revisado, reduciendo la cantidad de pasos necesarios para ejecutar operaciones frecuentes.

- La **pulsación prolongada** sobre un insumo o una sucursal en modo listado activa un menú contextual con opciones adicionales. Este gesto se emplea de forma selectiva para acciones que requieren confirmación explícita, como la transferencia de lotes entre sucursales o la desactivación de un dispositivo IoT.

- Las transiciones entre pantallas emplean deslizamiento horizontal consistente con las convenciones nativas del sistema operativo, completándose en tiempos que garantizan fluidez sin generar sensación de lentitud.

##### 5.1.2.2.4. Componentes visuales en móvil

Las **tarjetas de insumo** son el componente visual principal del módulo de inventario. Presentan el nombre del insumo en Inter Medium 500 de 14 px, el nivel de stock actual con su unidad de medida, y un badge de estado que emplea Verde Medio (`#059669`) para stock normal, Verde Claro (`#6EE7B7`) para stock en advertencia y Rojo Alerta (`#DC2626`) para stock crítico. El fondo de la tarjeta es Blanco Puro (`#FFFFFF`) con borde sutil en Gris Borde (`#E5E7EB`) y esquinas con radio de 12 px.

Las **notificaciones de alerta** en la bandeja de notificaciones se presentan con un borde izquierdo de 4 px en el color correspondiente al tipo de alerta: Rojo Alerta para stock en cero o discrepancia crítica, Rojo Claro (`#FCA5A5`) para alertas de advertencia. El título emplea Inter Medium 500 de 14 px y la descripción Inter Regular 400 de 13 px en Gris Suave (`#6B7280`), con la hora del evento en 12 px.

Los **modales de confirmación** se presentan centrados con fondo semitransparente sobre la vista activa. Emplean Blanco Puro (`#FFFFFF`) como fondo del modal, título en Inter Medium 500 de 16 px, descripción en Inter Regular 400 de 14 px, y botones de acción que distinguen visualmente entre confirmar (Verde Esmeralda `#10B981`) y cancelar (Gris Acero `#374151`).

#### 5.1.2.3. IoT Style Guidelines

Los dispositivos IoT de Restock constituyen la balanza inteligente que permite el monitoreo físico del inventario en tiempo real. Cada dispositivo está compuesto por un **ESP32 DevKitV1** como unidad de procesamiento central, cuatro **sensores de celda de carga WSS-5KG** con conversor **HX711** de 24 bits para la medición de peso, un **sensor DHT22** para temperatura y humedad, y un **display LCD 1602A** de 2 líneas × 16 caracteres con módulo I2C como interfaz visual principal. El kit básico de componentes incluye además LEDs de señalización.

La interfaz de usuario del dispositivo IoT es completamente física y autónoma: no requiere conexión a una pantalla externa ni acceso a las aplicaciones web o móvil para comunicar el estado del inventario al operario presente en la sucursal.

##### 5.1.2.3.1. Display LCD 1602A — Interfaz visual del dispositivo

El display alfanumérico LCD de 2 líneas × 16 caracteres, controlado mediante el módulo I2C PCF8574 por el ESP32, es el canal de comunicación visual principal del dispositivo con el usuario en campo. Su diseño de contenido responde a los principios de claridad y concisión definidos en el tono de comunicación de Restock: cada pantalla comunica un único dato con vocabulario extraído directamente del Ubiquitous Language del sistema.

**Principios de diseño de contenido para el display LCD:**

Cada mensaje ocupa las dos líneas disponibles de forma complementaria: la línea superior presenta el nombre del insumo monitoreado y la línea inferior presenta el valor medido. Ninguna línea contiene información redundante de la otra. Los nombres de insumos que superan los 16 caracteres disponibles por línea se truncan en la posición 14 con puntos suspensivos para indicar que el nombre continúa. Los valores numéricos siempre incluyen su unidad de medida (`kg`, `g`, `L`, `u`).

**Pantallas consideradas en el alcance del sistema:**

El display contempla únicamente dos vistas en rotación: la vista de stock del insumo asignado y la vista de condiciones ambientales capturadas por el sensor DHT22. La rotación entre ambas vistas es periódica y automática, controlada por el firmware del ESP32.

Cuando el dispositivo opera con un insumo asignado y peso estable, el display muestra:
```
[Nombre del insumo]
Stock: [XX.X] [unidad]
```

Por ejemplo:
```
Harina de trigo

Stock: 4.2 kg
```

La vista de condiciones ambientales se presenta durante un intervalo breve antes de volver a la vista de stock principal:
```
Temp: [XX.X] C
Hum:  [XX.X] %
```
Cuando el dispositivo está operativo pero no tiene un insumo asignado desde la plataforma, el display muestra:
```
Restock Balanza
Sin asignar
```
El display permanece activo de forma continua mientras el dispositivo esté encendido, ya que el sistema opera sin restricciones de horario.

##### 5.1.2.3.2. Estándares generales de interacción con la interfaz física

El diseño de la interfaz física del dispositivo IoT de Restock responde a los mismos valores de claridad y empatía con el usuario operativo que definen el tono de comunicación de la plataforma.

**Legibilidad en contextos operativos.** El display LCD 1602A con retroiluminación garantiza legibilidad en entornos con variaciones de iluminación propias de cocinas, almacenes y áreas de exhibición retail. El ángulo de visión recomendado para una lectura cómoda del display es de hasta 45° desde el eje frontal del dispositivo. La posición de montaje de la cabina debe considerar este ángulo para que el display sea legible desde la posición habitual del operario durante la reposición de insumos.

**Vocabulario del display alineado con la plataforma.** Todos los textos del display LCD emplean términos del Ubiquitous Language de Restock: "Stock", "Temp", "Hum". Esta coherencia terminológica garantiza que el operario reconozca los mismos conceptos que emplea en la aplicación web o móvil, reduciendo la carga cognitiva y los errores de interpretación en el campo.

**Retroalimentación inmediata.** Ante la detección de un nuevo peso estable o la recepción de un comando de configuración desde la plataforma, el display actualiza su contenido en menos de 200 ms, garantizando que el operario perciba el estado actual del insumo sin demora perceptible.

**Filtrado de lecturas inestables.** El firmware del ESP32 aplica validación de las lecturas del HX711 antes de actualizar el display o activar cualquier señal LED. Las lecturas que fluctúan por encima de un umbral de variación o que se encuentran fuera del rango físico esperado para la celda de carga se descartan sin modificar la vista mostrada, protegiendo la confianza del operario en los datos presentados por el dispositivo.

**Comportamiento ante pérdida de conectividad WiFi.** Cuando el dispositivo pierde la conexión con el edge local o con la plataforma en la nube, el display continúa mostrando el estado actual del peso medido y el LED mantiene su señalización de estado. Los datos de telemetría generados durante el período sin conectividad se almacenan localmente en el edge para ser enviados al sistema central cuando la conexión se restablezca, garantizando la trazabilidad del inventario sin pérdida de registros.

## 5.2. Information Architecture
### 5.2.1. Organization Systems
### 5.2.2. Labeling Systems

### 5.2.3. SEO Tags and Meta Tags

Con el objetivo de mejorar la posicionamiento orgánico de **Restock** en los motores de búsqueda y facilitar que dueños de restaurantes y administradores de retail encuentren una solución automatizada a sus problemas de inventario, se ha definido la siguiente estrategia de etiquetado HTML.

**Landing Page**

- **Title:**
    `<title>Restock | Gestión de Inventario Inteligente con Sensores IoT</title>`
    - **Propósito:** Incluye el nombre de la marca y las palabras clave de mayor volumen de búsqueda como "gestión de inventario" e "IoT", posicionando el diferencial tecnológico de inmediato.

- **Meta Description:**
    `<meta name="description" content="Restock automatiza el control de tus insumos mediante sensores de peso IoT. Evita mermas, recibe alertas de stock bajo en tiempo real y optimiza tus recetas. La solución definitiva para restaurantes y retail inteligente.">`
    - **Propósito:** Explica el funcionamiento (sensores de peso) y los beneficios (evitar mermas, alertas en tiempo real), incitando al clic mediante una propuesta de valor clara.

- **Meta Keywords:**
    `<meta name="keywords" content="Restock, inventario IoT, control de insumos, sensores de peso, gestión de mermas, stock restaurantes, automatización de inventario, retail inteligente, pesaje digital">`
    - **Propósito:** Agrupa términos técnicos y de negocio que los clientes potenciales utilizan para buscar soluciones de modernización de almacenes.

- **Meta Author:**
    `<meta name="author" content="Equipo Restock – Innovación en IoT y Experiencia de Usuario">`

---

**Web Application – Dashboard Principal**

- **Title:**
    `<title>Dashboard Operativo – Restock | Monitoreo de Insumos en Tiempo Real</title>`
    - **Propósito:** Enfocado en la utilidad de la herramienta. El uso de "Monitoreo en Tiempo Real" refuerza que la aplicación web es una consola de control activa.

- **Meta Description:**
    `<meta name="description" content="Accede a tu panel de control de Restock. Visualiza el peso exacto de tus insumos, gestiona alertas críticas de stock y monitorea la salud de tus dispositivos IoT desde cualquier lugar.">`
    - **Propósito:** Resume las funciones principales del dashboard (visualizar peso, alertas, salud de dispositivos) para usuarios que ya conocen la plataforma o buscan herramientas de monitoreo.

- **Meta Keywords:**
    `<meta name="keywords" content="panel de control IoT, telemetría de sensores, monitoreo de stock, gestión de recetas, dashboard administrativo, alertas de peso, control de dispositivos IoT">`
    - **Propósito:** Palabras clave específicas para el entorno de trabajo (telemetría, dashboard, dispositivos) que ayudan a la indexación de la herramienta interna.

- **Meta Author:**
    `<meta name="author" content="Equipo de Desarrollo Restock, 2026">`
    - **Propósito:** Refuerza la vigencia tecnológica del sistema al incluir el año actual de implementación.

---

**Mobile Application – Vista de Monitoreo**

- **Title:**
    `<title>Restock Mobile | Estado de Inventario y Alertas en tu Bolsillo</title>`
    - **Propósito:** Resalta la portabilidad y la inmediatez. El uso de "en tu bolsillo" refuerza la naturaleza móvil de la herramienta frente a la versión de escritorio.

- **Meta Description:**
    `<meta name="description" content="Lleva el control de tu almacén a donde vayas. Revisa niveles de stock mediante sensores IoT, recibe notificaciones push de suministros críticos y verifica el estado de tus dispositivos en tiempo real desde tu smartphone.">`
    - **Propósito:** Se enfoca en las capacidades exclusivas del móvil, como las "notificaciones push" y la movilidad, factores clave para un administrador que no siempre está frente a una PC.

- **Meta Keywords:**
    `<meta name="keywords" content="app de inventario, monitoreo móvil IoT, notificaciones de stock, control de suministros smartphone, gestión de almacén remota, alertas push Restock">`
    - **Propósito:** Atrae a usuarios que buscan soluciones de gestión remota y aplicaciones móviles para control de stock.

- **Meta Author:**
    `<meta name="author" content="Equipo de Desarrollo Mobile – Restock, 2026">`

### 5.2.4. Searching Systems
### 5.2.5. Navigation Systems

En esta sección se describen las acciones y técnicas que guiarán a los usuarios a través del Landing Page y las aplicaciones (web, móvil e IoT), permitiéndoles cumplir sus metas e interactuar de forma satisfactoria con el producto. Se incluyen los recorridos principales, los patrones de interacción y las tácticas UX que facilitan la navegación y la conversión hacia tareas de valor.

El sistema de navegación de Restock se estructura en tres niveles complementarios:

- **Navegación global:** permite desplazarse entre las secciones principales del Landing Page y entre los módulos de las aplicaciones web y móvil. En el Landing Page se implementa mediante el menú superior y los CTA principales; en la aplicación web, mediante la sidebar o barra superior que conduce a Dashboard, Inventario, Sucursales, Alertas y Configuración; y en la aplicación móvil, mediante la barra de navegación inferior y accesos al menú lateral.
- **Navegación local:** facilita el acceso a subniveles dentro de una sección o pantalla. Incluye tabs internos, filtros y acciones contextuales para pasar de una vista general a otra más específica, por ejemplo, ingresar al inventario de una sucursal desde su card, abrir el detalle de un insumo desde una tabla o cambiar entre vistas relacionadas dentro de un mismo módulo.
- **Sistemas de orientación:** ayudan al usuario a entender dónde está y cómo volver. Se aplican botones de retorno, breadcrumbs en la web cuando el flujo lo requiere y patrones de cierre o retorno en móvil. En la aplicación web y móvil sí se implementan rutas de regreso claras desde pantallas de detalle, modales y formularios; en el Landing Page no se prioriza un botón de retorno interno porque la navegación se resuelve por scroll, anclas y acceso directo a secciones.

Principios y técnicas clave:

- **Camino claro hacia la acción:** el Landing Page presenta un "hero" con un CTA principal (ej. "Registrarse", "Solicitar demo", "Descargar app") visible above‑the‑fold para reducir fricción y dirigir al usuario al flujo objetivo.
- **Estructura de anclas y scroll lineal:** el contenido se organiza en secciones con anclas (beneficios, funcionalidades, precios, testimonios) para permitir navegación rápida y enlaces profundos desde menús y emails.
- **Onboarding guiado y checklist:** al registrarse, un asistente guía los pasos esenciales (crear cuenta, añadir sucursal, registrar balanza, asignar insumo) con tooltips y checklist para lograr "primer valor" cuanto antes.
- **Observabilidad y optimización:** eventos de navegación y conversiones se miden (KPIs) para reordenar y optimizar las rutas críticas.

En el caso de la aplicación web, la navegación global se apoya en una estructura persistente de módulos, mientras que la navegación local se concentra en tabs, cards y accesos directos para reducir la profundidad de clics. En la aplicación móvil, la navegación global prioriza la barra inferior y la navegación local se resuelve con tarjetas, listas y acciones por gesto. En ambos casos, los botones de retorno y cierre se reservan para flujos de detalle, edición y confirmación, reforzando la orientación del usuario sin duplicar controles innecesarios.

Ejemplos de recorridos de usuario:

- **Visitante → Hero CTA → Beneficios → Registro rápido → Onboarding → Dashboard inicial.**
- **Administrador → Login → Dashboard → Lista de insumos críticos → Detalle de insumo → Ajustar stock / Generar tarea de conciliación.**
- **Operario móvil → Barra inferior → Inventario → Seleccionar tarjeta → Swipe para acción rápida → Confirmación.**

Con estas decisiones de navegación, Restock orienta a los usuarios paso a paso —desde el primer contacto en el Landing Page hasta las tareas operativas diarias— reduciendo esfuerzo y mejorando la satisfacción y eficacia en la gestión del inventario.


## 5.3. Landing Page UI Design
### 5.3.1. Landing Page Wireframe
### 5.3.2. Landing Page Mock-up
## 5.4. Applications UX/UI Design
### 5.4.1. Applications Wireframes
### 5.4.2. Applications Wireflow Diagrams

Un wireflow o flujo de pantalla es un diagrama donde se reúnen distintos wireframes realizados cuya finalidad es contar las metas del usuario (User Goal) con la aplicación y cómo las consiguen.

**- Task Flow 1**: Registro de un nuevo usuario y activación de su suscripción

<p align="center">
  <img src="https://i.imgur.com/bMmb1kl.png"
    alt="task-flow-1"/>
</p>

#### Pasos del Task Flow 1:

1. El visitante ingresa a la aplicación web
2. El visitante va a la sección de registro
3. El Visitante elige su rol de negocio
4. El Visitante completa su correo y contraseña
5. El Visitante completa sus datos de perfil
6. El Visitante completa sus datos de negocio
7. El Visitante completa los datos del negocio
8. El Visitante elige un plan de suscripción y paga
9. Va a la sección de Inicio


**- User Goal 1**: Como visitante, quiero registrarme en la plataforma y activar mi suscripción para comenzar a gestionar mi inventario.

<p align="center">
  <img src="https://i.imgur.com/9G2937P.png"
    alt="wire-flow-1"/>
</p>

<p align="center">
  <img src="https://i.imgur.com/2579pQG.png"
    alt="wire-flow-1"/>
</p>

El visitante ingresa a la web app y se registra eligiendo su rol (administrador de restaurnate o retail); luego completa sus datos personales y de negocio, selecciona un plan y realiza el pago para activar su suscripción. Al finalizar el proceso, accede al dashboard principal de la plataforma y puede comenzar a gestionar su inventario.

**- Task Flow 2**: Inicio de sesión y recuperación de contraseña

<p align="center">
  <img src="https://i.imgur.com/0RFEmnX.png"
    alt="task-flow-2"/>
</p>

#### Pasos del Task Flow 2:

1. El usuario ingresa a la aplicación web
2. El visitante va a la seccion de "Olvidaste tu contraseña"
3. El usuario ingresa su correo
4. El usuario ingresa el código de 6 dígitos
5. El usuario restablece su contraseña
6. El usuario ingresa su correo y nueva contraseña
7. El usuario ingresa a Inicio

**- User Goal 2**: Como usuario registrado, quiero iniciar sesión con mis credenciales o recuperar mi contraseña en caso de olvidarla, para acceder de forma segura a mi cuenta.

<p align="center">
  <img src="https://i.imgur.com/2mNOzqX.png"
    alt="wire-flow-2"/>
</p>

<p align="center">
  <img src="https://i.imgur.com/wT7ghaG.png"
    alt="wire-flow-2"/>
</p>

El usuario registrado accede a la web app y puede iniciar sesión directamente con sus credenciales. Si olvidó su contraseña, inicia el flujo de recuperación ingresando su correo, recibiendo y validando un código de 6 dígitos, y estableciendo una nueva contraseña, para finalmente iniciar sesión y acceder a su cuenta.

**- Task Flow 3**: Gestión de suministros

<p align="center">
  <img src="https://i.imgur.com/HhxJUxF.png"
    alt="task-flow-3"/>
</p>

#### Pasos del Task Flow 3:

1. El administrador ingresa a la sección de inventario
2. El administrador selecciona "Agregar un suministro"
3. El administrador completa el formulario de registro
4. El administrador visualiza su nuevo suministro en su catálogo
5. El administrador selecciona el suministro creado
6. El administrador visualiza los detalles de ese suministro creado

**- User Goal 3**: Como administrador, quiero registrar y gestionar los insumos de mi catálogo para mantener información actualizada y confiable que me permita tomar decisiones operativas sobre el inventario. 

<p align="center">
  <img src="https://i.imgur.com/64Bmz5l.png"
    alt="wire-flow-3"/>
</p>

<p align="center">
  <img src="https://i.imgur.com/huTCM9n.png"
    alt="wire-flow-3"/>
</p>

El administrador navega a la sección de inventario y, si aún no tiene insumos, usa la opción de agregar el primero; si ya tiene insumos registrados, puede crear uno nuevo. En ambos casos completa el formulario de creación del insumo y, al guardarlo, el nuevo producto queda disponible en el catálogo con su información.

**- Task Flow 4**: Gestión de Recetas

<p align="center">
  <img src="https://i.imgur.com/B9SZIFs.png"
    alt="task-flow-4"/>
</p>

#### Pasos del Task Flow 4:

1. El administrador de restaurante ingresa a la sección de recetas
2. El administrador de restaurante selecciona "Agregar receta"
3. El administrador completa el formulario de registro de receta
4. El administrador visualiza su nueva receta en su catálogo
5. El administrador selecciona la receta creado
6. El administrador visualiza los detalles de esa receta creado

**- User Goal 4**: Como administrador de restaurante, quiero crear y gestionar recetas vinculando insumos del inventario para controlar el consumo por plato y calcular el costo estimado de preparación.

<p align="center">
  <img src="https://i.imgur.com/yvfuzKo.png"
    alt="wire-flow-4"/>
</p>

El administrador de restaurante accede a la sección de recetas y selecciona la opción de crear una receta nueva; completa el formulario con nombre, imagen y los ingredientes que lo componen junto a sus cantidades. Una vez guardado, puede ingresar al detalle de la receta creada y verificar su disponibilidad.

**- Task Flow 5**: Gestión de Kits / Combos

<p align="center">
  <img src="https://i.imgur.com/Na89SRx.png"
    alt="task-flow-5"/>
</p>

#### Pasos del Task Flow 5:

1. El administrador retail ingresa a la sección de kits (combos)
2. El administrador retail selecciona "Agregar combo"
3. El administrador completa el formulario de registro del combo
4. El administrador visualiza su nuevo combo en su catálogo
5. El administrador selecciona el combo creado
6. El administrador visualiza los detalles de ese combo creado

**- User Goal 5**: Como administrador retail, quiero configurar kits que agrupen productos individuales para ofrecer combos estandarizados y consultar su disponibilidad.

<p align="center">
  <img src="https://i.imgur.com/qCFeaCC.png"
    alt="wire-flow-5"/>
</p>

El administrador retail accede a la sección de kits y selecciona la opción de crear un kit nuevo; completa el formulario con nombre, imagen y los productos que lo componen junto a sus cantidades. Una vez guardado, puede ingresar al detalle del kit creado y verificar su disponibilidad operacional basada en el stock real de cada componente.

**- Task Flow 6**: Gestión de Lotes (Batches) y Transferencia de Stock

<p align="center">
  <img src="https://i.imgur.com/AwvA8VH.png"
    alt="task-flow-6"/>
</p>

#### Pasos del Task Flow 6:

1. El administrador ingresa a la sección de inventario
2. El administrador retail selecciona "Agregar un lote"
3. El administrador completa selecciona una suministro y su cantidad de stock
4. El administrador visualiza el nuevo lote en el inventario
5. El administrador selecciona "Transferir lote"
6. El administrador ingresa el lote y la sucursal de origen y de destino
7. El lote se elimina de la sucursal de origen y pasa a visualizarse en la sucursal de destino


**- User Goal 6**: Como administrador, quiero registrar lotes de insumos y transferir stock entre sucursales para optimizar la distribución de recursos y garantizar que el inventario esté siempre actualizado.

<p align="center">
  <img src="https://i.imgur.com/s5OWiSC.png"
    alt="wire-flow-6"/>
</p>

<p align="center">
  <img src="https://i.imgur.com/ty5WeSE.png"
    alt="wire-flow-6"/>
</p>

El administrador entra a la sección de inventario e ingresa un nuevo lote completando su formulario de creación; luego selecciona el lote que desea transferir e indica las sucursales de origen y destino para mover el stock. El flujo permite mantener el inventario actualizado en tiempo real y optimizar la distribución de recursos entre las distintas sucursales.


**- Task Flow 7**: Conciliación de discrepancias de inventario

<p align="center">
  <img src="https://i.imgur.com/MHcvbcM.png"
    alt="task-flow-7"/>
</p>

#### Pasos del Task Flow 7:

1. El administrador ingresa a la sección de discrepancias de inventario
2. El administrador selecciona una discrepancia
3. El administrador resuelve la discrepancia de stock
4. El administrador ya no visualiza la discrepancia resuelta

**- User Goal 7**: Como administrador, quiero revisar, justificar y resolver las discrepancias detectadas entre el stock físico y el stock digital, para mantener la trazabilidad del inventario y tomar acciones correctivas documentadas.

<p align="center">
  <img src="https://i.imgur.com/5YqlQLQ.png"
    alt="wire-flow-7"/>
</p>

El administrador accede a la sección de discrepancias de inventario y selecciona una discrepancia específica para ver su detalle, donde puede revisar las diferencias entre el stock físico y el digital junto a su historial. Desde esa vista, elige la opción de resolver la discrepancia, completa el formulario de justificación con los datos correspondientes y confirma la acción para registrar la corrección.


**- Task Flow 8**: Gestión de dispositivos

<p align="center">
  <img src="https://i.imgur.com/6blSmB0.png"
    alt="task-flow-8"/>
</p>

#### Pasos del Task Flow 8:

1. El administrador ingresa a la sección de dispositivos
2. El administrador selecciona "Agregar dispositivo"
3. El administrador completa el formulario de registro de un dispositivo
4. El administrador visualiza el dispositivo en la sección de dispositivos
5. El administrador selecciona el dispositivo creado
6. El administrador asigna un suministro a ese dispositivo
7. El administrador configura el peso, temperatura y humedad limites que debe validar el dispositivo

**- User Goal 8**: Como administrador, quiero revisar, justificar y resolver las discrepancias detectadas entre el stock físico y el stock digital, para mantener la trazabilidad del inventario y tomar acciones correctivas documentadas.

<p align="center">
  <img src="https://i.imgur.com/2y4W9Ic.png"
    alt="wire-flow-8"/>
</p>

<p align="center">
  <img src="https://i.imgur.com/rMo2n4s.png"
    alt="wire-flow-8"/>
</p>

El administrador ingresa a la sección de dispositivos y registra un nuevo inventario inteligente completando su formulario; una vez creado, accede al detalle del dispositivo para asignarle un insumo del catálogo. Luego completa el formulario de asignación y configura los límites de peso, temperatura y humedad que activarán alertas automáticas, permitiendo así automatizar el seguimiento del stock en tiempo real.


**- Task Flow 9**:

<p align="center">
  <img src="https://i.imgur.com/Y3X9GEn.png"
    alt="task-flow-9"/>
</p>

#### Pasos del Task Flow 9:

1. El administrador ingresa a la configuración de la cuenta
2. El administrador ingresa a la sección de sucursales
3. El administrador selecciona "Agregar sucursal"
4. El administrador completa el formulario de registro de una sucursal
5. Se actualiza la seccion de sucursales con la nueva creada anteriormente

**- User Goal 9**: Como administrador, quiero gestionar las sucursales de mi negocio, para organizar mis operaciones por sede y mantener actualizada la información de cada ubicación.

<p align="center">
  <img src="https://i.imgur.com/gsnzuuh.png"
    alt="wire-flow-9"/>
</p>

<p align="center">
  <img src="https://i.imgur.com/MAcfEL3.png"
    alt="wire-flow-9"/>
</p>

El administrador accede a la configuración de cuenta y navega a la sección de sucursales, donde puede ver las ubicaciones ya registradas. Desde allí selecciona la opción de agregar una nueva sucursal, completa el formulario con nombre, teléfono, dirección y demás datos de la ubicación, y al guardar la nueva sucursal queda visible en el listado para organizar las operaciones por local.


### 5.4.2. Applications Mock-ups
### 5.4.3. Applications User Flow Diagrams

#### User Flow 1: Registro y Onboarding

**User Goal:** Como visitante, quiero registrarme en la plataforma y activar mi suscripción para comenzar a gestionar mi inventario.

##### Happy Path

El visitante accede a la pantalla de Login y hace clic en "Sign up". Es redirigido a la pantalla Register donde ingresa su email, contraseña y confirma la contraseña. Hace clic en "Create Account" y avanza a "How will you use Restock?" donde selecciona su rol (Restaurant Administrator o Retail Administrator). Hace clic en "Continue" y completa el formulario "Create your Account" con nombre, apellido, teléfono, ubicación y avatar. Hace clic en "Next: Business Details" y completa el "Registration - Business Profile" con nombre comercial, descripción, categorías y dirección. Hace clic en "Create Account" y es redirigido a "Subscription Plans" donde selecciona el plan Premium. Hace clic en "Select Plan" y es redirigido al "Payment Gateway" donde ingresa sus datos de tarjeta. El pago es procesado exitosamente y el usuario accede al Dashboard.


![User Flow 1 - Happy Path Web](https://imgur.com/qCOMFK3.png)

![User Flow 1 - Happy Path Mobile](https://imgur.com/32OLoEy.png)


##### Unhappy Path

El visitante intenta registrarse con un correo ya existente o deja campos obligatorios vacíos. El sistema muestra mensajes de error en los campos correspondientes y bloquea el avance hasta que los datos sean corregidos. Si en el Payment Gateway los datos de tarjeta son inválidos, el sistema muestra un aviso de fallo en la transacción y bloquea el pago hasta que el usuario corrija la información.


![User Flow 1 - Unhappy Path Web](https://imgur.com/w0ilFpl.png)

![User Flow 1 - Unhappy Path Mobile](https://imgur.com/unYReLb.png)


#### User Flow 2: Inicio de Sesión y Recuperación de Contraseña

**User Goal:** Como usuario registrado, quiero iniciar sesión con mis credenciales o recuperar mi contraseña en caso de olvidarla, para acceder de forma segura a mi cuenta en Intiva.

##### Happy Path

El usuario accede a la pantalla Login, ingresa su email y contraseña correctos y hace clic en "Login". El sistema valida las credenciales y redirige al Dashboard principal.

![User Flow 2 - Happy Path Web](https://imgur.com/WLtfwZY.png)

![User Flow 2 - Happy Path Mobile](https://imgur.com/qHmQ3YJ.png)


##### Unhappy Path

El usuario ingresa credenciales incorrectas y el sistema muestra el Login con el mensaje "Incorrect credentials. Please try again." El usuario hace clic en "Forgot your password?" y es redirigido a Reset Password donde ingresa su email y hace clic en "Send recovery code". Recibe un código de 6 dígitos en su correo, lo ingresa en la pantalla de verificación y establece una nueva contraseña válida para recuperar el acceso.

![User Flow 2 - Unhappy Path Web](https://imgur.com/lsTwfc3.png)

![User Flow 2 - Unhappy Path Mobile](https://imgur.com/oRD1Bbc.png)



#### User Flow 3: Gestión de Insumos / Custom Supplies

**User Goal:** Como administrador, quiero registrar y gestionar los insumos de mi catálogo para mantener información actualizada y confiable que me permita tomar decisiones operativas sobre el inventario.

##### Happy Path

El administrador navega desde el Dashboard al módulo Inventory y accede a la sección Custom Supplies. Visualiza el catálogo con los insumos existentes. Hace clic en "+ Add Supply", se abre el modal "Create Custom Supply" donde selecciona la categoría, ingresa el nombre del insumo, la unidad de medida, capacidad mínima, máxima y marca si es perecible. Guarda los cambios y el nuevo insumo aparece en el catálogo. Para editar, hace clic en "Edit" sobre un insumo existente, se abre el modal "Edit Custom Supply" con los datos precargados, realiza los cambios y hace clic en "Update Supply".


![User Flow 3 - Happy Path Web](https://imgur.com/b5BxBnj.png)

![User Flow 3 - Happy Path Mobile](https://imgur.com/QtC4zEP.png)


##### Unhappy Path

El administrador deja campos obligatorios vacíos o ingresa valores inválidos en el modal "Create Custom Supply". El sistema bloquea el guardado y muestra mensajes de error en los campos correspondientes hasta que los datos sean corregidos.

![User Flow 3 - Unhappy Path Web](https://imgur.com/5GCD8R1.png)

![User Flow 3 - Unhappy Path Mobile](https://imgur.com/4KDJ6CR.png)


#### User Flow 4: Gestión de Recetas

**User Goal:** Como administrador de restaurante, quiero crear y gestionar recetas vinculando insumos del inventario para controlar el consumo por plato y calcular el costo estimado de preparación.


##### Happy Path

El administrador accede al módulo Recipes desde el sidebar. Visualiza el Recipe Catalog con las recetas activas organizadas en Main Courses, Starters y Beverages. Hace clic en "+ Add Recipe", se abre el modal "Create New Recipe" donde ingresa el nombre, precio estimado y agrega ingredientes desde el inventario con sus cantidades. Hace clic en "Save Recipe" y la receta aparece en el catálogo. Al hacer clic en una receta accede al "Recipe Detail Builder" donde visualiza el costo estimado, precio de venta e ingredientes vinculados. Para editar, hace clic en "Edit Recipe", se abre el modal con los datos precargados, modifica los ingredientes o cantidades y hace clic en "Update Recipe".

![User Flow 4 - Happy Path Web](https://imgur.com/H2U0c80.png)


##### Unhappy Path

El administrador intenta guardar una receta sin ingredientes o con cantidades inválidas. El sistema bloquea el guardado y muestra el mensaje de error correspondiente. Si decide eliminar una receta, aparece el modal "Delete Recipe?" con advertencia de que la acción es permanente. Si confirma haciendo clic en "Yes, delete recipe", la receta es eliminada del catálogo.


![User Flow 4 - Unhappy Path Web](https://imgur.com/Wnwo46O.png)



#### User Flow 5: Gestión de Kits / Combos

**User Goal:** Como administrador retail, quiero configurar kits que agrupen productos individuales para ofrecer combos estandarizados y consultar su disponibilidad operativa según el stock real.

##### Happy Path

El administrador retail accede al módulo Kits desde el sidebar. Visualiza el Kits & Combos Catalog con los combos existentes. Hace clic en "+ Create Kit", se abre el modal "Create New Kit" donde sube una imagen, ingresa el nombre del kit, selecciona los productos desde el inventario con sus cantidades y hace clic en "Add Kit". El kit aparece en el catálogo. Al acceder al detalle del kit visualiza la disponibilidad operativa calculada según el stock de los componentes. Para editar, hace clic en "Edit Kit", modifica los componentes y hace clic en "Update Kit". Desde el módulo Sales, el administrador agrega el kit al Order Ticket, hace clic en "Log Sale & Update Stock" y el sistema registra la venta mostrando el modal "Sale Registered Successfully".


![User Flow 5 - Happy Path Web](https://imgur.com/aLFOxY2.png)



##### Unhappy Path

El administrador intenta registrar una venta con un kit cuyos componentes no tienen stock físico suficiente. El sistema muestra el modal "Action Blocked: Insufficient Physical Inventory" indicando el componente faltante con el stock disponible vs el requerido. El administrador debe hacer clic en "Go to Restock from Stock" para ir al inventario y reponer el componente antes de poder completar la venta.


![User Flow 5 - Unhappy Path Web](https://imgur.com/31DxN7R.png)


#### User Flow 6: Gestión de Lotes (Batches) y Transferencia de Stock

**User Goal:** Como administrador, quiero registrar lotes de insumos y transferir stock entre sucursales para optimizar la distribución de recursos y garantizar que el inventario esté siempre actualizado.


##### Happy Path

El administrador accede al módulo Inventory y visualiza la vista de Batches con la lista de lotes activos, stock total, fechas de vencimiento y alertas. Hace clic en "+ Add Batch", se abre el modal "Add New Batch" donde selecciona el insumo, ingresa el stock inicial y la fecha de vencimiento y hace clic en "Add Batch". Para ver el detalle de un lote hace clic sobre él y se abre el modal "Batch Detail". Para editar hace clic en "Update Batch", modifica los campos en el modal "Edit Batch" y confirma los cambios. Para transferir stock hace clic en "Transfer Batch Stock", se abre el drawer "Stock Transfer" donde selecciona la sucursal origen, destino, el lote y la cantidad, y confirma la transferencia actualizando el stock de ambas sucursales.


![User Flow 6 - Happy Path Web](https://imgur.com/neT8TRY.png)


![User Flow 6 - Happy Path Mobile](https://imgur.com/MXuIxpP.png)


##### Unhappy Path

Si el administrador accede al inventario por primera vez sin insumos registrados, el sistema muestra la pantalla "Empty Inventory" con el mensaje "Your inventory is empty" y la opción de agregar el primer insumo haciendo clic en "+ Add First Supply". Si en el drawer de transferencia ingresa una cantidad mayor al stock disponible del lote, el sistema muestra el indicador en rojo y bloquea la confirmación hasta que se corrija la cantidad.


![User Flow 6 - Unhappy Path Web](https://imgur.com/lb9bjQ8.png)


![User Flow 6 - Unhappy Path Mobile](https://imgur.com/BztsoNr.png)



#### User Flow 7: Conciliación de Discrepancias de Inventario

**User Goal:** Como administrador del negocio, quiero revisar, justificar y resolver las discrepancias detectadas entre el stock físico y el stock digital, para mantener la trazabilidad del inventario y tomar acciones correctivas documentadas.


##### Happy Path

El administrador accede al módulo Inventory y selecciona la sección "Conciliation Tasks". Visualiza la lista de discrepancias activas con su nivel de criticidad. Hace clic en una discrepancia activa para acceder al "Discrepancy Detail" donde visualiza el stock digital, la lectura del smart scale y la gráfica de peso vs tiempo. Selecciona la causa de la discrepancia desde el dropdown, ingresa la justificación y hace clic en "Confirm & Apply Action". El sistema actualiza el inventario digital, cierra la tarea y registra el evento en el "Resolution History".


![User Flow 7 - Happy Path Web](https://imgur.com/Tp0Slyz.png)


##### Unhappy Path

El administrador detecta que el smart scale reporta lecturas inconsistentes y hace clic en "Recalibrate Scale". Se abre el modal "Recalibrate Scale" con las opciones "Force Reset (Stay Calibrated)" o "Schedule On-site Visit Maintenance". Si el dispositivo no responde al reset, el sistema bloquea la confirmación y muestra error de conectividad. El administrador puede registrar la discrepancia como "Unresolved" con comentario o programar visita técnica mediante "Recalibrate & Create Discrepancy".


![User Flow 7 - Unhappy Path Web](https://imgur.com/e0L6mW6.png)

#### User Flow 8: Gestión de Dispositivos (Smart Scales)

**User Goal:** Como administrador, quiero registrar y configurar los dispositivos de monitoreo de inventario en mis sucursales, para automatizar el seguimiento de stock y recibir alertas oportunas según los umbrales definidos.


##### Happy Path

El administrador accede al módulo Devices desde el sidebar. Visualiza el Device Management con el listado de balanzas registradas y su estado (Online / Offline / Critical). Hace clic en "+ Register Device", ingresa la MAC address y el alias en el modal y confirma. El dispositivo aparece en el directorio. Accede al detalle del dispositivo en Scale Configuration, hace clic en "Assign a Start Setup" y completa el modal "Assign Batch to Scale" ingresando el batch, alert weight y unit weight. Guarda la asignación y el dispositivo queda operativo. Desde el Device Detail puede configurar los umbrales haciendo clic en "Edit Alert Thresholds", ingresa los valores de stock, temperatura y humedad y guarda con "Save Thresholds".


![User Flow 8 - Happy Path Web](https://imgur.com/paG0E4U.png)


![User Flow 8 - Happy Path Mobile](https://imgur.com/t3EEdgr.png)



##### Unhappy Path — Desvinculación de dispositivo activo

El administrador decide desvincular un dispositivo activo haciendo clic en "Unlink Scale". El sistema muestra el modal de confirmación advirtiendo que se detendrá el monitoreo del dispositivo. Si cancela, el dispositivo permanece activo. Si confirma, el dispositivo queda desvinculado y sus datos dejan de actualizarse en el sistema.


![User Flow 8 - Unhappy Path A Web](https://imgur.com/HnfS0zq.png)

![User Flow 8 - Unhappy Path A Mobile](https://imgur.com/6oiqopw.png)


#### User Flow 9: Gestión de Sucursales

**User Goal:** Como administrador, quiero gestionar las sucursales de mi negocio, para organizar mis operaciones por sede y mantener actualizada la información de cada ubicación.


##### Happy Path

El administrador accede a Settings, Branch Management desde el sidebar. Visualiza las tarjetas de las sucursales activas con sus métricas de devices, staff y alerts. Hace clic en "+ Add New Branch" y se abre el drawer "Create New Branch" donde sube la foto de la instalación, ingresa el nombre, número de teléfono, dirección, ciudad, zip code y activa el Branch Status. Hace clic en "Save Branch" y la nueva sucursal aparece en el panel. Para editar, hace clic en "Manage Branch" de una sucursal existente, se abre el drawer "Edit Branch" con los datos precargados, realiza los cambios y hace clic en "Update Branch".

![User Flow 9 - Happy Path Web](https://imgur.com/NDLjokQ.png)

![User Flow 9 - Happy Path Mobile](https://imgur.com/YRUpB5y.png)


##### Unhappy Path

El administrador intenta guardar una nueva sucursal dejando campos obligatorios vacíos o con datos inválidos. El sistema bloquea el guardado en el drawer "Create New Branch" y muestra mensajes de error en los campos correspondientes hasta que la información sea corregida y completada.


![User Flow 9 - Unhappy Path Web](https://imgur.com/DHtm8WS.png)

![User Flow 9 - Unhappy Path Mobile](https://imgur.com/7Ge84z7.png)


## 5.5. Applications Prototyping

En esta sección, se evidencian pruebas de uso del prototipo de la aplicación web y móvil. Además, se adjunta un video donde se usa el prototipo y las interacciones con el prototipo se basan en los User Flows descritos previamente.

#### Prototipo de la aplicación web 

<p align="center">
  <img src="https://i.imgur.com/6o0juzg.png">


Video demostrativo de la aplicación web: https://acortar.link/tcLixm


#### Prototipo de la aplicación móvil

<p align="center">
  <img src="https://i.imgur.com/ey1iDmG.png">

Video demostrativo de la aplicación móvil: https://acortar.link/uvTr3x

## 5.6. IoT Device Design
