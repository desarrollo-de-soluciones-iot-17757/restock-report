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

| Nombre          | Hex         | Uso principal                                                                 | Justificación                                                      |
| --------------- | ----------- | ----------------------------------------------------------------------------- | ------------------------------------------------------------------- |
| Verde Esmeralda | `#10B981` | Botones primarios, barras de navegación, estados activos, íconos de acción | Color de marca principal; contraste mínimo 4.5:1 sobre blanco      |
| Verde Profundo  | `#065F46` | Encabezados, textos sobre fondo claro, estados hover en elementos primarios   | Mayor oscuridad para jerarquía tipográfica y contraste AAA        |
| Verde Medio     | `#059669` | Confirmaciones, indicadores de éxito, badges de estado activo                | Variante funcional para señalización positiva del sistema         |
| Verde Claro     | `#6EE7B7` | Fondos de sección destacada, chips informativos, estados seleccionados       | Variante de baja saturación para fondos y contenedores secundarios |
| Verde Menta     | `#D1FAE5` | Fondos sutiles, zonas de descanso visual, tarjetas informativas               | Proporciona respiro visual sin competir con elementos interactivos  |

- **Jerarquía visual:** El tono más oscuro ancla la estructura de navegación, mientras los tonos más claros señalizan niveles de interacción progresivos, reduciendo la carga cognitiva al distinguir zonas estáticas de dinámicas.
- **Consistencia de marca:** Los tres verdes principales comparten la misma temperatura de color, evitando derivaciones que puedan confundir al usuario respecto a la identidad de la plataforma (Wheeler & Meyerson, 2024).
- **Accesibilidad:** Todos los contrastes han sido validados según WCAG 2.1 para asegurar cumplimiento AA/AAA en texto y elementos interactivos, protegiendo a usuarios con deficiencias visuales (World Wide Web Consortium, 2025).

**Color secundario:**

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/HLfGfHZ.png" alt="secondary-color">
</div>

El azul marino oscuro (`#111827`) actúa como color de soporte estructural del sistema. Su alta oscuridad y neutralidad cromática lo convierten en el soporte ideal para textos principales, fondos de paneles laterales y encabezados de sección, generando un contraste sólido con los elementos primarios verdes.

| Nombre          | Hex         | Uso principal                                                       | Justificación                                                         |
| --------------- | ----------- | ------------------------------------------------------------------- | ---------------------------------------------------------------------- |
| Azul Marino     | `#111827` | Textos principales, barras laterales, fondos de modo oscuro         | Contraste superior a 15:1 con blanco; cumple WCAG AAA para tipografía |
| Gris Medianoche | `#1F2937` | Paneles secundarios, encabezados de tabla, fondos de tarjeta oscura | Variante ligeramente más clara para crear profundidad en capas        |
| Gris Acero      | `#374151` | Labels de formularios, bordes de componentes, íconos inactivos     | Tono intermedio que establece límites sin saturar visualmente         |
| Gris Suave      | `#6B7280` | Textos de ayuda contextual, placeholders, metadatos                 | Legibilidad confortable para información de menor jerarquía          |
| Gris Perla      | `#9CA3AF` | Texto desactivado, elementos inactivos                              | Señaliza estados no interactivos manteniendo contraste mínimo 3:1    |

- **Jerarquía visual:** Los tonos secundarios crean la estructura invisible de la interfaz, diferenciando zonas de navegación, contenido y datos sin competir con los elementos primarios.
- **Consistencia:** Todos los tonos comparten la misma temperatura de color fría, garantizando transiciones fluidas entre secciones de la plataforma.
- **Accesibilidad:** Cada token ha sido validado contra WCAG 2.1 para asegurar lectura cómoda y correcta separación de componentes interactivos (World Wide Web Consortium, 2025).

**Color terciario:**

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/pAxpbJl.png" alt="tertiary-color">
</div>

El rojo coral intenso (`#DC2626`) se reserva para comunicar urgencia, errores críticos y alertas de alta prioridad. Su uso estratégico garantiza que el usuario identifique de inmediato situaciones que requieren intervención, como quiebres de stock, discrepancias críticas de inventario o fallas en dispositivos IoT. Este color no debe emplearse de manera decorativa ni en elementos de navegación habitual, ya que su impacto semántico perdería efectividad.

| Nombre       | Hex         | Uso principal                                                    | Justificación                                                                   |
| ------------ | ----------- | ---------------------------------------------------------------- | -------------------------------------------------------------------------------- |
| Rojo Alerta  | `#DC2626` | Alertas críticas, botones de cancelación, indicadores de error | Semántica de peligro universalmente reconocida; contraste AAA con blanco        |
| Rojo Oscuro  | `#991B1B` | Estados hover en alertas, bordes de campos con error             | Variante oscura para estados activos en contextos de alerta                      |
| Rojo Claro   | `#FCA5A5` | Fondos de mensajes de error, chips de alerta                     | Variante suave para contenedores de advertencia sin saturar la vista             |
| Rojo Mínimo | `#FEE2E2` | Fondos de sección con notificación crítica                    | Fondo de alerta de muy baja saturación para no distraer del contenido principal |

- **Jerarquía visual:** El uso restringido del rojo garantiza que su aparición en pantalla sea siempre significativa, evitando la normalización que reduciría su efectividad como señal de alerta.
- **Consistencia:** Los cuatro tonos comparten la misma temperatura cálida, manteniendo una señalización coherente en todos los estados de error y alerta del sistema.
- **Accesibilidad:** Todos los tonos han sido validados contra WCAG 2.1, asegurando contraste suficiente tanto en texto como en elementos no textuales (World Wide Web Consortium, 2025).

**Color neutral:**

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/d5wPnUD.png" alt="neutral-color">
</div>

El blanco grisáceo (`#F4F7F6`) y su familia de neutros constituyen el lienzo sobre el cual se despliegan todos los elementos de la interfaz. Su función es proporcionar descanso visual, mejorar el contraste con los colores funcionales y mantener una sensación de orden y limpieza en las vistas de gestión de inventario.

| Nombre           | Hex         | Uso principal                                                 | Justificación                                                 |
| ---------------- | ----------- | ------------------------------------------------------------- | -------------------------------------------------------------- |
| Blanco Grisáceo | `#F4F7F6` | Fondo general de la aplicación, fondos de página            | Lienzo principal; reduce el contraste agresivo del blanco puro |
| Blanco Puro      | `#FFFFFF` | Tarjetas, modales, paneles flotantes                          | Máximo contraste para contenedores de información crítica   |
| Gris Borde       | `#E5E7EB` | Líneas divisorias, bordes de inputs, separadores de sección | Define límites de componentes sin generar ruido visual        |

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

| Rol      | Familia | Peso          | Tamaño   | Altura de línea | Uso principal                                                                       |
| -------- | ------- | ------------- | --------- | ---------------- | ----------------------------------------------------------------------------------- |
| Headline | Inter   | 500 (Medium)  | 28–36 px | 1.25×           | Títulos de sección, encabezados de página y elementos de alto impacto visual     |
| Body     | Inter   | 400 (Regular) | 14–16 px | 1.5×            | Cuerpo de texto, descripciones, datos de inventario y contenido informativo general |
| Label    | Inter   | 400–500      | 12–13 px | 1.4×            | Etiquetas de componentes, metadatos, campos de formulario y elementos secundarios   |

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

| Token     | Valor | Uso principal                                                                         |
| --------- | ----- | ------------------------------------------------------------------------------------- |
| spacing-1 | 4 px  | Separación mínima entre íconos y etiquetas, espaciado interno de badges y chips    |
| spacing-2 | 8 px  | Separación entre elementos funcionalmente relacionados, padding de botones pequeños |
| spacing-3 | 12 px | Padding vertical de inputs, separación entre campos de formulario                    |
| spacing-4 | 16 px | Padding interno de tarjetas, separación estándar entre componentes de lista         |
| spacing-6 | 24 px | Separación entre secciones dentro de una vista, márgenes de paneles                 |
| spacing-8 | 32 px | Separación entre bloques de contenido independientes, márgenes de página           |

*Directrices de espaciado para elementos de texto en Restock*

| Elemento    | Tamaño   | Altura de línea | Margen inferior |
| ----------- | --------- | ---------------- | --------------- |
| Headline H1 | 36 px     | 44 px (1.22×)   | 32 px           |
| Headline H2 | 28 px     | 36 px (1.28×)   | 24 px           |
| Body        | 16 px     | 24 px (1.5×)    | 16 px           |
| Body small  | 14 px     | 20 px (1.43×)   | 12 px           |
| Label       | 12–13 px | 18 px (1.4×)    | 8 px            |

*Directrices de padding y margen para los componentes principales de Restock*

| Componente                  | Padding interno                        | Margen externo | Gutter |
| --------------------------- | -------------------------------------- | -------------- | ------ |
| Botón primario             | 10 px (vertical) × 20 px (horizontal) | 8 px           | —     |
| Input / Campo de formulario | 10 px (vertical) × 14 px (horizontal) | 12 px          | —     |
| Tarjeta (Card)              | 16 px                                  | 16 px          | 16 px  |
| Navbar / Sidebar            | 20 px                                  | —             | —     |
| Grid de contenido           | —                                     | —             | 16 px  |

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

| Dimensión               | Posición                          | Justificación                                                                                                                                                  |
| ------------------------ | ---------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Divertido / Serio        | Inclinado hacia serio              | La plataforma gestiona operaciones críticas de negocio. La comunicación prioriza claridad y precisión sobre el humor, sin resultar fría ni distante         |
| Formal / Casual          | Punto intermedio, levemente casual | Se evita el lenguaje corporativo excesivo. Las instrucciones son directas y comprensibles para administradores de distintos niveles de experiencia tecnológica |
| Respetuoso / Irreverente | Marcadamente respetuoso            | El lenguaje mantiene en todo momento un tono empático y profesional, reconociendo la exigencia del contexto operativo del usuario                              |
| Entusiasta / Sereno      | Levemente entusiasta               | La plataforma motiva la acción sin generar ansiedad. Los mensajes de alerta son informativos, no alarmistas; las confirmaciones son afirmativas sin exagerar   |

**Principios de comunicación aplicados:**

- **Claro y conciso:** Se emplean oraciones breves y directas, con un máximo de 25–30 palabras en mensajes operativos. Los términos técnicos se introducen únicamente cuando son necesarios, acompañados de una explicación breve en su primer uso.
- **Orientado a la acción:** Los mensajes priorizan la información que permite al usuario resolver tareas o tomar decisiones. Los llamados a la acción son específicos y concretos: "Registrar lote", "Ver discrepancias", "Configurar alerta".
- **Empático y contextual:** El sistema reconoce el impacto de los eventos en la operación del negocio. Una alerta de stock crítico no solo informa, sino que orienta al usuario hacia la acción correcta sin generar alarma innecesaria.
- **Consistente y reconocible:** El estilo de redacción (voz activa, vocabulario operativo, estructura de mensajes) se mantiene uniforme en toda la plataforma, reforzando la identidad de la herramienta.

*Patrones de tono aplicados según el contexto de interacción en Restock*

| Contexto                      | Tono                           | Ejemplo                                                                                                          |
| ----------------------------- | ------------------------------ | ---------------------------------------------------------------------------------------------------------------- |
| Confirmación de acción      | Afirmativo y directo           | "Lote registrado correctamente."                                                                                 |
| Alerta de stock bajo          | Claro y orientado a la acción | "El insumo Harina de trigo ha alcanzado su nivel mínimo. Se recomienda reponer el stock."                       |
| Error del sistema             | Sobrio y tranquilizador        | "No fue posible completar la operación. Verifique su conexión e intente nuevamente."                           |
| Mensaje de bienvenida         | Cercano y profesional          | "Bienvenido a Restock. Comience registrando su primera sucursal."                                                |
| Notificación de discrepancia | Informativo y preciso          | "Se detectó una diferencia entre el stock físico y el registrado en Aceite de oliva. Revise la conciliación." |

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

| Zona     | Posición          | Contenido asignado                                                                                 | Justificación                                                                                                           |
| -------- | ------------------ | -------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------ |
| Punto 1  | Superior izquierda | Logo de Restock y nombre de la sucursal activa                                                     | Ancla la identidad de marca y el contexto operativo del usuario                                                          |
| Punto 2  | Superior derecha   | Ícono de notificaciones, perfil de usuario y acceso rápido a alertas                             | Concentra los controles de mayor frecuencia de uso en sesión activa                                                     |
| Diagonal | Centro             | Contenido principal del dashboard: métricas de stock, widgets de alertas y gráficos de rotación | La zona de mayor densidad informativa aprovecha el tránsito visual natural entre los dos puntos superiores e inferiores |
| Punto 3  | Inferior izquierda | Sidebar de navegación con accesos a módulos: Inventario, Sucursales, Dispositivos, Ventas        | Organiza la navegación secundaria en la zona de llegada natural del primer movimiento diagonal                          |
| Punto 4  | Inferior derecha   | Botón de acción primaria (registro de lote, nueva venta) o resumen de estado del sistema         | Ubica la acción principal en el punto de conclusión del recorrido visual                                               |

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

##### 5.1.2.3.2. Sistema de señalización LED

El LED de señalización incluido en el kit básico de componentes actúa como canal de retroalimentación visual instantánea, complementando la información del display LCD con un indicador de estado perceptible desde mayor distancia y sin necesidad de leer texto.

La codificación semántica del LED replica la lógica cromática de la paleta de Restock: el verde corresponde al color primario de la plataforma, asociado a operación correcta; el rojo corresponde al color terciario, reservado para situaciones que requieren atención inmediata.

**Patrones de señalización por estado:**

| Estado del sistema                           | Color | Comportamiento        |
| -------------------------------------------- | ----- | --------------------- |
| Insumo asignado — stock con valor detectado | Verde | Encendido continuo    |
| Insumo asignado — sin peso detectado        | Rojo  | Parpadeo lento (1 Hz) |
| Dispositivo sin insumo asignado              | —    | LED apagado           |
| Inicialización del sistema (boot)           | Verde | 3 destellos cortos    |

La distinción entre LED encendido en verde de forma continua y parpadeo en rojo permite que el operario identifique desde distancia si el dispositivo está registrando peso correctamente o si el contenedor está vacío o sin lectura válida, sin necesidad de acercarse al display.

##### 5.1.2.3.3. Estándares generales de interacción con la interfaz física

El diseño de la interfaz física del dispositivo IoT de Restock responde a los mismos valores de claridad y empatía con el usuario operativo que definen el tono de comunicación de la plataforma.

**Legibilidad en contextos operativos.** El display LCD 1602A con retroiluminación garantiza legibilidad en entornos con variaciones de iluminación propias de cocinas, almacenes y áreas de exhibición retail. El ángulo de visión recomendado para una lectura cómoda del display es de hasta 45° desde el eje frontal del dispositivo. La posición de montaje de la cabina debe considerar este ángulo para que el display sea legible desde la posición habitual del operario durante la reposición de insumos.

**Vocabulario del display alineado con la plataforma.** Todos los textos del display LCD emplean términos del Ubiquitous Language de Restock: "Stock", "Temp", "Hum". Esta coherencia terminológica garantiza que el operario reconozca los mismos conceptos que emplea en la aplicación web o móvil, reduciendo la carga cognitiva y los errores de interpretación en el campo.

**Retroalimentación inmediata.** Ante la detección de un nuevo peso estable o la recepción de un comando de configuración desde la plataforma, el display actualiza su contenido en menos de 200 ms, garantizando que el operario perciba el estado actual del insumo sin demora perceptible.

**Filtrado de lecturas inestables.** El firmware del ESP32 aplica validación de las lecturas del HX711 antes de actualizar el display o activar cualquier señal LED. Las lecturas que fluctúan por encima de un umbral de variación o que se encuentran fuera del rango físico esperado para la celda de carga se descartan sin modificar la vista mostrada, protegiendo la confianza del operario en los datos presentados por el dispositivo.

**Comportamiento ante pérdida de conectividad WiFi.** Cuando el dispositivo pierde la conexión con el edge local o con la plataforma en la nube, el display continúa mostrando el estado actual del peso medido y el LED mantiene su señalización de estado. Los datos de telemetría generados durante el período sin conectividad se almacenan localmente en el edge para ser enviados al sistema central cuando la conexión se restablezca, garantizando la trazabilidad del inventario sin pérdida de registros.

## 5.2. Information Architecture

En esta sección el equipo de Restock presenta las decisiones y fundamentos relacionados con la organización del contenido dentro de las experiencias web y móvil, incluyendo el Landing Page y las aplicaciones del sistema. El objetivo es garantizar que los usuarios puedan interactuar de manera intuitiva con la plataforma, facilitando el acceso a las funcionalidades, información y recursos necesarios de forma rápida y sencilla. Asimismo, se detallan las decisiones tomadas respecto a los Organization Systems, Labeling Systems, Navigation Systems y Searching Systems, con el propósito de mejorar la experiencia de usuario y optimizar la usabilidad del producto.

### 5.2.1. Organization Systems

Restock utiliza un esquema de organización visual que combina tres tipos principales de ordenamiento: jerárquico, secuencial y categórico. Cada uno responde a una necesidad distinta del usuario y permite presentar la información de forma clara, eficiente y alineada con los roles de las diferentes audiencias.

#### Organización visual jerárquica

En el sistema Restock, la organización jerárquica prioriza visualmente la información crítica capturada por los sensores IoT, como los niveles de stock bajo mínimos y las alertas de productos próximos a vencer. Esta jerarquía visual garantiza que el usuario identifique de inmediato las anomalías en el peso o cantidad de los insumos antes de revisar métricas secundarias, facilitando una toma de decisiones rápida basada en datos en tiempo real.

Representación de la Arquitectura jerárquica:

<p align="center">Organización en el landing page</p>

<img src="assets/images/chapter5/sitemaps/organizacion-landing.png" alt="Landing page - sitemap" height=90%>

Este diagrama representa la jerarquía informativa orientada al usuario externo. Estructura el flujo desde el inicio (propuesta de valor), pasando por los beneficios específicos para restaurantes y retail, hasta culminar en la conversión mediante la visualización de planes de suscripción.

<p align="center">Organización de la aplicación</p>

<img src="assets/images/chapter5/sitemaps/organizacion-front.png" alt="Web App - sitemap" height=90%>

Este esquema detalla la arquitectura interna del software de gestión. La organización jerárquica parte de un Dashboard central (Overview) que ramifica el acceso hacia los módulos operativos clave como el inventario, las recetas (Recipes), los kits, y la gestión de dispositivos IoT.

Casos de aplicación:

- Dashboards donde los indicadores de stock crítico, discrepancias y alertas aparecen en la parte superior o en paneles destacados.
- Vistas de inventario en las que los colores, badges y tipografías jerarquizan el estado de cada insumo.
- Páginas de resumen donde los totales y los mensajes de alerta se distinguen claramente del resto del contenido.

#### Organización secuencial

El sistema también aplica una organización secuencial en procesos operativos que requieren una progresión lógica y una guía paso a paso. Esto es especialmente relevante en flujos de configuración y en tareas donde el orden de las acciones impacta directamente en la precisión del sistema.

Casos de aplicación:

- Vinculación de insumos específicos a sensores de peso, donde el usuario primero selecciona el insumo, luego ajusta el sensor y finalmente confirma la asignación.
- Configuración de umbrales de alerta, que sigue pasos de definición de stock mínimo, stock máximo y reglas de notificación.
- Onboarding de nuevos dispositivos IoT y de nuevas sucursales, donde el proceso se descompone en etapas claras de verificación, configuración y validación.

Al agrupar estos casos bajo el concepto de organización secuencial, se refuerza la idea de que el sistema debe guiar al usuario sin saltos ni confusiones, con instrucciones y estados intermedios visibles en cada paso.

#### Esquemas de categorización de contenido

Para gestionar el volumen de información y facilitar el acceso rápido a los datos relevantes, Restock implementa esquemas de categorización que combinan criterios cronológicos, temáticos y por audiencia.

- Organización cronológica: se utiliza para el historial de telemetría de los sensores, los registros de ventas y el seguimiento de las compras realizadas, presentando siempre los eventos más recientes en primer plano.
- Organización por tópicos: agrupa los insumos según su naturaleza, como lácteos, carnes, abarrotes, o según su estado de almacenamiento (fresco, refrigerado, seco).
- Organización por audiencia: separa las vistas y funciones según los dos perfiles reales del sistema: administradores de restaurantes y usuarios de retail.

Esta categorización por audiencias permite que cada perfil vea información relevante para su rol:

- Administradores de restaurante: vista de recetas, costos, mermas y reabastecimiento.
- Retail: vista de kits y paquetes de insumos, enfocada en pedidos y gestión de surtido.

De esta manera, el sistema organiza la información por su contenido y por el contexto de uso de los dos perfiles reales del producto.

#### Segmentación por roles y audiencias

Además de los criterios anteriores, Restock distingue claramente entre los dos perfiles disponibles en la plataforma. La segmentación por audiencias refuerza que:

- los administradores visualizan herramientas de gestión de mermas, control de stock y análisis de ventas;
- los usuarios de retail tienen acceso a vistas centradas en kits de productos, paquetes y opciones de surtido.

Con este enfoque, cada perfil obtiene una experiencia personalizada según su rol, reduciendo la complejidad y mejorando la eficacia en la toma de decisiones.

### 5.2.2. Labeling Systems

En esta sección se presenta el sistema de etiquetado (labeling system) para la plataforma de Restock. Este sistema prioriza la claridad y la sencillez visual. Usamos términos familiares para que el sistema sea fácil de usar, manteniendo siempre la estética definida en nuestros estándares de diseño.

Se ha priorizado la claridad semántica y la coherencia con el lenguaje visual del producto, especialmente con el tono de comunicación cercano y profesional.

#### A. Landing Page

El etiquetado en el sitio público utiliza un lenguaje persuasivo, directo y coherente con la propuesta de valor de Restock.

- **Secciones de Navegación:**

  - **Inicio:** Sección de bienvenida con la propuesta de valor principal.
  - **Beneficios:** Ventajas segmentadas para restaurantes y tiendas retail.
  - **Testimonios:** Validación social mediante comentarios de usuarios reales.
  - **Preguntas Frecuentes:** Resolución de dudas comunes de forma clara.
- **Botones de llamada a la acción (CTA):**

  - **"Prueba Gratis":** Invita al usuario a iniciar una prueba sin costo inicial.
  - **"Contáctanos":** Facilita el contacto rápido con el equipo de ventas.
  - **"Iniciar Sesión":** Acceso a la plataforma para usuarios registrados.
  - **"Solicitar Demo":** Alternativa para usuarios que prefieren ver la plataforma antes de probarla.

#### B. Aplicación Web

El etiquetado se adapta según el perfil del usuario para optimizar su flujo de trabajo específico:

- **Administradores de Restaurantes:**
  - **Overview:** Monitoreo de métricas críticas y comparación de inventario real vs. esperado.
  - **Inventario:** Gestión de lotes, control de mermas y conciliación de discrepancias.
  - **Recetas:** Registro de platos vinculados a insumos para optimizar compras y consumo.
  - **Ventas:** Control de transacciones, historial de tickets y rendimiento mensual.
  - **Alertas:** Notificaciones sobre stock bajo, fallos de conexión o movimientos manuales.
  - **Dispositivos:** Gestión de salud y estado de conexión de las balanzas IoT.
- **Administradores del Sector Retail:**
  - **Kits:** Esta etiqueta reemplaza a "Recetas" en este perfil, consistiendo en un catálogo de productos combinados para la gestión de ofertas comerciales.

*Nota de consistencia:* El resto de etiquetas (**Overview, Inventario, Ventas, Alertas y Dispositivos**) se mantiene idéntico entre los perfiles para asegurar la estandarización operativa del sistema.

#### C. Aplicación Móvil

Diseñada para la supervisión rápida en movimiento, la app móvil usa etiquetas claras y orientadas a la acción:

- **Overview:** Resumen ejecutivo de las balanzas activas y el estado general del local.
- **Inventory:** Consulta rápida de niveles de stock y estados actuales de los insumos.
- **Alertas:** Centro de notificaciones críticas que requieren atención inmediata.
- **Device:** Monitoreo del estado de conexión y batería de los sensores IoT.
- **Settings:** Configuración de preferencias de usuario y parámetros de la cuenta.

#### D. Etiquetas en Formularios y Botones Operativos

Se definen etiquetas estándar para campos de entrada y acciones frecuentes, con la intención de reducir la carga cognitiva en todas las plataformas.

- **Campos de Formulario:**

  - **"Nombre del Insumo":** Identificador del producto vinculado al sensor.
  - **"Umbral Mínimo (kg)":** Límite para disparar alertas automáticas de reabastecimiento.
  - **"Correo Electrónico":** Entrada para credenciales o contacto.
  - **"Contraseña":** Campo seguro para acceso de usuario.
  - **"Nombre del negocio":** Nombre del restaurante o tienda retail.
  - **"Mensaje":** Texto libre para descripciones o solicitudes.
- **Botones de Acción:**

  - **"Guardar Cambios":** Confirma la edición de configuraciones o perfiles.
  - **"Vincular Dispositivo":** Inicia la sincronización de un nuevo sensor IoT.
  - **"Registrar Salida":** Acción manual para descontar stock fuera del flujo de venta automática.
  - **"Enviar consulta":** Envía un formulario de contacto o solicitud.
  - **"Solicitar demo":** Pide una demostración personalizada del sistema.
  - **"Suscribirme":** Registra el correo para recibir actualizaciones.

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

En Restock, los sistemas de búsqueda se definen de acuerdo con las funcionalidades establecidas en las User Stories del Capítulo 3, especialmente en los flujos de gestión de suministros, recetas, kits, lotes, discrepancias, dispositivos y sucursales. Por ello, la propuesta se centra en mecanismos de búsqueda simples y filtros operativos concretos, evitando funcionalidades avanzadas no contempladas en el alcance del producto.

El objetivo principal es que el usuario encuentre rápidamente registros existentes para ejecutar sus tareas (consultar, editar, resolver o transferir), sin sentirse perdido frente al volumen de información.

#### 5.2.4.1. Medios de ayuda para la búsqueda

Para apoyar al usuario durante la consulta de datos, la interfaz incorpora ayudas directas:

- **Campo de búsqueda visible por módulo:** ubicado en la parte superior de listas o tablas con textos guía como "Buscar insumo", "Buscar lote" o "Buscar sucursal".
- **Filtros básicos de contexto:** controles de selección por estado, sucursal o fecha, según el módulo.
- **Indicador de resultados:** mensaje de apoyo como "Mostrando X resultados" para confirmar que la búsqueda fue aplicada.
- **Acción "Limpiar":** permite quitar el texto y filtros seleccionados para volver al listado completo.
- **Estado sin resultados:** mensaje claro cuando no hay coincidencias, invitando a cambiar el término ingresado o ajustar filtros.

Estas ayudas siguen el tono de comunicación definido en Restock: claro, directo y orientado a la acción.

#### 5.2.4.2. Opciones de búsqueda por aplicación

| Plataforma         | Tipo de búsqueda                                      | Alcance                                                                                                            |
| ------------------ | ------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------ |
| Landing Page       | Navegación por secciones (anclas y menú)             | Permite ubicar contenido informativo (beneficios, funcionalidades, planes, FAQ) sin un motor de búsqueda dedicado |
| Aplicación web    | Búsqueda textual por módulo + filtros básicos       | Permite localizar registros en tablas/listas de trabajo según las tareas de administración                       |
| Aplicación móvil | Búsqueda textual por pantalla + filtros simplificados | Permite consultar los mismos datos clave de la web con interacción táctil                                        |
| Dispositivo IoT    | No aplica búsqueda textual                            | El dispositivo muestra estado operativo y lectura actual en el display, sin flujo de búsqueda manual              |

#### 5.2.4.3. Filtros definidos por módulo (alineados a User Stories)

| Módulo                                        | Búsqueda textual                      | Filtros disponibles                                     |
| ---------------------------------------------- | -------------------------------------- | ------------------------------------------------------- |
| Suministros / Inventario (US-14, US-15, US-19) | Nombre de insumo o producto            | Estado (activo/inactivo), categoría, sucursal          |
| Lotes (Task/User Flow 6)                       | Código o nombre de lote/insumo        | Sucursal, estado del lote, rango de vencimiento         |
| Discrepancias (Task/User Flow 7)               | Insumo o identificador de discrepancia | Estado (pendiente/resuelta), criticidad, rango de fecha |
| Dispositivos (Task/User Flow 8)                | Alias o identificador del dispositivo  | Estado (online/offline), sucursal                       |
| Recetas (Task/User Flow 4)                     | Nombre de receta                       | Categoría de receta, estado (activa/inactiva)          |
| Kits/Combos (Task/User Flow 5)                 | Nombre de kit/combo                    | Estado (activo/inactivo), disponibilidad                |
| Sucursales (Task/User Flow 9)                  | Nombre de sucursal o ubicación        | Estado (activa/inactiva), ciudad                        |

#### 5.2.4.4. Visualización de resultados después de la búsqueda

Después de aplicar búsqueda o filtros, los datos se muestran manteniendo el mismo formato base de cada módulo:

- **Web:** tablas o listas con columnas clave (nombre, estado, sucursal, fecha o stock según el caso).
- **Móvil:** tarjetas o listas resumidas con los datos críticos del registro y acceso al detalle.
- **Consistencia de estado:** siempre se muestra si la búsqueda devolvió resultados, si no hubo coincidencias o si se debe limpiar/ajustar filtros.

Comportamientos esperados:

- **Con resultados:** se visualiza el subconjunto filtrado y el contador de coincidencias.
- **Sin resultados:** se muestra estado vacío con mensaje orientativo.
- **Al limpiar filtros:** se restaura el listado completo del módulo.

#### 5.2.4.5. Criterio de alcance funcional

El sistema de búsqueda propuesto no introduce funcionalidades complejas adicionales (por ejemplo, búsqueda semántica, recomendaciones inteligentes o consultas predictivas), ya que no forman parte de los requerimientos funcionales priorizados en el Capítulo 3. De esta manera, la sección se mantiene consistente con el backlog del producto y con los flujos de uso definidos para la versión actual de Restock.

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

En esta sección se detalla el diseño de la interfaz de usuario para la Landing Page del proyecto Restock. El objetivo de este diseño es establecer una primera interacción efectiva con los potenciales clientes, comunicando de manera clara la propuesta de valor de la plataforma y facilitando la conversión mediante una arquitectura orientada al usuario.

### 5.3.1. Landing Page Wireframe

Se presentan los esquemas de baja fidelidad que definen la estructura base de la Landing Page. Estos wireframes se centran en la disposición de los bloques de contenido, la jerarquía de la información y la ubicación de los llamados a la acción (CTA), asegurando que la navegación sea intuitiva antes de integrar elementos estéticos definitivos.

**Sección Principal**

**Descripción:** Disposición estructural inicial con menú de navegación superior, área central para propuesta de valor y esquema de previsualización del dashboard.

<div align="center">
  <img src="./assets/images/chapter5/lp_wireframes/Landing Page Wireframe - Hero - 01.png" alt="Disposición estructural inicial con menú de navegación superior, área central para propuesta de valor y esquema de previsualización del dashboard." height="400">
</div>

**Sobre Nosotros**

**Descripción:** Layout de tres columnas diseñado para presentar los pilares del servicio, utilizando contenedores para íconos representativos y bloques de texto jerarquizados.

<div align="center">
  <img src="./assets/images/chapter5/lp_wireframes/Landing Page Wireframe - About Us - 02.png" alt="Layout de tres columnas diseñado para presentar los pilares del servicio, utilizando contenedores para íconos representativos y bloques de texto jerarquizados." height="400">
</div>

**Conoce al Equipo**

**Descripción:** Estructura de contenido dividida en un contenedor multimedia superior y una grilla inferior de avatares circulares para presentar a los miembros del proyecto.

<div align="center">
  <img src="./assets/images/chapter5/lp_wireframes/Landing Page Wireframe - Meet the Team - 03.png" alt="Estructura de contenido dividida en un contenedor multimedia superior y una grilla inferior de avatares circulares para presentar a los miembros del proyecto." height="400">
</div>

**Visión General de la Plataforma**

**Descripción:** Arquitectura de información asimétrica con contenedor gráfico principal, lista de características y una cuadrícula inferior para detallar funciones de las básculas.

<div align="center">
  <img src="./assets/images/chapter5/lp_wireframes/Landing Page Wireframe - Platform Overview - 04.png" alt="Arquitectura de información asimétrica con contenedor gráfico principal, lista de características y una cuadrícula inferior para detallar funciones de las básculas." height="400">
</div>

**Beneficios del Sistema**

**Descripción:** Grilla estructurada de múltiples tarjetas para enumerar las ventajas operativas, manteniendo un esquema de título, espacio para ícono y descripción breve.

<div align="center">
  <img src="./assets/images/chapter5/lp_wireframes/Landing Page Wireframe - Benefits - 05.png" alt="Grilla estructurada de múltiples tarjetas para enumerar las ventajas operativas, manteniendo un esquema de título, espacio para ícono y descripción breve." height="400">
</div>

**Testimonios y Preguntas Frecuentes**

**Descripción:** Disposición mixta que incluye tarjetas de reseñas de clientes en la sección superior y un componente de tipo acordeón para organizar consultas técnicas comunes.

<div align="center">
  <img src="./assets/images/chapter5/lp_wireframes/Landing Page Wireframe - Testimonials And Common Questions - 06.png" alt="Disposición mixta que incluye tarjetas de reseñas de clientes en la sección superior y un componente de tipo acordeón para organizar consultas técnicas comunes." height="400">
</div>

**Cómo Funciona**

**Descripción:** Esquema de flujo funcional que ilustra la implementación del monitoreo de inventario mediante una línea de tiempo secuencial y gráfica de plataforma superior.

<div align="center">
  <img src="./assets/images/chapter5/lp_wireframes/Landing Page Wireframe - How Works - 07.png" alt="Esquema de flujo funcional que ilustra la implementación del monitoreo de inventario mediante una línea de tiempo secuencial y gráfica de plataforma superior." height="400">
</div>

**Planes de Suscripción**

**Descripción:** Estructura comparativa de tres columnas para los modelos de precios, destacando visualmente la opción central mediante variaciones de tamaño en el contenedor.

<div align="center">
  <img src="./assets/images/chapter5/lp_wireframes/Landing Page Wireframe - Plans - 08.png" alt="Estructura comparativa de tres columnas para los modelos de precios, destacando visualmente la opción central mediante variaciones de tamaño en el contenedor." height="400">
</div>

**Llamado a la Acción**

**Descripción:** Sección orientada a la conversión con disposición minimalista, priorizando elementos interactivos centrales (botones) y espacios reservados para logotipos corporativos.

<div align="center">
  <img src="./assets/images/chapter5/lp_wireframes/Landing Page Wireframe - CTA - 09.png" alt="Sección orientada a la conversión con disposición minimalista, priorizando elementos interactivos centrales (botones) y espacios reservados para logotipos corporativos." height="400">
</div>

**Aplicación Móvil y Pie de Página**

**Descripción:** Esquema promocional de la versión móvil acompañado de un wireframe de dispositivo, finalizando con un layout de cuatro columnas para la navegación de pie de página.

<div align="center">
  <img src="./assets/images/chapter5/lp_wireframes/Landing Page Wireframe - Mobile App and Footer - 10.png" alt="Esquema promocional de la versión móvil acompañado de un wireframe de dispositivo, finalizando con un layout de cuatro columnas para la navegación de pie de página." height="400">
</div>

### 5.3.2. Landing Page Mock-up

Esta sección muestra el diseño de alta fidelidad de la Landing Page, donde se aplica la identidad visual de Restock. En este nivel de diseño se integran la paleta de colores corporativa, la tipografía final y los recursos gráficos detallados, proporcionando la representación visual exacta de la interfaz tal como será percibida por el usuario final.

**Sección Principal**

**Descripción:** Interfaz de alta fidelidad con la paleta de colores corporativa (negro y verde neón), destacando la propuesta de valor y una previsualización realista del dashboard.

<div align="center">
  <img src="./assets/images/chapter5/lp_mockups/Landing Page Mockup - Hero - 01.png" alt="Interfaz de alta fidelidad con la paleta de colores corporativa (negro y verde neón), destacando la propuesta de valor y una previsualización realista del dashboard." height="400">
</div>

**Sobre Nosotros**

**Descripción:** Diseño final de tres columnas con tipografía corporativa y bordes estilizados en verde, presentando la misión, visión y propuesta de valor de la plataforma.

<div align="center">
  <img src="./assets/images/chapter5/lp_mockups/Landing Page Mockup - About Us - 02.png" alt="Diseño final de tres columnas con tipografía corporativa y bordes estilizados en verde, presentando la misión, visión y propuesta de valor de la plataforma." height="400">
</div>

**Conoce al Equipo**

**Descripción:** Sección renderizada con fotografías reales del equipo de desarrollo, empleando avatares circulares con acentos visuales y jerarquía tipográfica clara para los roles y un video del equipo.

<div align="center">
  <img src="./assets/images/chapter5/lp_mockups/Landing Page Mockup - Meet the Team - 03.png" alt="Sección renderizada con fotografías reales del equipo de desarrollo, empleando avatares circulares con acentos visuales y jerarquía tipográfica clara para los roles." height="400">
</div>

**Visión General de la Plataforma**

**Descripción:** Composición visual que integra capturas reales de la interfaz del sistema junto con tarjetas descriptivas de los sensores, aplicando iconografía personalizada.

<div align="center">
  <img src="./assets/images/chapter5/lp_mockups/Landing Page Mockup - Platform Overview - 04.png" alt="Composición visual que integra capturas reales de la interfaz del sistema junto con tarjetas descriptivas de los sensores, aplicando iconografía personalizada." height="400">
</div>

**Beneficios del Sistema**

**Descripción:** Grilla de tarjetas en modo oscuro con iconografía minimalista en verde corporativo, detallando ventajas específicas para restaurantes y tiendas minoristas.

<div align="center">
  <img src="./assets/images/chapter5/lp_mockups/Landing Page Mockup - Benefits - 05.png" alt="Grilla de tarjetas en modo oscuro con iconografía minimalista en verde corporativo, detallando ventajas específicas para restaurantes y tiendas minoristas." height="400">
</div>

**Testimonios y Preguntas Frecuentes**

**Descripción:** Interfaz pulida con reseñas de usuarios destacadas mediante sombras suaves y un componente de acordeón interactivo para resolver consultas operativas.

<div align="center">
  <img src="./assets/images/chapter5/lp_mockups/Landing Page Mockup - Testimonials And Common Questions - 06.png" alt="Interfaz pulida con reseñas de usuarios destacadas mediante sombras suaves y un componente de acordeón interactivo para resolver consultas operativas." height="400">
</div>

**Cómo Funciona**

**Descripción:** Línea de tiempo visual interactiva con efecto de resplandor neón, mostrando los tres pasos fundamentales para implementar el sistema mediante gráficos de alta calidad y un video tutorial.

<div align="center">
  <img src="./assets/images/chapter5/lp_mockups/Landing Page Mockup - How Works - 07.png" alt="Línea de tiempo visual interactiva con efecto de resplandor neón, mostrando los tres pasos fundamentales para implementar el sistema mediante gráficos de alta calidad." height="400">
</div>

**Planes de Suscripción**

**Descripción:** Tablas de precios de alta fidelidad que utilizan jerarquía visual y acentos de color para resaltar el plan Premium, integrando botones de acción claros.

<div align="center">
  <img src="./assets/images/chapter5/lp_mockups/Landing Page Mockup - Plans - 08.png" alt="Tablas de precios de alta fidelidad que utilizan jerarquía visual y acentos de color para resaltar el plan Premium, integrando botones de acción claros." height="400">
</div>

**Llamado a la Acción**

**Descripción:** Diseño minimalista de cierre orientado a la conversión, empleando el contraste del fondo oscuro con botones brillantes en verde para incentivar el registro.

<div align="center">
  <img src="./assets/images/chapter5/lp_mockups/Landing Page Mockup - CTA - 09.png" alt="Diseño minimalista de cierre orientado a la conversión, empleando el contraste del fondo oscuro con botones brillantes en verde para incentivar el registro." height="400">
</div>

**Aplicación Móvil y Pie de Página**

**Descripción:** Presentación visual de la interfaz móvil en perspectiva isométrica, acompañada de insignias de tiendas de aplicaciones y un pie de página corporativo estructurado.

<div align="center">
  <img src="./assets/images/chapter5/lp_mockups/Landing Page Mockup - Mobile App and Footer - 10.png" alt="Presentación visual de la interfaz móvil en perspectiva isométrica, acompañada de insignias de tiendas de aplicaciones y un pie de página corporativo estructurado." height="400">
</div>

## 5.4. Applications UX/UI Design

Esta sección detalla el diseño de las interfaces operativas de la plataforma Restock, abarcando tanto la aplicación web de gestión como la aplicación móvil de monitoreo. El diseño UX/UI se ha centrado en la eficiencia operativa, buscando que el flujo de información entre las básculas inteligentes y el usuario final sea directo, minimizando errores en la interpretación de datos de inventario.

### 5.4.1. Applications Wireframes

Se presentan los esquemas estructurales de las aplicaciones, los cuales definen la lógica de navegación y la distribución de los componentes funcionales. Estos wireframes de media fidelidad sirven para validar la usabilidad del sistema, permitiendo organizar los módulos de visualización de peso, alertas de temperatura y gestión de reportes de manera coherente, antes de proceder con la implementación de estilos visuales.

### Web Application

En esta sección se presentan los wireframes de la aplicación, los cuales consisten en esquemas de baja y media fidelidad que definen la arquitectura de la información y la disposición estructural de los elementos clave. Estos diagramas establecen la jerarquía visual y el flujo de navegación de la solución sin elementos distractores de diseño, sirviendo como la base técnica sobre la cual se desarrollaron posteriormente los mockups de alta fidelidad.

**Vista inicial de registro**

**Descripción:** Esquema estructural de la interfaz de registro para nuevos usuarios que define la disposición de campos de credenciales básicas bajo la identidad visual de la plataforma.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-01.png" alt="Esquema estructural de registro para nuevos usuarios con campos de correo y contraseña" height="400">
</div>

**Estado de error en inicio de sesión**

**Descripción:** Esquema de la pantalla de autenticación que representa la disposición de elementos de validación negativa ante el ingreso de credenciales incorrectas.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-02.1.png" alt="Esquema de validación negativa ante el ingreso de credenciales incorrectas" height="400">
</div>

**Vista estándar de inicio de sesión**

**Descripción:** Esquema del formulario de acceso convencional que define la estructura de opciones para inicio de sesión empresarial (SSO) y recuperación de cuenta.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-02.png" alt="Esquema de formulario de acceso convencional con integración de SSO empresarial" height="400">
</div>

**Bienvenida de usuario recurrente**

**Descripción:** Esquema de la pantalla de acceso optimizada para usuarios con cuentas existentes, definiendo la jerarquía de elementos para simplificar el ingreso al panel de control.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-03.png" alt="Esquema de pantalla de acceso optimizada para usuarios con cuentas existentes" height="400">
</div>

**Solicitud de restablecimiento de contraseña**

**Descripción:** Esquema del módulo de seguridad para la recuperación de acceso, representando la disposición estructural del flujo de envío de código al correo institucional.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-04.png" alt="Esquema del módulo de seguridad para la recuperación de acceso vía correo electrónico" height="400">
</div>

**Verificación de código de seguridad**

**Descripción:** Esquema de la interfaz de validación de identidad con la distribución estructural de campos segmentados para la introducción del código numérico de seis dígitos.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-05.png" alt="Esquema de interfaz de validación de identidad con campos para código numérico" height="400">
</div>

**Creación de nueva contraseña**

**Descripción:** Esquema del formulario final para el establecimiento de nuevas credenciales de acceso, representando la estructura de validación doble de seguridad.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-06.png" alt="Esquema del formulario para el establecimiento de nuevas credenciales de acceso" height="400">
</div>

**Selección de entorno operativo**

**Descripción:** Esquema de la pantalla de segmentación operativa que define la disposición de elementos para que el usuario elija el tipo de industria y personalice los sensores de medición.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-07.png" alt="Esquema de pantalla de segmentación operativa según el tipo de industria" height="400">
</div>

**Detalles de perfil personal**

**Descripción:** Esquema estructural de la pantalla de recopilación de metadatos del administrador y datos de ubicación para la configuración regional de los dispositivos de pesado.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-08.png" alt="Esquema de recopilación de metadatos del administrador y datos de ubicación" height="400">
</div>

**Información de perfil empresarial**

**Descripción:** Esquema del formulario de registro detallado de la organización y categorías de inventario para el despliegue del sistema de monitoreo en tiempo real.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-09.png" alt="Esquema de registro detallado de la organización y categorías de inventario" height="400">
</div>

**Comparativa de planes de suscripción**

**Descripción:** Esquema estructural de la visualización de niveles de servicio y beneficios comerciales adaptados a la escala de la operación logística del cliente.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-10.png" alt="Esquema de visualización de niveles de servicio y beneficios comerciales" height="400">
</div>

**Pasarela de pago y suscripción**

**Descripción:** Esquema de la interfaz de checkout que define la disposición del resumen de costos, impuestos aplicables y formulario de pago encriptado.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-11.png" alt="Esquema de interfaz de checkout con resumen de costos e impuestos" height="400">
</div>

**Inventory batches overview**

**Descripción:** Esquema de la vista principal de la tabla de lotes activos con la disposición estructural de indicadores de productos próximos a expirar y niveles de stock por categoría.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-12.png" alt="Esquema de la vista principal de lotes activos e indicadores de expiración" height="400">
</div>

**Custom supplies catalog**

**Descripción:** Esquema de la galería visual de la lista maestra de suministros, representando la estructura de elementos para edición y auditoría de artículos perecederos.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-13.png" alt="Esquema de la galería de la lista maestra de suministros de la organización" height="400">
</div>

**Create custom supply modal**

**Descripción:** Esquema del formulario flotante para la creación de nuevos ítems, definiendo la estructura de campos para unidades de medida, capacidades mínimas y alertas de perecederos.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-14.png" alt="Esquema del formulario flotante para la creación de nuevos suministros" height="400">
</div>

**Edit custom supply modal**

**Descripción:** Esquema de la interfaz de edición de atributos para suministros existentes, representando la disposición de campos para descripción técnica y umbrales de capacidad.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-15.png" alt="Esquema de la interfaz de edición de atributos para suministros existentes" height="400">
</div>

**Batch details view**

**Descripción:** Esquema del modal informativo que define la disposición de elementos para mostrar el stock actual, fecha de expiración y unidad de medida de un lote específico.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-16.png" alt="Esquema del modal informativo de stock y expiración de un lote específico" height="400">
</div>

**Add new batch modal**

**Descripción:** Esquema del formulario para el ingreso de nuevos lotes al sistema, representando la estructura de vinculación de suministros con su stock inicial y fecha de caducidad.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-17.png" alt="Esquema del formulario para el ingreso de nuevos lotes al sistema" height="400">
</div>

**Edit existing batch modal**

**Descripción:** Esquema de la ventana de diálogo para la actualización de datos operativos en lotes activos, representando los campos de correcciones de stock y ajustes de expiración.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-18.png" alt="Esquema de la ventana de diálogo para la actualización de datos en lotes activos" height="400">
</div>

**Inter branch transfer sidebar**

**Descripción:** Esquema del panel lateral para la gestión de logística interna, definiendo la disposición estructural de elementos para el traslado de stock entre sucursales con vista previa de criticidad.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-19.png" alt="Esquema del panel lateral para la gestión de transferencia de stock entre sucursales" height="400">
</div>

**Empty inventory state**

**Descripción:** Esquema de la pantalla de estado vacío que define la disposición de elementos orientativos para iniciar el rastreo de telemetría mediante la creación del primer suministro.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-20.png" alt="Esquema de pantalla de estado vacío con guía para inicio de telemetría" height="400">
</div>

**Catálogo general de recetas**

**Descripción:** Esquema del panel principal que representa la disposición estructural de la galería de platos con indicadores de fluctuación de costos, alertas de inventario bajo y estado de actividad.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-21.png" alt="Esquema del panel principal con galería de platos e indicadores de costos y alertas" height="400">
</div>

**Detalle de costo de receta**

**Descripción:** Esquema del desglose técnico de ingredientes vinculados, representando la estructura de campos para peso exacto, costo unitario y costo total estimado por ración.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-22.png" alt="Esquema del desglose técnico de ingredientes y costos por ración de servicio" height="400">
</div>

**Modal de creación de nueva receta**

**Descripción:** Esquema de la interfaz de construcción de recetas que define la disposición de zonas para carga de imágenes y ensamblado de ingredientes mediante un buscador dinámico de suministros.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-23.png" alt="Esquema de la interfaz de construcción de recetas con buscador dinámico de suministros" height="400">
</div>

**Modal de edición de receta**

**Descripción:** Esquema de la ventana de ajuste para recetas existentes, representando la estructura de campos para actualizar cantidades y recalcular el precio total estimado de producción.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-24.png" alt="Esquema de la ventana de ajuste para cantidades y recalculo de costos de producción" height="400">
</div>

**Confirmación de eliminación de receta**

**Descripción:** Esquema del diálogo de seguridad de alta criticidad que define la disposición de elementos para evitar el borrado accidental de fórmulas de producción y datos de costos históricos.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-25.png" alt="Esquema del diálogo de seguridad para confirmación de borrado de recetas" height="400">
</div>

**Resumen general de ventas**

**Descripción:** Esquema del panel de control de ventas que representa la disposición estructural de métricas de ingresos mensuales, conteo de transacciones y estado operativo de las terminales activas.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-26.png" alt="Esquema del panel de control de ventas con métricas de ingresos y estado de terminales" height="400">
</div>

**Detalle de transaccion registrada**

**Descripción:** Esquema del desglose de una transacción específica, representando la disposición de campos para artículos vendidos y el registro de deducción automática de insumos en las básculas.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-27.png" alt="Esquema del desglose de transacción con registro de deducción automática de insumos" height="400">
</div>

**Terminal de punto de venta**

**Descripción:** Esquema de la interfaz de usuario para la toma de pedidos, definiendo la disposición estructural del menú de platos y el ticket de orden con cálculo de impuestos en tiempo real.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-28.png" alt="Esquema de la terminal de punto de venta con menú y ticket de orden" height="400">
</div>

**Confirmacion de venta exitosa**

**Descripción:** Esquema del mensaje de confirmación tras procesar una venta, representando la estructura del aviso de actualización automática de los componentes del inventario en el sistema.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-29.png" alt="Esquema del mensaje de confirmación de venta y actualización automática de inventario" height="400">
</div>

**Estado de alerta por inventario critico**

**Descripción:** Esquema del indicador visual en la terminal de ventas que define la disposición de elementos para resaltar artículos con stock insuficiente para cumplir con una ración completa.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-30.png" alt="Esquema del indicador visual de artículos con stock insuficiente en la terminal de ventas" height="400">
</div>

**Bloqueo por inventario insuficiente**

**Descripción:** Esquema de la alerta de sistema de alta prioridad que representa la disposición estructural del bloqueo de transacción por falta de insumos físicos detectada por los sensores.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-31.png" alt="Esquema de alerta de sistema que bloquea transacciones por falta de insumos físicos" height="400">
</div>

**General telemetry dashboard**

**Descripción:** Esquema del panel de supervisión integral que define la disposición estructural de elementos para el estado de conexión de las básculas, métricas de red y el registro de discrepancias detectadas.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-32.png" alt="Esquema del panel de supervisión con métricas de red y registro de discrepancias de peso y temperatura" height="400">
</div>

**Catalogo de kits y combos**

**Descripción:** Esquema del panel principal que representa la disposición estructural de combinaciones de productos para retail con indicadores de kits activos y alertas de stock bajo.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-33.png" alt="Esquema del panel principal de combinaciones de productos para retail y alertas de stock" height="400">
</div>

**Detalle de kit artesanal**

**Descripción:** Esquema de la vista detallada de un kit específico, representando la disposición de campos para demanda semanal, disponibilidad de venta y la lista de ingredientes incluidos.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-34.png" alt="Esquema de la vista detallada de kit con demanda semanal e ingredientes incluidos" height="400">
</div>

**Modal de creacion de nuevo kit**

**Descripción:** Esquema de la interfaz de configuración para nuevos paquetes de productos, definiendo la estructura de campos para establecer precios sugeridos basados en el costo de los componentes.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-35.png" alt="Esquema de la interfaz de configuración para nuevos paquetes de productos y precios sugeridos" height="400">
</div>

**Modal de edicion de kit**

**Descripción:** Esquema de la ventana de ajuste para la configuración de componentes de un kit, representando su vinculación estructural al monitoreo activo de dispositivos de pesado.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-36.png" alt="Esquema de la ventana de ajuste de componentes de kit vinculada a dispositivos de pesado" height="400">
</div>

**Confirmacion de eliminacion de kit**

**Descripción:** Esquema del diálogo de advertencia para la eliminación de kits del catálogo, definiendo la disposición de elementos que especifican que los productos individuales permanecerán en el inventario.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-37.png" alt="Esquema del diálogo de advertencia para la eliminación de kits del catálogo" height="400">
</div>

**Resumen de ventas retail**

**Descripción:** Esquema del dashboard analítico que representa la disposición estructural de elementos para el total de ventas, tasa de errores de sincronización y el historial de transacciones procesadas.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-38.png" alt="Esquema del dashboard analítico de ventas con métricas y registro histórico de transacciones" height="400">
</div>

**Detalle de transaccion retail**

**Descripción:** Esquema del desglose lateral de una venta específica, representando la estructura del panel que confirma la deducción automática de unidades desde las básculas asignadas a cada producto.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-39.png" alt="Esquema del desglose de venta retail con confirmación de deducción automática por sensores" height="400">
</div>

**Terminal de punto de venta retail**

**Descripción:** Esquema de la interfaz de selección de kits y productos para el segmento retail, definiendo la disposición de elementos para la actualización dinámica del ticket de compra y subtotal.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-40.png" alt="Esquema de la interfaz de punto de venta para selección de productos y gestión de ticket" height="400">
</div>

**Confirmacion de venta retail exitosa**

**Descripción:** Esquema de la notificación modal de éxito tras el registro de la venta, representando la estructura del aviso de descuento correcto de los componentes del inventario.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-41.png" alt="Esquema de la notificación de registro de venta exitosa y descuento de inventario" height="400">
</div>

**Alerta de stock insuficiente en retail**

**Descripción:** Esquema del indicador visual de advertencia en la terminal de venta, representando la disposición estructural de elementos que resaltan productos con disponibilidad nula según los sensores de peso.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-42.png" alt="Esquema del indicador visual de advertencia por stock agotado en terminal retail" height="400">
</div>

**Bloqueo por falta de componentes retail**

**Descripción:** Esquema de la interfaz de error que define la disposición de elementos que impiden finalizar la transacción cuando el peso detectado no cumple con el mínimo requerido para el producto.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-43.png" alt="Esquema de bloqueo de transacción por falta de componentes físicos detectada" height="400">
</div>

**Conciliation tasks overview**

**Descripción:** Esquema del panel principal de tareas pendientes que representa la disposición estructural de la lista de discrepancias activas detectadas por los sensores para iniciar investigaciones inmediatas.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-44.png" alt="Esquema del panel de tareas pendientes con lista de discrepancias activas para investigación" height="400">
</div>

**Discrepancy technical detail**

**Descripción:** Esquema de la vista profunda de una anomalía, representando la disposición estructural de la comparación entre registro digital y lectura física, con telemetría del dispositivo y gráficos temporales.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-45.png" alt="Esquema de la vista detallada de anomalía con comparación de pesos y telemetría del dispositivo" height="400">
</div>

**Discrepancy resolution modal**

**Descripción:** Esquema de la interfaz para justificar diferencias de stock, definiendo la disposición de campos para asignar causas como mermas o desperdicios y adjuntar evidencia para auditoría.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-46.png" alt="Esquema de la interfaz para justificación de diferencias de stock y asignación de causas" height="400">
</div>

**Scale recalibration modal**

**Descripción:** Esquema del módulo de mantenimiento preventivo que representa la disposición estructural de opciones para forzar el reinicio de tara o programar visitas técnicas ante errores en los sensores físicos.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-47.png" alt="Esquema del módulo de mantenimiento para recalibración de sensores y programación técnica" height="400">
</div>

**Resolution history logs**

**Descripción:** Esquema del registro histórico de discrepancias resueltas, representando la disposición estructural de la analítica sobre motivos principales de desviación y el desempeño del inventario.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-48.png" alt="Esquema del registro histórico de resoluciones con analítica de motivos de desviación" height="400">
</div>

**Directorio de dispositivos activos**

**Descripción:** Esquema del panel central de administración de hardware que define la disposición estructural de elementos para el estado de red, salud de sensores y dirección MAC de las básculas en línea.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-49.png" alt="Esquema del panel central de administración de hardware y estado de salud de sensores" height="400">
</div>

**Modal de registro de dispositivo**

**Descripción:** Esquema de la interfaz para el alta de nuevas unidades, representando la disposición de campos para la introducción de la dirección MAC física y la asignación de un alias identificador.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-50.png" alt="Esquema de la interfaz para el alta de nuevas unidades mediante dirección MAC y alias" height="400">
</div>

**Configuracion de dispositivo pendiente**

**Descripción:** Esquema de la vista de espera para hardware recién registrado, representando la disposición estructural de alertas bloqueadas hasta que se asigne un lote de insumos específico.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-51.png" alt="Esquema de la vista de configuración bloqueada para dispositivos sin lote asignado" height="400">
</div>

**Modal de asignacion de lote**

**Descripción:** Esquema del formulario de calibración inicial que representa la disposición de campos para definir el peso unitario y la tara al establecer el punto de referencia cero en la báscula.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-52.png" alt="Esquema del formulario de calibración inicial y establecimiento de punto cero en báscula" height="400">
</div>

**Modal de edicion de informacion del dispositivo**

**Descripción:** Esquema de la ventana de actualización para modificar metadatos técnicos, representando la disposición estructural de campos para asegurar la correcta jerarquía en el mapa de calor del inventario.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-53.png" alt="Esquema de la ventana de actualización de metadatos técnicos y alias de dispositivo" height="400">
</div>

**Modal de edicion de umbrales de alerta**

**Descripción:** Esquema del panel de configuración de límites críticos que representa la disposición de campos para el control de stock y variables ambientales de temperatura y humedad permitidas.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-54.png" alt="Esquema del panel de configuración de límites de stock y variables ambientales" height="400">
</div>

**Detalle de configuracion de dispositivo online**

**Descripción:** Esquema de la vista integral de telemetría en tiempo real que define la disposición estructural de indicadores de fuerza de señal inalámbrica y estado operativo del hardware configurado.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-55.png" alt="Esquema de la vista integral de telemetría y estado operativo de hardware en línea" height="400">
</div>

**Confirmacion de desvinculacion de dispositivo**

**Descripción:** Esquema del diálogo de seguridad para la desconexión de hardware, representando la disposición de elementos de advertencia sobre el cese del monitoreo en tiempo real de los insumos asociados.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-56.png" alt="Esquema del diálogo de seguridad para desvinculación de hardware y cese de monitoreo" height="400">
</div>

**Lista general de alertas y notificaciones**

**Descripción:** Esquema del panel principal que representa la disposición estructural de avisos sobre desajustes de datos, fallos de conexión en terminales y transferencias de stock pendientes.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-57.png" alt="Esquema del panel principal de notificaciones del sistema con filtros por categoría de alerta" height="400">
</div>

**Confirmacion de transferencia de stock manual**

**Descripción:** Esquema de la interfaz para validar extracciones físicas detectadas por las básculas, representando la disposición de campos para sincronizar la reducción de unidades con el inventario digital.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-58.png" alt="Esquema de la interfaz de validación para sincronización de extracciones físicas de stock" height="400">
</div>

**Alerta de discrepancia por desajuste de datos**

**Descripción:** Esquema del modal de advertencia crítica que define la disposición de elementos para mostrar la brecha entre el registro digital y la lectura física de los sensores en tiempo real.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-59.png" alt="Esquema de la advertencia crítica de discrepancia entre registros digitales y lecturas de sensores" height="400">
</div>

**Notificacion de perdida de conexion en hardware**

**Descripción:** Esquema de la alerta de tiempo de espera agotado en la comunicación con el hub de básculas, representando la disposición del último registro de telemetría capturado.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-60.png" alt="Esquema de la notificación de fallo de comunicación con el hardware de pesado" height="400">
</div>

**Panel de incidentes criticos del sistema**

**Descripción:** Esquema de la vista de alta urgencia que define la disposición estructural de agrupación de eventos de impacto sistémico como fallos en gateways o brechas de temperatura en almacenamiento frío.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-61.png" alt="Esquema del dashboard de incidentes críticos con tiempos de respuesta y registros de eventos" height="400">
</div>

**Detalle lateral de alerta por brecha de temperatura**

**Descripción:** Esquema del desglose lateral de incidentes térmicos, representando la disposición estructural de elementos para identificar lotes perecederos en riesgo y el despacho inmediato de mantenimiento.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-62.png" alt="Esquema del panel lateral de gestión de incidentes térmicos con identificación de lotes en riesgo" height="400">
</div>

**Preferencias generales del sistema**

**Descripción:** Esquema del panel de configuración regional que define la disposición estructural de campos para establecer la zona horaria, moneda y lenguaje predeterminado para la sincronización de datos.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-63.png" alt="Esquema del panel de configuración regional y protocolos de comunicación del sistema" height="400">
</div>

**Informacion del perfil de usuario**

**Descripción:** Esquema de la interfaz de gestión de credenciales personales y datos de contacto del administrador, representando la disposición de la visualización de sucursales asignadas.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-64.png" alt="Esquema de la interfaz de gestión de credenciales de usuario y sucursales asignadas" height="400">
</div>

**Detalles del perfil empresarial**

**Descripción:** Esquema del formulario de registro corporativo que define la disposición de campos para gestionar la identidad de la organización, descripción del negocio y categorías operativas.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-65.png" alt="Esquema del formulario de registro corporativo e identidad de la organización" height="400">
</div>

**Gestion de suscripcion y facturacion**

**Descripción:** Esquema del módulo de control de pagos que representa la disposición estructural de campos para el plan activo, capacidad de nodos utilizados y el historial de facturación descargable.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-66.png" alt="Esquema del módulo de control de suscripción mensual y analítica de uso del sistema" height="400">
</div>

**Panel de administracion de sucursales**

**Descripción:** Esquema del dashboard multisede que define la disposición estructural de elementos para supervisar el estado operativo, cantidad de dispositivos y alertas activas en cada centro logístico.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-67.png" alt="Esquema del dashboard multisede para supervisión de sucursales y dispositivos activos" height="400">
</div>

**Modal de creacion de sucursal**

**Descripción:** Esquema del formulario para la expansión de la red de suministro que representa la disposición de campos para definir parámetros geográficos y estado inicial de la nueva sede.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-68.png" alt="Esquema del formulario para la creación y definición de parámetros de una nueva sucursal" height="400">
</div>

**Modal de edicion de sucursal**

**Descripción:** Esquema de la interfaz de actualización de datos para instalaciones existentes, representando la disposición de campos para la gestión de imágenes de planta y estados operativos.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-69.png" alt="Esquema de la interfaz de edición de datos de sucursal y gestión de estado operativo" height="400">
</div>

**Alerta de bloqueo por sucursal activa**

**Descripción:** Esquema del mensaje preventivo que define la disposición de elementos que impiden la eliminación de una sucursal mientras esta se encuentre recibiendo telemetría en tiempo real.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-70.png" alt="Esquema del aviso preventivo de seguridad por sucursal activa con recepción de datos" height="400">
</div>

**Confirmacion de eliminacion permanente de sucursal**

**Descripción:** Esquema del diálogo crítico de confirmación para el borrado definitivo de una sede, representando la disposición de elementos que advierten sobre la desvinculación total de dispositivos y datos históricos.

<div align="center">
  <img src="./assets/images/chapter5/web_wireframes/5.4.1-Web-Wireframe-71.png" alt="Esquema del diálogo de confirmación crítica para eliminación permanente de sucursal" height="400">
</div>

### Mobile Application

En esta sección se presentan los esquemas de media fidelidad diseñados específicamente para dispositivos móviles. El enfoque principal de estos wireframes es la optimización de la experiencia de usuario (UX) en pantallas reducidas, priorizando la visualización rápida de alertas de stock y el estado de las básculas inteligentes. La arquitectura de información aquí expuesta busca minimizar la carga cognitiva del personal operativo, permitiendo una gestión de inventario eficiente y ágil mediante una navegación simplificada.

**Inicio de Sesión**

**Descripción:** Esquema estructural de la pantalla principal de inicio de sesión que define la disposición de campos para acceso estándar mediante credenciales o inicio de sesión único (SSO) corporativo.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-1.png" alt="Esquema estructural de la pantalla principal de inicio de sesión con campos para credenciales y acceso SSO corporativo." height="600">
</div>

**Error de Inicio de Sesión**

**Descripción:** Esquema de la pantalla de autenticación que representa la disposición de elementos de alerta ante credenciales incorrectas, indicando al administrador que debe reintentar el acceso.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-2.png" alt="Esquema de pantalla de autenticación con disposición de alerta de error por credenciales incorrectas." height="600">
</div>

**Registro de Usuario**

**Descripción:** Esquema estructural de la pantalla de registro de nuevos usuarios, definiendo la disposición de campos para la creación de credenciales mediante correo o proveedores de terceros.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-3.png" alt="Esquema de pantalla de registro de nuevos usuarios con campos para correo y proveedores de terceros." height="600">
</div>

**Recuperación de Contraseña**

**Descripción:** Esquema de la interfaz para iniciar la recuperación de contraseña, representando la disposición del campo de correo electrónico para el envío del código de verificación.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-4.png" alt="Esquema de interfaz de recuperación de contraseña con campo para ingreso de correo electrónico." height="600">
</div>

**Verificación de Código**

**Descripción:** Esquema de la pantalla de validación que define la disposición de campos segmentados para el ingreso del código numérico de seis dígitos requerido para continuar con la recuperación de credenciales.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-5.png" alt="Esquema de pantalla de validación con campos segmentados para código numérico de seis dígitos." height="600">
</div>

**Nueva Contraseña**

**Descripción:** Esquema del formulario para definir y confirmar una nueva contraseña, representando la disposición estructural de los campos que culminan el flujo de restablecimiento de acceso.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-6.png" alt="Esquema del formulario de creación de nueva contraseña con campos de confirmación para restablecer el acceso." height="600">
</div>

**Selección de Rol**

**Descripción:** Esquema de la interfaz de configuración que define la disposición de opciones para que el usuario seleccione su entorno operativo y adapte las métricas del sistema.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-7.png" alt="Esquema de pantalla de selección de entorno operativo entre administrador de restaurante y retail." height="600">
</div>

**Datos Personales**

**Descripción:** Esquema del primer paso del proceso de configuración de cuenta, representando la disposición estructural de campos para el ingreso de datos personales y de contacto del perfil administrativo.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-8.png" alt="Esquema de formulario de datos personales y de contacto para la configuración del perfil administrativo." height="600">
</div>

**Detalles del Negocio**

**Descripción:** Esquema del formulario para registrar la información operativa de la organización, definiendo la disposición de campos para rubro y ubicación que estructuran la red de monitoreo de stock.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-9.png" alt="Esquema de formulario de información operativa con campos para rubro y ubicación de la organización." height="600">
</div>

**Selección de Plan**

**Descripción:** Esquema de la pantalla de selección de planes de servicio, representando la disposición estructural de los límites de básculas conectadas, soporte y características disponibles según el nivel.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-10.png" alt="Esquema de pantalla de selección de planes con disposición de características y límites por nivel de servicio." height="600">
</div>

**Detalles de Pago**

**Descripción:** Esquema del formulario de pago para procesar la suscripción al sistema, definiendo la disposición de campos para datos de facturación y tarjeta de crédito.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-11.png" alt="Esquema del formulario de pago con campos para datos de facturación y tarjeta de crédito." height="600">
</div>

**Dashboard de Monitoreo General**

**Descripción:** Esquema de la pantalla principal que define la disposición estructural de indicadores de estado de red de básculas, métricas ambientales en tiempo real y últimas discrepancias de inventario detectadas.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-12.png" alt="Esquema del dashboard principal con indicadores de estado de básculas, métricas ambientales y discrepancias de inventario." height="600">
</div>

**Estado de Inventario Vacío**

**Descripción:** Esquema de la pantalla de bienvenida al módulo de inventarios que representa la disposición de elementos orientativos cuando no existen registros previos, guiando la creación del primer suministro.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-13.png" alt="Esquema de pantalla de estado vacío con disposición de elementos para crear el primer suministro del sistema." height="600">
</div>

**Panel de Inventario**

**Descripción:** Esquema del panel principal de gestión de lotes que define la disposición estructural de métricas de salud de stock, valorización total y lista de suministros críticos filtrables por categoría.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-14.png" alt="Esquema del panel de gestión de lotes con métricas de stock, valorización y lista de suministros críticos." height="600">
</div>

**Agregar Nuevo Lote**

**Descripción:** Esquema del formulario modal para el registro de un nuevo lote de suministros, representando la disposición de campos para cantidad inicial y fecha de vencimiento.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-15.png" alt="Esquema del formulario modal de registro de nuevo lote con campos para cantidad inicial y fecha de vencimiento." height="600">
</div>

**Detalle de Lote**

**Descripción:** Esquema de la pantalla de detalle de un lote específico que define la disposición estructural de métricas de telemetría en tiempo real, niveles de stock y estado de salud ambiental.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-16.png" alt="Esquema de pantalla de detalle de lote con métricas de telemetría, niveles de stock y estado ambiental." height="600">
</div>

**Editar Lote**

**Descripción:** Esquema de la interfaz de edición de lotes que representa la disposición de campos para modificar parámetros de stock y fechas de expiración con el fin de corregir discrepancias manuales.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-17.png" alt="Esquema de interfaz de edición de lote con campos para stock y fechas de expiración." height="600">
</div>

**Lista de Suministros Personalizados**

**Descripción:** Esquema de la galería de suministros personalizados que define la disposición estructural para diferenciar entre productos perecederos y no perecederos con sus respectivos identificadores únicos.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-18.png" alt="Esquema de galería de suministros personalizados con diferenciación entre perecederos y no perecederos." height="600">
</div>

**Crear Suministro Personalizado**

**Descripción:** Esquema del formulario de configuración de nuevos tipos de suministros, representando la disposición de campos para unidades de medida, capacidades y políticas de rastreo de caducidad.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-19.png" alt="Esquema del formulario de creación de suministros con campos para unidades, capacidades y rastreo de caducidad." height="600">
</div>

**Editar Suministro Personalizado**

**Descripción:** Esquema de la vista de actualización para suministros registrados, definiendo la disposición de campos para el ajuste de umbrales de capacidad y metadatos técnicos del producto.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-20.png" alt="Esquema de vista de edición de suministro con campos para umbrales de capacidad y metadatos técnicos." height="600">
</div>

**Transferencia de Stock entre Lotes**

**Descripción:** Esquema de la interfaz para el traslado de mercancía entre zonas del establecimiento, representando la disposición estructural de campos para la actualización del libro mayor de existencias en tiempo real.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-21.png" alt="Esquema de interfaz de traslado de mercancía entre zonas con actualización de existencias en tiempo real." height="600">
</div>

**Directorio de Dispositivos**

**Descripción:** Esquema del directorio principal de dispositivos que define la disposición estructural de tarjetas informativas con estado de básculas, alertas de inventario y condiciones ambientales.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-22.png" alt="Esquema del directorio principal de dispositivos con tarjetas de estado de básculas y alertas." height="600">
</div>

**Registro de Dispositivo**

**Descripción:** Esquema de la interfaz de registro para nuevos dispositivos, representando la disposición de campos para capturar el alias de la báscula y su dirección MAC única.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-23.png" alt="Esquema del formulario de registro de dispositivo con campos para alias y dirección MAC." height="600">
</div>

**Dispositivo sin Asignar**

**Descripción:** Esquema de la vista detallada de una báscula recién registrada en estado de espera, definiendo la disposición de elementos que indican la necesidad de asignar un lote para iniciar el monitoreo.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-24.png" alt="Esquema de vista de dispositivo sin lote asignado con indicadores de configuración bloqueada." height="600">
</div>

**Asignación de Lote a Dispositivo**

**Descripción:** Esquema del modal de configuración de pesaje que representa la disposición de campos para seleccionar el producto y definir los parámetros de peso unitario y tara para la calibración del sensor.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-25.png" alt="Esquema del modal de asignación de lote con campos para peso unitario, tara y calibración del sensor." height="600">
</div>

**Editar Información del Dispositivo**

**Descripción:** Esquema de la ventana de edición para modificar la información de identificación del dispositivo, representando la disposición de campos para actualizar el alias y verificar la dirección MAC asignada.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-26.png" alt="Esquema de ventana de edición de dispositivo con campos para alias y verificación de dirección MAC." height="600">
</div>

**Editar Umbrales de Alerta**

**Descripción:** Esquema del panel de configuración de umbrales críticos que define la disposición de campos para control de inventario y límites ambientales de temperatura y humedad, con advertencia de impacto en reportes históricos.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-27.png" alt="Esquema del panel de edición de umbrales de stock, temperatura y humedad con advertencia de cambios retroactivos." height="600">
</div>

**Confirmación de Desvinculación de Dispositivo**

**Descripción:** Esquema de la pantalla de confirmación de seguridad para la desvinculación de dispositivos, representando la disposición de campos de validación para detener el rastreo y borrar datos de calibración.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-28.png" alt="Esquema de pantalla de confirmación para desvincular dispositivo con campo de validación de ID." height="600">
</div>

**Detalle de Dispositivo Activo**

**Descripción:** Esquema de la vista de monitoreo activo de una báscula en funcionamiento, definiendo la disposición estructural de indicadores de señal, tiempo desde la última actualización y resumen de umbrales configurados.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-29.png" alt="Esquema de vista de báscula activa con indicadores de señal, lote asignado y umbrales de control." height="600">
</div>

**Centro de Alertas y Notificaciones**

**Descripción:** Esquema de la pantalla principal del centro de notificaciones que representa la disposición estructural de categorías de alertas de inventario, estado de dispositivos y discrepancias de datos para la gestión operativa.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-30.png" alt="Esquema del centro de notificaciones con disposición de categorías de alertas de inventario y dispositivos." height="600">
</div>

**Confirmación de Transferencia de Stock**

**Descripción:** Esquema del modal de confirmación para transferencias manuales de stock, representando la disposición de campos que detallan la diferencia de peso detectada por la báscula y la sincronización con el ERP.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-31.png" alt="Esquema del modal de confirmación de transferencia de stock con diferencia de peso y sincronización ERP." height="600">
</div>

**Detalle de Discrepancia de Datos**

**Descripción:** Esquema de la interfaz de resolución para discrepancias críticas de datos, definiendo la disposición estructural de la comparación entre registros digitales y lecturas físicas de la báscula.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-32.png" alt="Esquema de interfaz de resolución de discrepancias con comparación de registros digitales y lecturas físicas." height="600">
</div>

**Diagnóstico de Hardware sin Conexión**

**Descripción:** Esquema de la vista detallada de fallo de conexión de hardware, representando la disposición de elementos para mostrar la última telemetría registrada y los pasos de diagnóstico para recuperar la conectividad.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-33.png" alt="Esquema de vista de fallo de hardware con última telemetría registrada y pasos de diagnóstico." height="600">
</div>

**Configuración General del Sistema**

**Descripción:** Esquema del panel de configuración regional y de comunicación que define la disposición de campos para ajustar zona horaria, moneda, idioma y preferencias de notificaciones críticas.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-34.png" alt="Esquema del panel de configuración regional con campos para zona horaria, moneda, idioma y notificaciones." height="600">
</div>

**Información Personal del Perfil**

**Descripción:** Esquema de la interfaz de gestión de perfil de usuario que representa la disposición de campos para actualizar información personal, fotografía y verificar el estado de seguridad de la cuenta.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-35.png" alt="Esquema de gestión de perfil con campos para información personal, fotografía y estado de seguridad." height="600">
</div>

**Información Empresarial del Perfil**

**Descripción:** Esquema del formulario de información corporativa que define la disposición de campos para la actividad comercial, dirección física y categorías de productos gestionados.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-36.png" alt="Esquema del formulario corporativo con campos para actividad comercial, dirección y categorías de productos." height="600">
</div>

**Gestión de Suscripción y Facturación**

**Descripción:** Esquema del módulo de gestión de planes de suscripción que representa la disposición estructural de métricas de uso por dispositivos conectados e historial de facturación descargable.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-37.png" alt="Esquema del módulo de suscripción con métricas de uso por dispositivos e historial de facturación." height="600">
</div>

**Directorio de Sucursales**

**Descripción:** Esquema del directorio centralizado de sucursales y centros logísticos que define la disposición estructural de indicadores de estado operativo, cantidad de personal y alertas activas.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-38.png" alt="Esquema del directorio de sucursales con indicadores de estado operativo, personal y alertas activas." height="600">
</div>

**Crear Nueva Sucursal**

**Descripción:** Esquema del modal para la creación de nuevas sedes operativas, representando la disposición de campos para datos de contacto, ubicación geográfica y estado de visibilidad inicial.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-39.png" alt="Esquema del modal de creación de sucursal con campos para contacto, ubicación y visibilidad inicial." height="600">
</div>

**Editar Sucursal**

**Descripción:** Esquema del formulario de edición para sucursales existentes que define la disposición de campos para actualizar información de contacto, imágenes de la instalación y estatus operativo.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-40.png" alt="Esquema del formulario de edición de sucursal con campos para contacto, imágenes y estatus operativo." height="600">
</div>

**Advertencia de Eliminación de Sucursal Activa**

**Descripción:** Esquema de la notificación de restricción de borrado para sucursales con telemetría activa, representando la disposición de elementos que exigen la desactivación previa de operaciones para mantener la integridad de datos.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-41.png" alt="Esquema de notificación de restricción de borrado por telemetría activa con requisito de desactivación previa." height="600">
</div>

**Confirmación de Eliminación Permanente de Sucursal**

**Descripción:** Esquema del modal de confirmación crítica para la eliminación permanente de una sucursal, definiendo la disposición de elementos de advertencia sobre pérdida de datos históricos y desvinculación de dispositivos.

<div align="center">
  <img src="./assets/images/chapter5/mobile_wireframes/5.4.1-Mobile-Wireframe-42.png" alt="Esquema del modal de confirmación crítica para eliminación permanente de sucursal con advertencia de pérdida de datos." height="600">
</div>

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

En esta sección se presentarán los mockups de las aplicaciones, los cuales fueron diseñas en Figma.

### Web Application

En esta sección se presentan los mockups de alta fidelidad de la aplicación web, los cuales representan el diseño visual definitivo y la interfaz de usuario de nuestra solución. Estos modelos integran la identidad corporativa de Restock y detallan la estética final de las funcionalidades principales, habiéndose desarrollado a partir de la validación estructural de los wireframes previos.

**Vista inicial de registro**

**Descripción:** Interfaz de registro para nuevos usuarios que captura credenciales básicas bajo la identidad visual de la plataforma.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-01.png" alt="Interfaz de registro para nuevos usuarios con campos de correo y contraseña" height="400">
</div>

**Estado de error en inicio de sesión**

**Descripción:** Pantalla de autenticación que muestra la validación negativa del sistema ante el ingreso de credenciales incorrectas.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-02.1.png" alt="Validación negativa del sistema ante el ingreso de credenciales incorrectas" height="400">
</div>

**Vista estándar de inicio de sesión**

**Descripción:** Formulario de acceso convencional que integra opciones para inicio de sesión empresarial (SSO) y recuperación de cuenta.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-02.png" alt="Formulario de acceso convencional con integración de SSO empresarial" height="400">
</div>

**Bienvenida de usuario recurrente**

**Descripción:** Pantalla de acceso optimizada para usuarios con cuentas existentes, simplificando los pasos para ingresar al panel de control.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-03.png" alt="Pantalla de acceso optimizada para usuarios con cuentas existentes" height="400">
</div>

**Solicitud de restablecimiento de contraseña**

**Descripción:** Módulo de seguridad para la recuperación de acceso mediante el envío de un código de verificación al correo institucional.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-04.png" alt="Módulo de seguridad para la recuperación de acceso vía correo electrónico" height="400">
</div>

**Verificación de código de seguridad**

**Descripción:** Interfaz de validación de identidad con campos segmentados para la introducción del código numérico de seis dígitos recibido.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-05.png" alt="Interfaz de validación de identidad con campos para código numérico" height="400">
</div>

**Creación de nueva contraseña**

**Descripción:** Formulario final para el establecimiento de nuevas credenciales de acceso con validación doble de seguridad.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-06.png" alt="Formulario final para el establecimiento de nuevas credenciales de acceso" height="400">
</div>

**Selección de entorno operativo**

**Descripción:** Pantalla de segmentación operativa donde el usuario elige el tipo de industria para personalizar los sensores de medición.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-07.png" alt="Pantalla de segmentación operativa según el tipo de industria" height="400">
</div>

**Detalles de perfil personal**

**Descripción:** Recopilación de metadatos del administrador y datos de ubicación para la configuración regional de los dispositivos de pesado.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-08.png" alt="Recopilación de metadatos del administrador y datos de ubicación" height="400">
</div>

**Información de perfil empresarial**

**Descripción:** Registro detallado de la organización y categorías de inventario para el despliegue del sistema de monitoreo en tiempo real.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-09.png" alt="Registro detallado de la organización y categorías de inventario" height="400">
</div>

**Comparativa de planes de suscripción**

**Descripción:** Visualización de los niveles de servicio y beneficios comerciales adaptados a la escala de la operación logística del cliente.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-10.png" alt="Visualización de los niveles de servicio y beneficios comerciales" height="400">
</div>

**Pasarela de pago y suscripción**

**Descripción:** Interfaz de checkout seguro que detalla el resumen de costos, impuestos aplicables y formulario de pago encriptado.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-11.png" alt="Interfaz de checkout seguro con resumen de costos e impuestos" height="400">
</div>

**Inventory batches overview**

**Descripción:** Vista principal de la tabla de lotes activos con indicadores de productos próximos a expirar y niveles de stock por categoría.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-12.png" alt="Vista principal de la tabla de lotes activos e indicadores de expiración" height="400">
</div>

**Custom supplies catalog**

**Descripción:** Galería visual de la lista maestra de suministros de la organización, permitiendo la edición y auditoría de artículos perecederos.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-13.png" alt="Galería visual de la lista maestra de suministros de la organización" height="400">
</div>

**Create custom supply modal**

**Descripción:** Formulario flotante para la creación de nuevos ítems, configurando unidades de medida, capacidades mínimas y alertas de perecederos.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-14.png" alt="Formulario flotante para la creación de nuevos suministros" height="400">
</div>

**Edit custom supply modal**

**Descripción:** Interfaz de edición de atributos para suministros existentes, incluyendo ajustes en la descripción técnica y umbrales de capacidad.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-15.png" alt="Interfaz de edición de atributos para suministros existentes" height="400">
</div>

**Batch details view**

**Descripción:** Modal informativo que muestra el stock actual, fecha de expiración y unidad de medida de un lote específico seleccionado.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-16.png" alt="Modal informativo de stock y expiración de un lote específico" height="400">
</div>

**Add new batch modal**

**Descripción:** Formulario para el ingreso de nuevos lotes al sistema, vinculando suministros existentes con su stock inicial y fecha de caducidad.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-17.png" alt="Formulario para el ingreso de nuevos lotes al sistema" height="400">
</div>

**Edit existing batch modal**

**Descripción:** Ventana de diálogo para la actualización de datos operativos en lotes activos, como correcciones de stock o ajustes de expiración.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-18.png" alt="Ventana de diálogo para la actualización de datos en lotes activos" height="400">
</div>

**Inter branch transfer sidebar**

**Descripción:** Panel lateral para la gestión de logística interna, permitiendo el traslado de stock entre sucursales con vista previa de criticidad.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-19.png" alt="Panel lateral para la gestión de transferencia de stock entre sucursales" height="400">
</div>

**Empty inventory state**

**Descripción:** Pantalla de estado vacío que orienta al usuario para iniciar el rastreo de telemetría mediante la creación de su primer suministro.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-20.png" alt="Pantalla de estado vacío con guía para inicio de telemetría" height="400">
</div>

**Catálogo general de recetas**

**Descripción:** Panel principal que muestra la galería de platos con indicadores de fluctuación de costos, alertas de inventario bajo y estado de actividad.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-21.png" alt="Panel principal con galería de platos e indicadores de costos y alertas" height="400">
</div>

**Detalle de costo de receta**

**Descripción:** Desglose técnico de ingredientes vinculados que muestra el peso exacto, costo unitario y costo total estimado por ración de servicio.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-22.png" alt="Desglose técnico de ingredientes y costos por ración de servicio" height="400">
</div>

**Modal de creación de nueva receta**

**Descripción:** Interfaz de construcción de recetas que permite cargar imágenes y ensamblar ingredientes mediante un buscador dinámico de suministros.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-23.png" alt="Interfaz de construcción de recetas con buscador dinámico de suministros" height="400">
</div>

**Modal de edición de receta**

**Descripción:** Ventana de ajuste para recetas existentes donde se pueden actualizar cantidades y recalcular el precio total estimado de producción.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-24.png" alt="Ventana de ajuste para cantidades y recalculo de costos de producción" height="400">
</div>

**Confirmación de eliminación de receta**

**Descripción:** Diálogo de seguridad de alta criticidad para evitar el borrado accidental de fórmulas de producción y datos de costos históricos.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-25.png" alt="Diálogo de seguridad para confirmación de borrado de recetas" height="400">
</div>

**Resumen general de ventas**

**Descripción:** Panel de control de ventas con métricas de ingresos mensuales, conteo de transacciones y estado operativo de las terminales activas.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-26.png" alt="Panel de control de ventas con métricas de ingresos y estado de terminales" height="400">
</div>

**Detalle de transaccion registrada**

**Descripción:** Desglose de una transacción específica que muestra los artículos vendidos y el registro de deducción automática de insumos en las básculas.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-27.png" alt="Desglose de transacción con registro de deducción automática de insumos" height="400">
</div>

**Terminal de punto de venta**

**Descripción:** Interfaz de usuario para la toma de pedidos que muestra el menú de platos y el ticket de orden con cálculo de impuestos en tiempo real.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-28.png" alt="Interfaz de terminal de punto de venta con menú y ticket de orden" height="400">
</div>

**Confirmacion de venta exitosa**

**Descripción:** Mensaje de confirmación tras procesar una venta, notificando la actualización automática de los componentes del inventario en el sistema.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-29.png" alt="Mensaje de confirmación de venta y actualización automática de inventario" height="400">
</div>

**Estado de alerta por inventario critico**

**Descripción:** Indicador visual en la terminal de ventas que resalta artículos con stock insuficiente para cumplir con una ración completa.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-30.png" alt="Indicador visual de artículos con stock insuficiente en la terminal de ventas" height="400">
</div>

**Bloqueo por inventario insuficiente**

**Descripción:** Alerta de sistema de alta prioridad que bloquea la transacción debido a la falta de insumos físicos detectada por los sensores.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-31.png" alt="Alerta de sistema que bloquea transacciones por falta de insumos físicos" height="400">
</div>

**General telemetry dashboard**

**Descripción:** Panel de supervisión integral que muestra el estado de conexión de las básculas, métricas de red y el registro de discrepancias detectadas.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-32.png" alt="Panel de supervisión con métricas de red y registro de discrepancias de peso y temperatura" height="400">
</div>

**Catalogo de kits y combos**

**Descripción:** Panel principal que muestra las combinaciones de productos para retail con indicadores de kits activos y alertas de stock bajo.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-33.png" alt="Panel principal de combinaciones de productos para retail y alertas de stock" height="400">
</div>

**Detalle de kit artesanal**

**Descripción:** Vista detallada de un kit específico que muestra la demanda semanal, disponibilidad de venta y la lista de ingredientes incluidos.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-34.png" alt="Vista detallada de kit con demanda semanal e ingredientes incluidos" height="400">
</div>

**Modal de creacion de nuevo kit**

**Descripción:** Interfaz de configuración para nuevos paquetes de productos que permite establecer precios sugeridos basados en el costo de los componentes.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-35.png" alt="Interfaz de configuración para nuevos paquetes de productos y precios sugeridos" height="400">
</div>

**Modal de edicion de kit**

**Descripción:** Ventana de ajuste para la configuración de componentes de un kit, vinculada directamente al monitoreo activo de dispositivos de pesado.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-36.png" alt="Ventana de ajuste de componentes de kit vinculada a dispositivos de pesado" height="400">
</div>

**Confirmacion de eliminacion de kit**

**Descripción:** Diálogo de advertencia para la eliminación de kits del catálogo, especificando que los productos individuales permanecerán en el inventario.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-37.png" alt="Diálogo de advertencia para la eliminación de kits del catálogo" height="400">
</div>

**Resumen de ventas retail**

**Descripción:** Dashboard analítico que muestra el total de ventas, tasa de errores de sincronización y el historial de transacciones procesadas por las terminales.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-38.png" alt="Dashboard analítico de ventas con métricas y registro histórico de transacciones" height="400">
</div>

**Detalle de transaccion retail**

**Descripción:** Desglose lateral de una venta específica que confirma la deducción automática de unidades desde las básculas asignadas a cada producto.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-39.png" alt="Desglose de venta retail con confirmación de deducción automática por sensores" height="400">
</div>

**Terminal de punto de venta retail**

**Descripción:** Interfaz de selección de kits y productos para el segmento retail, con actualización dinámica del ticket de compra y subtotal.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-40.png" alt="Interfaz de punto de venta para selección de productos y gestión de ticket" height="400">
</div>

**Confirmacion de venta retail exitosa**

**Descripción:** Notificación modal de éxito tras el registro de la venta, indicando que los componentes del inventario han sido descontados correctamente.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-41.png" alt="Notificación de registro de venta exitosa y descuento de inventario" height="400">
</div>

**Alerta de stock insuficiente en retail**

**Descripción:** Indicador visual de advertencia en la terminal de venta que resalta productos con disponibilidad nula según los sensores de peso.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-42.png" alt="Indicador visual de advertencia por stock agotado en terminal retail" height="400">
</div>

**Bloqueo por falta de componentes retail**

**Descripción:** Interfaz de error que impide finalizar la transacción cuando el peso detectado no cumple con el mínimo requerido para el producto.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-43.png" alt="Interfaz de bloqueo de transacción por falta de componentes físicos detectada" height="400">
</div>

**Conciliation tasks overview**

**Descripción:** Panel principal de tareas pendientes que lista las discrepancias activas detectadas por los sensores, permitiendo iniciar investigaciones inmediatas.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-44.png" alt="Panel de tareas pendientes con lista de discrepancias activas para investigación" height="400">
</div>

**Discrepancy technical detail**

**Descripción:** Vista profunda de una anomalía que compara el registro digital versus la lectura física, incluyendo telemetría de salud del dispositivo y gráficos temporales.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-45.png" alt="Vista detallada de anomalía con comparación de pesos y telemetría del dispositivo" height="400">
</div>

**Discrepancy resolution modal**

**Descripción:** Interfaz para justificar diferencias de stock, permitiendo al usuario asignar causas como mermas o desperdicios y adjuntar evidencia para auditoría.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-46.png" alt="Interfaz para justificación de diferencias de stock y asignación de causas" height="400">
</div>

**Scale recalibration modal**

**Descripción:** Módulo de mantenimiento preventivo para forzar el reinicio de tara o programar visitas técnicas cuando se sospecha de errores en los sensores físicos.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-47.png" alt="Módulo de mantenimiento para recalibración de sensores y programación técnica" height="400">
</div>

**Resolution history logs**

**Descripción:** Registro histórico de discrepancias resueltas con analítica sobre los motivos principales de desviación y el desempeño del inventario.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-48.png" alt="Registro histórico de resoluciones con analítica de motivos de desviación" height="400">
</div>

**Directorio de dispositivos activos**

**Descripción:** Panel central de administración de hardware que muestra el estado de red, salud de sensores y dirección MAC de las básculas en línea.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-49.png" alt="Panel central de administración de hardware y estado de salud de sensores" height="400">
</div>

**Modal de registro de dispositivo**

**Descripción:** Interfaz para el alta de nuevas unidades mediante la introducción de la dirección MAC física y la asignación de un alias identificador.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-50.png" alt="Interfaz para el alta de nuevas unidades mediante dirección MAC y alias" height="400">
</div>

**Configuracion de dispositivo pendiente**

**Descripción:** Vista de espera para hardware recién registrado donde las alertas permanecen bloqueadas hasta que se asigne un lote de insumos específico.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-51.png" alt="Vista de configuración bloqueada para dispositivos sin lote asignado" height="400">
</div>

**Modal de asignacion de lote**

**Descripción:** Formulario de calibración inicial donde se define el peso unitario y la tara para establecer el punto de referencia cero en la báscula.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-52.png" alt="Formulario de calibración inicial y establecimiento de punto cero en báscula" height="400">
</div>

**Modal de edicion de informacion del dispositivo**

**Descripción:** Ventana de actualización para modificar metadatos técnicos y asegurar la correcta jerarquía en el mapa de calor del inventario.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-53.png" alt="Ventana de actualización de metadatos técnicos y alias de dispositivo" height="400">
</div>

**Modal de edicion de umbrales de alerta**

**Descripción:** Panel de configuración de límites críticos para el control de stock y variables ambientales de temperatura y humedad permitidas.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-54.png" alt="Panel de configuración de límites de stock y variables ambientales" height="400">
</div>

**Detalle de configuracion de dispositivo online**

**Descripción:** Vista integral de telemetría en tiempo real que muestra la fuerza de señal inalámbrica y el estado operativo del hardware configurado.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-55.png" alt="Vista integral de telemetría y estado operativo de hardware en línea" height="400">
</div>

**Confirmacion de desvinculacion de dispositivo**

**Descripción:** Diálogo de seguridad para la desconexión de hardware, advirtiendo sobre el cese del monitoreo en tiempo real de los insumos asociados.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-56.png" alt="Diálogo de seguridad para desvinculación de hardware y cese de monitoreo" height="400">
</div>

**Lista general de alertas y notificaciones**

**Descripción:** Panel principal que centraliza avisos sobre desajustes de datos, fallos de conexión en terminales y transferencias de stock pendientes.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-57.png" alt="Panel principal de notificaciones del sistema con filtros por categoría de alerta" height="400">
</div>

**Confirmacion de transferencia de stock manual**

**Descripción:** Interfaz para validar extracciones físicas detectadas por las básculas, permitiendo sincronizar la reducción de unidades con el inventario digital.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-58.png" alt="Interfaz de validación para sincronización de extracciones físicas de stock" height="400">
</div>

**Alerta de discrepancia por desajuste de datos**

**Descripción:** Modal de advertencia crítica que muestra la brecha entre el registro digital y la lectura física de los sensores en tiempo real.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-59.png" alt="Advertencia crítica de discrepancia entre registros digitales y lecturas de sensores" height="400">
</div>

**Notificacion de perdida de conexion en hardware**

**Descripción:** Alerta de tiempo de espera agotado en la comunicación con el hub de básculas, indicando el último registro de telemetría capturado.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-60.png" alt="Notificación de fallo de comunicación con el hardware de pesado" height="400">
</div>

**Panel de incidentes criticos del sistema**

**Descripción:** Vista de alta urgencia que agrupa eventos de impacto sistémico como fallos en gateways o brechas de temperatura en almacenamiento frío.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-61.png" alt="Dashboard de incidentes críticos con tiempos de respuesta y registros de eventos" height="400">
</div>

**Detalle lateral de alerta por brecha de temperatura**

**Descripción:** Desglose lateral de incidentes térmicos que identifica los lotes perecederos en riesgo y permite el despacho inmediato de mantenimiento.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-62.png" alt="Panel lateral de gestión de incidentes térmicos con identificación de lotes en riesgo" height="400">
</div>

**Preferencias generales del sistema**

**Descripción:** Panel de configuración regional que permite establecer la zona horaria, moneda y lenguaje predeterminado para la sincronización de datos.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-63.png" alt="Panel de configuración regional y protocolos de comunicación del sistema" height="400">
</div>

**Informacion del perfil de usuario**

**Descripción:** Interfaz de gestión de credenciales personales y datos de contacto del administrador, con visualización de las sucursales asignadas.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-64.png" alt="Interfaz de gestión de credenciales de usuario y sucursales asignadas" height="400">
</div>

**Detalles del perfil empresarial**

**Descripción:** Formulario de registro corporativo para gestionar la identidad de la organización, descripción del negocio y categorías operativas.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-65.png" alt="Formulario de registro corporativo e identidad de la organización" height="400">
</div>

**Gestion de suscripcion y facturacion**

**Descripción:** Módulo de control de pagos que muestra el plan activo, capacidad de nodos utilizados y el historial de facturación descargable.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-66.png" alt="Módulo de control de suscripción mensual y analítica de uso del sistema" height="400">
</div>

**Panel de administracion de sucursales**

**Descripción:** Dashboard multisede que permite supervisar el estado operativo, cantidad de dispositivos y alertas activas en cada centro logístico.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-67.png" alt="Dashboard multisede para supervisión de sucursales y dispositivos activos" height="400">
</div>

**Modal de creacion de sucursal**

**Descripción:** Formulario para la expansión de la red de suministro que permite definir parámetros geográficos y estado inicial de la nueva sede.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-68.png" alt="Formulario para la creación y definición de parámetros de una nueva sucursal" height="400">
</div>

**Modal de edicion de sucursal**

**Descripción:** Interfaz de actualización de datos para instalaciones existentes, permitiendo la gestión de imágenes de planta y estados operativos.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-69.png" alt="Interfaz de edición de datos de sucursal y gestión de estado operativo" height="400">
</div>

**Alerta de bloqueo por sucursal activa**

**Descripción:** Mensaje preventivo que impide la eliminación de una sucursal mientras esta se encuentre recibiendo telemetría en tiempo real.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-70.png" alt="Aviso preventivo de seguridad por sucursal activa con recepción de datos" height="400">
</div>

**Confirmacion de eliminacion permanente de sucursal**

**Descripción:** Diálogo crítico de confirmación para el borrado definitivo de una sede, implicando la desvinculación total de dispositivos y datos históricos.

<div align="center">
  <img src="./assets/images/chapter5/web_mockups/5.4.2-Web-Mockup-71.png" alt="Diálogo de confirmación crítica para eliminación permanente de sucursal" height="400">
</div>

### Mobile Application

En esta sección se presentarán los mockups de la aplicación móvil, los cuales son bosquejos de media o alta fidelidad sobre las funcionalidades principales de nuestra solución. Para el diseño de los mockups, se partió de los wireframes realizados previamente.

### Mobile Application

En esta sección se presentarán los mockups de la aplicación móvil, los cuales son bosquejos de media o alta fidelidad sobre las funcionalidades principales de nuestra solución. Para el diseño de los mockups, se partió de los wireframes realizados previamente.

**Inicio de Sesión**

**Descripción:** Interfaz principal de inicio de sesión que permite el acceso estándar mediante credenciales o inicio de sesión único (SSO) corporativo.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/main-login-screen.png" alt="Interfaz principal de inicio de sesión que permite el acceso estándar mediante credenciales o inicio de sesión único (SSO) corporativo." height="600">
</div>

**Error de Inicio de Sesión**

**Descripción:** Pantalla de autenticación mostrando una alerta de error por credenciales incorrectas, solicitando al administrador reintentar el acceso a sus métricas.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/login-error-screen.png" alt="Pantalla de autenticación mostrando una alerta de error por credenciales incorrectas, solicitando al administrador reintentar el acceso a sus métricas." height="600">
</div>

**Registro de Usuario**

**Descripción:** Pantalla de registro de nuevos usuarios para el sistema Restock, permitiendo la creación de credenciales mediante correo o proveedores de terceros.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/register-screen.png" alt="Pantalla de registro de nuevos usuarios para el sistema Restock, permitiendo la creación de credenciales mediante correo o proveedores de terceros." height="600">
</div>

**Recuperación de Contraseña**

**Descripción:** Interfaz para iniciar la recuperación de contraseña, solicitando el correo electrónico asociado a la cuenta para enviar un código de verificación.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/password-recovery-request.png" alt="Interfaz para iniciar la recuperación de contraseña, solicitando el correo electrónico asociado a la cuenta para enviar un código de verificación." height="600">
</div>

**Verificación de Código**

**Descripción:** Pantalla de validación que requiere un código numérico de seis dígitos enviado al usuario para continuar con la recuperación de credenciales.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/password-recovery-verify.png" alt="Pantalla de validación que requiere un código numérico de seis dígitos enviado al usuario para continuar con la recuperación de credenciales." height="600">
</div>

**Nueva Contraseña**

**Descripción:** Formulario seguro para definir y confirmar una nueva contraseña, culminando el flujo de restablecimiento de acceso a la plataforma.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/password-recovery-create.png" alt="Formulario seguro para definir y confirmar una nueva contraseña, culminando el flujo de restablecimiento de acceso a la plataforma." height="600">
</div>

**Selección de Rol**

**Descripción:** Interfaz de configuración donde el usuario selecciona su entorno operativo (administrador de restaurante o retail) para adaptar las métricas del sistema.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/role-selection-screen.png" alt="Interfaz de configuración donde el usuario selecciona su entorno operativo (administrador de restaurante o retail) para adaptar las métricas del sistema." height="600">
</div>

**Datos Personales**

**Descripción:** Primer paso del proceso de configuración de cuenta para ingresar los datos personales y de contacto del perfil administrativo.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/onboarding-personal-details.png" alt="Primer paso del proceso de configuración de cuenta para ingresar los datos personales y de contacto del perfil administrativo." height="600">
</div>

**Detalles del Negocio**

**Descripción:** Formulario para registrar la información operativa de la organización, incluyendo rubro y ubicación, estructurando así la red de monitoreo de stock.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/onboarding-business-details.png" alt="Formulario para registrar la información operativa de la organización, incluyendo rubro y ubicación, estructurando así la red de monitoreo de stock." height="600">
</div>

**Selección de Plan**

**Descripción:** Pantalla de selección de planes de servicio, detallando límites de básculas conectadas, soporte y características de la API según el nivel.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/subscription-plan-selection.png" alt="Pantalla de selección de planes de servicio, detallando límites de básculas conectadas, soporte y características de la API según el nivel." height="600">
</div>

**Detalles de Pago**

**Descripción:** Formulario de pago seguro para procesar la suscripción al sistema Restock, permitiendo al administrador ingresar los datos de facturación y tarjeta de crédito.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/payment-details-screen.png" alt="Formulario de pago seguro para procesar la suscripción al sistema Restock, permitiendo al administrador ingresar los datos de facturación y tarjeta de crédito." height="600">
</div>

**Dashboard de Monitoreo General**

**Descripción:** Pantalla principal que visualiza el estado de red de las básculas inteligentes, sus métricas ambientales en tiempo real y las últimas discrepancias de inventario detectadas por el sistema Restock.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/scale-monitoring-dashboard.png" alt="Pantalla principal que visualiza el estado de red de las básculas inteligentes, sus métricas ambientales en tiempo real y las últimas discrepancias de inventario detectadas por el sistema Restock." height="600">
</div>

**Estado de Inventario Vacío**

**Descripción:** Interfaz de bienvenida al módulo de inventarios que se muestra cuando no existen registros previos, permitiendo la creación del primer suministro del sistema.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/empty-inventory-state.png" alt="Interfaz de bienvenida al módulo de inventarios que se muestra cuando no existen registros previos, permitiendo la creación del primer suministro del sistema." height="600">
</div>

**Panel de Inventario**

**Descripción:** Panel principal de gestión de lotes con métricas de salud de stock, valorización total y lista de suministros críticos filtrables por categoría.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/inventory-dashboard.png" alt="Panel principal de gestión de lotes con métricas de salud de stock, valorización total y lista de suministros críticos filtrables por categoría." height="600">
</div>

**Agregar Nuevo Lote**

**Descripción:** Formulario modal para el registro de un nuevo lote de suministros, solicitando cantidad inicial y fecha de vencimiento para el seguimiento del producto.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/add-new-batch.png" alt="Formulario modal para el registro de un nuevo lote de suministros, solicitando cantidad inicial y fecha de vencimiento para el seguimiento del producto." height="600">
</div>

**Detalle de Lote**

**Descripción:** Pantalla de detalle de un lote específico que muestra métricas de telemetría en tiempo real, niveles de stock y estado de salud ambiental.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/batch-details-view.png" alt="Pantalla de detalle de un lote específico que muestra métricas de telemetría en tiempo real, niveles de stock y estado de salud ambiental." height="600">
</div>

**Editar Lote**

**Descripción:** Interfaz de edición para modificar parámetros de stock y fechas de expiración de lotes existentes con el fin de corregir discrepancias manuales.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/edit-batch-modal.png" alt="Interfaz de edición para modificar parámetros de stock y fechas de expiración de lotes existentes con el fin de corregir discrepancias manuales." height="600">
</div>

**Lista de Suministros Personalizados**

**Descripción:** Galería de suministros personalizados configurados en el sistema, diferenciando entre productos perecederos y no perecederos con sus respectivos identificadores únicos.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/custom-supplies-list.png" alt="Galería de suministros personalizados configurados en el sistema, diferenciando entre productos perecederos y no perecederos con sus respectivos identificadores únicos." height="600">
</div>

**Crear Suministro Personalizado**

**Descripción:** Formulario de configuración de nuevos tipos de suministros, definiendo unidades de medida, capacidades máximas/mínimas y políticas de rastreo de caducidad.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/create-custom-supply.png" alt="Formulario de configuración de nuevos tipos de suministros, definiendo unidades de medida, capacidades máximas/mínimas y políticas de rastreo de caducidad." height="600">
</div>

**Editar Suministro Personalizado**

**Descripción:** Vista de actualización para suministros registrados, permitiendo el ajuste de umbrales de capacidad y metadatos técnicos del producto.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/edit-custom-supply.png" alt="Vista de actualización para suministros registrados, permitiendo el ajuste de umbrales de capacidad y metadatos técnicos del producto." height="600">
</div>

**Transferencia de Stock entre Lotes**

**Descripción:** Interfaz para el traslado de mercancía entre zonas del establecimiento, actualizando automáticamente el libro mayor de existencias en tiempo real.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/transfer-batch-stock.png" alt="Interfaz para el traslado de mercancía entre zonas del establecimiento, actualizando automáticamente el libro mayor de existencias en tiempo real." height="600">
</div>

**Directorio de Dispositivos**

**Descripción:** Directorio principal de dispositivos que muestra el estado general de las básculas, alertas de inventario y condiciones ambientales mediante tarjetas informativas y una lista detallada.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/device-directory-overview.png" alt="Directorio principal de dispositivos con resumen de estados y lista de básculas activas." height="600">
</div>

**Registro de Dispositivo**

**Descripción:** Interfaz de registro para nuevos dispositivos que permite capturar el alias de la báscula y su dirección MAC única para la integración en la red del establecimiento.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/register-device-modal.png" alt="Formulario de registro de dispositivo para ingresar alias y dirección MAC." height="600">
</div>

**Dispositivo sin Asignar**

**Descripción:** Vista detallada de una báscula recién registrada en estado de espera, indicando que el hardware requiere la asignación de un lote de inventario para iniciar el monitoreo.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/unassigned-scale-details.png" alt="Vista de detalle de dispositivo sin lote asignado y configuración bloqueada." height="600">
</div>

**Asignación de Lote a Dispositivo**

**Descripción:** Modal de configuración de pesaje donde se selecciona el producto (lote) y se definen los parámetros de peso unitario y tara para la calibración del sensor.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/assign-batch-modal.png" alt="Configuración de asignación de lote con campos para peso unitario, tara y puesta a cero." height="600">
</div>

**Editar Información del Dispositivo**

**Descripción:** Ventana de edición para modificar la información de identificación del dispositivo, permitiendo actualizar el alias y verificar la dirección MAC asignada.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/edit-scale-info-modal.png" alt="Interfaz de edición de información básica de la báscula y sincronización de red." height="600">
</div>

**Editar Umbrales de Alerta**

**Descripción:** Panel de configuración de umbrales críticos para el control de inventario y límites ambientales de temperatura y humedad, con advertencia de impacto en reportes históricos.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/edit-thresholds-modal.png" alt="Edición de umbrales de stock, temperatura y humedad con advertencia de cambios retroactivos." height="600">
</div>

**Confirmación de Desvinculación de Dispositivo**

**Descripción:** Pantalla de confirmación de seguridad para la desvinculación de dispositivos, requiriendo validación del ID para detener el rastreo de inventario y borrar datos de calibración.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/unlink-scale-confirmation.png" alt="Proceso de confirmación para desvincular un dispositivo de forma permanente." height="600">
</div>

**Detalle de Dispositivo Activo**

**Descripción:** Vista de monitoreo activo de una báscula en funcionamiento, mostrando la fuerza de la señal, el tiempo desde la última actualización y el resumen de umbrales configurados.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/active-scale-configuration.png" alt="Detalle de báscula en línea con indicadores de señal, lote asignado y umbrales de control." height="600"> 
</div>

**Centro de Alertas y Notificaciones**

**Descripción:** Pantalla principal del centro de notificaciones que categoriza alertas de inventario, estado de dispositivos y discrepancias de datos para la gestión operativa.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/alerts-notifications-main.png" alt="Pantalla principal del centro de notificaciones que categoriza alertas de inventario, estado de dispositivos y discrepancias de datos para la gestión operativa." height="600">
</div>

**Confirmación de Transferencia de Stock**

**Descripción:** Modal de confirmación para transferencias manuales de stock, detallando la diferencia de peso detectada por la báscula y la sincronización con el ERP.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/confirm-stock-transfer-modal.png" alt="Modal de confirmación para transferencias manuales de stock, detallando la diferencia de peso detectada por la báscula y la sincronización con el ERP." height="600">
</div>

**Detalle de Discrepancia de Datos**

**Descripción:** Interfaz de resolución para discrepancias críticas de datos, comparando registros digitales contra lecturas físicas de la báscula y estado del sensor.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/data-mismatch-discrepancy-detail.png" alt="Interfaz de resolución para discrepancias críticas de datos, comparando registros digitales contra lecturas físicas de la báscula y estado del sensor." height="600">
</div>

**Diagnóstico de Hardware sin Conexión**

**Descripción:** Vista detallada de fallo de conexión de hardware, mostrando última telemetría registrada y pasos de diagnóstico para recuperar la conectividad del dispositivo.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/hardware-offline-diagnostic-detail.png" alt="Vista detallada de fallo de conexión de hardware, mostrando última telemetría registrada y pasos de diagnóstico para recuperar la conectividad del dispositivo." height="600">
</div>

**Configuración General del Sistema**

**Descripción:** Panel de configuración regional y de comunicación para ajustar zona horaria, moneda, idioma y preferencias de notificaciones críticas.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/settings-general-configuration.png" alt="Panel de configuración regional y de comunicación para ajustar zona horaria, moneda, idioma y preferencias de notificaciones críticas." height="600">
</div>

**Información Personal del Perfil**

**Descripción:** Interfaz de gestión de perfil de usuario para actualizar información personal, fotografía y verificar el estado de seguridad de la cuenta.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/settings-profile-personal-details.png" alt="Interfaz de gestión de perfil de usuario para actualizar información personal, fotografía y verificar el estado de seguridad de la cuenta." height="600">
</div>

**Información Empresarial del Perfil**

**Descripción:** Formulario de información corporativa que permite definir la actividad comercial, dirección física y categorías de productos gestionados.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/settings-profile-business-info.png" alt="Formulario de información corporativa que permite definir la actividad comercial, dirección física y categorías de productos gestionados." height="600">
</div>

**Gestión de Suscripción y Facturación**

**Descripción:** Gestión de planes de suscripción, métricas de uso del sistema por dispositivos conectados e historial de facturación con descarga de facturas.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/settings-subscription-billing.png" alt="Gestión de planes de suscripción, métricas de uso del sistema por dispositivos conectados e historial de facturación con descarga de facturas." height="600">
</div>

**Directorio de Sucursales**

**Descripción:** Directorio centralizado de sucursales y centros logísticos con indicadores de estado operativo, cantidad de personal y alertas activas.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/settings-branches-directory.png" alt="Directorio centralizado de sucursales y centros logísticos con indicadores de estado operativo, cantidad de personal y alertas activas." height="600">
</div>

**Crear Nueva Sucursal**

**Descripción:** Modal para la creación de nuevas sedes operativas, solicitando datos de contacto, ubicación geográfica y estado de visibilidad inicial.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/settings-branches-create-modal.png" alt="Modal para la creación de nuevas sedes operativas, solicitando datos de contacto, ubicación geográfica y estado de visibilidad inicial." height="600">
</div>

**Editar Sucursal**

**Descripción:** Formulario de edición para sucursales existentes que permite actualizar la información de contacto, imágenes de la instalación y estatus operativo.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/settings-branches-edit-modal.png" alt="Formulario de edición para sucursales existentes que permite actualizar la información de contacto, imágenes de la instalación y estatus operativo." height="600">
</div>

**Advertencia de Eliminación de Sucursal Activa**

**Descripción:** Notificación de restricción de borrado para sucursales con telemetría activa, exigiendo la desactivación previa de las operaciones para mantener la integridad de datos.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/settings-branches-delete-active-warning.png" alt="Notificación de restricción de borrado para sucursales con telemetría activa, exigiendo la desactivación previa de las operaciones para mantener la integridad de datos." height="600">
</div>

**Confirmación de Eliminación Permanente de Sucursal**

**Descripción:** Modal de confirmación crítica para la eliminación permanente de una sucursal, advirtiendo sobre la pérdida de datos históricos y desvinculación de dispositivos.

<div align="center">
  <img src="./assets/images/chapter5/mobile_mockups/settings-branches-delete-confirmation.png" alt="Modal de confirmación crítica para la eliminación permanente de una sucursal, advirtiendo sobre la pérdida de datos históricos y desvinculación de dispositivos." height="600">
</div>

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

**User Goal:** Como usuario registrado, quiero iniciar sesión con mis credenciales o recuperar mi contraseña en caso de olvidarla, para acceder de forma segura a mi cuenta en Restock.

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

![User Flow 8 - Happy Path Web](https://imgur.com/s3dduK2.png)

![User Flow 8 - Happy Path Mobile](https://imgur.com/HnuzQIq.png)

##### Unhappy Path — Desvinculación de dispositivo activo

El administrador decide desvincular un dispositivo activo haciendo clic en "Unlink Scale". El sistema muestra el modal de confirmación advirtiendo que se detendrá el monitoreo del dispositivo. Si cancela, el dispositivo permanece activo. Si confirma, el dispositivo queda desvinculado y sus datos dejan de actualizarse en el sistema.

![User Flow 8 - Unhappy Path A Web](https://imgur.com/bDtH7cv.png)

![User Flow 8 - Unhappy Path A Mobile](https://imgur.com/MKnfwGa.png)

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

### Diseño del dispositivo IoT

Además del diseño de experiencia e interfaces de las aplicaciones convencionales, se detalla a continuación el diseño del dispositivo IoT de Restock, el cual es responsable de capturar, procesar y transmitir en tiempo real las variables físicas de peso, temperatura y humedad ambiental de los insumos almacenados.

Para el diseño metodológico de este dispositivo se adopta el enfoque de los 12 pasos propuesto por Balestrieri et al. (2021). Esta metodología fundamenta las decisiones de diseño en dos restricciones críticas: la capacidad de suministro energético del nodo y los límites de retardo temporal (QoS de latencia) requeridos por el sistema.

<div align="center">
  <img src="https://i.imgur.com/KIXRbiB.png" alt="Flujo del diseño de dispositivos iot en 12 pasos"/>
</div>

#### Paso 1: Definición de los requisitos del sistema

En esta fase preliminar se determinan las bases operacionales del dispositivo a nivel de consumo energético y restricciones temporales para garantizar la consistencia en el diseño de hardware y software.

<table>
  <tr>
    <th> Criterios </th>
    <th> Especificación Técnica </th>
  </tr>
  <tr>
    <td rowspan="3"> <strong> Capacidades de Suministro de Energía </strong> </td>
    <td> <strong> Entorno de Operación: </strong> Los dispositivos operan de forma estática en interiores (cocinas de restaurantes y estanterías retail), donde se dispone de acceso permanente a la red eléctrica comercial. </td>
  </tr>
  <tr>
    <td> <strong> Entrada de Alimentación: </strong> Requiere una entrada estándar de <strong> 5V DC </strong> mediante conector USB-C, con una entrega de corriente mínima de <strong> 2 A </strong> para alimentar de manera estable el microcontrolador, los sensores de carga y el actuador visual local. </td>
  </tr>
  <tr>
    <td> <strong> Restricciones: </strong> Dado el acceso constante a la red de corriente alterna, no se contempla el uso de baterías ni de sistemas de recolección de energía (energy harvesting), simplificando la electrónica del nodo. </td>
  </tr>
  <tr>
    <td rowspan="4"> <strong> Restricciones de Latencia (Time-Delay) </strong> </td>
    <td> <strong> Modelo Basado en Eventos: </strong> El sistema se implementa bajo un paradigma reactivo (event-driven). Los dispositivos entran en modo de espera activa y solo transmiten datos ante variaciones significativas para optimizar el ancho de banda. </td>
  </tr>
  <tr>
    <td> <strong> Sensibilidad Física Local: </strong> Variaciones de masa mayores o iguales a la tolerancia de calibración local (por ejemplo, cambios $\Delta \ge 5\text{ g}$) deben ser muestreadas, filtradas y renderizadas en la interfaz LCD local en un lapso no mayor a 300 ms. </td>
  </tr>
  <tr>
    <td> <strong> Latido de Estado (Heartbeat): </strong> Con el fin de monitorear la salud de la red y el estado en línea de los dispositivos, el nodo envía de manera mandatoria un paquete de estado de hardware ("heartbeat") cada 60 segundos en ausencia de eventos de variación física. </td>
  </tr>
  <tr>
    <td> <strong> Transmisión de Eventos Críticos: </strong> Ante la detección de anomalías ambientales (sobrecalentamiento) o stock crítico, el paquete de datos se prioriza en la cola de red del gateway, asegurando una latencia end-to-end (desde el sensor físico hasta la persistencia en el Cloud) menor a 2.0 segundos. </td>
  </tr>
</table>

#### Paso 2: Elección de la tipología de sistema IoT

A partir de los requisitos del Paso 1, clasificamos el dispositivo dentro del marco taxonómico de sistemas IoT para estructurar el desarrollo del firmware y la gestión de potencia.

<table>
  <tr>
    <th> Parámetro de Clasificación </th>
    <th> Estructura Definida </th>
    <th> Justificación Técnica </th>
  </tr>
  <tr>
    <td> <strong> Suministro de Energía </strong> </td>
    <td> Alimentado por Red (Network-Powered) </td>
    <td> La infraestructura de los restaurantes y almacenes retail proporciona tomas de corriente accesibles directamente en las zonas de instalación de las balanzas. </td>
  </tr>
  <tr>
    <td> <strong> Restricción de Retardo (Time-Delay) </strong> </td>
    <td> Tiempo Real Flexible (Soft Real-Time) </td>
    <td> Aunque se requiere agilidad para la gestión de discrepancias y alertas críticas, un retraso de pocos segundos en la actualización del stock digital no compromete la integridad física del sistema ni la seguridad humana. </td>
  </tr>
  <tr>
    <td> <strong> Tipología Final </strong> </td>
    <td> <strong> Network-powered Soft Real-Time IoT System </strong> </td>
    <td> El dispositivo prioriza la confiabilidad metrológica y la estabilidad de la red local por encima del consumo ultra bajo de energía, manteniendo una latencia predecible. </td>
  </tr>
</table>

#### Paso 3: Definición de requisitos para la capa física

Esta sección detalla los parámetros operativos de adquisición y procesamiento local, abstrayendo temporalmente los modelos comerciales específicos de hardware.

<table>
  <tr>
    <th> Parámetro </th>
    <th> Definición y Requisitos Técnicos </th>
  </tr>
  <tr>
    <td> <strong> Configuración de Elementos </strong> </td>
    <td>  
- 1 Nodo central de adquisición y comunicación (Microcontrolador). <br>
- Sensores de Entrada: 4 transductores de fuerza (celdas de carga) y 1 sensor combinado de temperatura y humedad relativa. <br>
- Actuadores de Salida: 1 pantalla LCD alfanumérica para diagnóstico y lectura local. </td>
  </tr>
  <tr>
    <td> <strong> Incertidumbre Objetivo (Target Uncertainty) </strong> </td>
    <td> 
- Celdas de Carga: Error de linealidad y repetibilidad inferior a $\pm 0.05\%$ a escala completa (F.S.). <br>
- Sensor de Temperatura: Precisión de $\pm 0.5\text{ }^\circ\text{C}$ en un rango de $0$ a $60\text{ }^\circ\text{C}$. <br>
- Sensor de Humedad: Precisión de $\pm 2\%$ de Humedad Relativa (HR) para garantizar la detección de ambientes propensos al deterioro microbiológico.
    </td>
  </tr>
  <tr>
    <td> <strong> Precisión del Actuador Visual </strong> </td>
    <td> La pantalla local debe actualizar su visualización en un máximo de 1.0 segundo tras detectarse un cambio de peso físico, manteniendo la legibilidad del 100% de los caracteres. </td>
  </tr>
  <tr>
    <td> <strong> Capacidad de Procesamiento Local </strong> </td>
    <td>  
- Requiere una arquitectura con soporte para comunicaciones concurrentes de red y procesamiento analógico, con al menos 256 KB de memoria RAM disponible para el stack TCP/IP. <br>
- Funciones requeridas en el firmware: <br>
  1) Algoritmo de filtrado por promedio móvil (sliding window) para atenuar vibraciones. <br>
  2) Rutina de tara adaptativa y calibración del offset de lectura.
  </tr>
</table>

#### Paso 4: Definición de requisitos para la capa de intercambio de datos

Se establecen las especificaciones de comunicación inalámbrica y la seguridad para el transporte de las lecturas físicas hacia los sistemas de procesamiento locales y en la nube.

<table>
  <tr>
    <th> Parámetro </th>
    <th> Definición Técnica </th>
  </tr>
  <tr>
    <td> <strong> Latencia de Transporte Local </strong> </td>
    <td> El retraso de transmisión del paquete desde el nodo hasta el gateway de borde (Edge) debe ser menor a 100 ms bajo condiciones normales de red local. </td>
  </tr>
  <tr>
    <td> <strong> Medio Físico de Transmisión </strong> </td>
    <td> Inalámbrico (Wi-Fi 2.4 GHz) para evitar la instalación de cableado de red en zonas húmedas o de alta temperatura en cocinas y almacenes. </td>
  </tr>
  <tr>
    <td> <strong> Topología de Red </strong> </td>
    <td> Topología en estrella: todos los dispositivos de pesaje de la sucursal se conectan directamente al Access Point central que sirve de enlace con la Raspberry Pi (Edge). </td>
  </tr>
  <tr>
    <td> <strong> Rango Operativo </strong> </td>
    <td> Radio de cobertura de 30 a 50 metros en interiores, con capacidad de superación de atenuaciones por estanterías metálicas de cocina o muros estructurales. </td>
  </tr>
  <tr>
    <td> <strong> Consumo Máximo de Potencia de Radio </strong> </td>
    <td> Se establece un límite de 300 mA durante la fase activa de transmisión de RF (Tx/Rx). Esto previene caídas de tensión localizadas en el bus del nodo que podrían inducir errores de medición analógica en el conversor de las celdas de carga. </td>
  </tr>
  <tr>
    <td> <strong> Criptografía y Seguridad </strong> </td>
    <td> Cifrado local Wi-Fi con soporte WPA2/WPA3. Para la transferencia de datos del Edge a la Nube se implementa HTTPS/TLS 1.3, garantizando que los datos operativos no sean interceptados o manipulados. </td>
  </tr>
</table>

#### Paso 5: Definición de requisitos para la capa de información

En el quinto paso, empezamos a definir quiénes serán los usuarios finales que usarán el dispositivo. Además, se inicia la detección de posibles servicios que cada usuario requiere para el ecosistema IoT de Restock. Por otro lado, se asocia cada servicio identificado con la información necesaria para satisfacer el servicio propuesto.

<table>
  <tr>
    <th> Criterios </th>
    <th> Especificación de Capa </th>
  </tr>
  <tr>
    <td rowspan="2"> <strong> Perfiles de Usuario </strong> </td>
    <td> <strong> Operador de Mantenimiento: </strong> Encargado de validar el correcto funcionamiento, calibración del peso y estabilidad eléctrica del hardware del dispositivo. </td>
  </tr>
  <tr>
    <td> <strong> Administrador del Negocio: </strong> Consume la información del inventario consolidado, define las alertas y umbrales de stock, y gestiona las discrepancias físicas en tiempo real. </td>
  </tr>
  <tr>
    <td rowspan="2"> <strong> Distribución de Servicios </strong> </td>
    <td> <strong> Mantenimiento: </strong> Supervisión de estado del hardware (voltaje del bus, temperatura interna del microcontrolador y uptime). </td>
  </tr>
  <tr>
    <td> <strong> Operativo: </strong> Calibración y puesta a punto (tara), conversión física de peso a unidades de inventario, detección de discrepancias entre stock físico y digital, e históricos de telemetría. </td>
  </tr>
  <tr>
    <td rowspan="3"> <strong> Arquitectura de Procesamiento y Cómputo </strong> </td>
    <td> <strong> En el Nodo Sensor (ESP32): </strong> Captura analógica (ADC 24 bits), filtrado del ruido de señal mediante promediado, visualización en la pantalla LCD local, y publicación de telemetría a través del protocolo MQTT local. </td>
  </tr>
  <tr>
    <td> <strong> En el Gateway (Edge - Raspberry Pi): </strong> Ingesta mediante el broker MQTT local, cálculo del stock real en unidades basado en el peso unitario del insumo, persistencia local en base de datos SQLite, cálculo de promedios locales de peso y ambiente, evaluación de límites para el disparo de alertas inmediatas, y reenvío de telemetría consolidada al Cloud. </td>
  </tr>
  <tr>
    <td> <strong> En el Middleware (Cloud - Spring Boot): </strong> Sincronización del stock físico con los registros lógicos, cálculo final de discrepancias de inventario, persistencia histórica en MongoDB y despacho de notificaciones push a las interfaces web y móviles. </td>
  </tr>
</table>

#### Paso 6: Definición de requisitos para la capa de servicios de aplicación

En esta sección se definen los requisitos de visualización y control que requieren las aplicaciones cliente de Restock para interactuar con el hardware.

<table>
  <tr>
    <th> Servicio </th>
    <th> Especificación de la Interfaz </th>
    <th> Complejidad del Cliente </th>
  </tr>
  <tr>
    <td> <strong> Visualización del Stock Físico </strong> </td>
    <td> Panel local en el display LCD del dispositivo que muestra el stock físico y el estado de la red local. Aplicaciones web y móvil con dashboards interactivos en tiempo real. </td>
    <td> <strong> Baja: </strong> Renderizado pasivo de la telemetría enviada por el middleware. </td>
  </tr>
  <tr>
    <td> <strong> Historiales e Histograma de Telemetría </strong> </td>
    <td> Componente de historial en el frontend (Device History Logs) que muestra las últimas lecturas de peso, temperatura, humedad y estado de salud de hardware directamente en la vista de configuración del dispositivo. </td>
    <td> <strong> Media: </strong> Clasificación de datos temporales, promediado y renderizado de gráficas temporales. </td>
  </tr>
  <tr>
    <td> <strong> Comandos Operativos </strong> </td>
    <td> Interfaz para el envío remoto de comandos de Tara (tara automática a cero) y configuración de factores de escala metrológicos desde la aplicación web al dispositivo. </td>
    <td> <strong> Baja: </strong> Envío de payload JSON mediante llamadas REST (POST) hacia el Edge. </td>
  </tr>
  <tr>
    <td> <strong> Alertas Ambientales y Críticas </strong> </td>
    <td> Alertas sonoras o visuales locales y push en el móvil del administrador al detectarse que la temperatura o humedad superan los límites del insumo configurado. </td>
    <td> <strong> Baja: </strong> Suscripción a servicios de mensajería push y renderizado de banners de alerta. </td>
  </tr>
</table>

#### Paso 7: Elección de la arquitectura de las capas de intercambio de datos y de información

Considerando los requisitos y flujos analizados, se define formalmente la arquitectura tecnológica end-to-end y se evalúan las tolerancias de retraso especificadas en el Paso 1.

**Selección Tecnológica de Arquitectura:**

* **Capa de Intercambio de Datos (Local):** Arquitectura basada en Gateway Edge descentralizado. Los nodos sensores transmiten telemetría local a través de **MQTT sobre Wi-Fi** a una Raspberry Pi 4 que aloja un broker Mosquitto local. El Edge ejecuta el servicio Restock Edge (Python/Flask) que procesa las lecturas de forma local, asegurando su almacenamiento temporal en SQLite y desacoplando la comunicación de red local respecto a la disponibilidad de internet.
* **Capa de Integración de Información (Nube):** Arquitectura Cloud basada en Spring Boot con persistencia no relacional en MongoDB. El Edge Service sincroniza la telemetría y el estado del dispositivo mediante peticiones **HTTPS REST API** hacia el Cloud.

**Análisis Detallado de Retardo en el Flujo de Datos:**

La siguiente tabla desglosa el cálculo de la latencia acumulada en el peor de los escenarios de red para verificar el cumplimiento del límite de QoS de 2.0 segundos:

<table>
  <tr>
    <th> Origen </th>
    <th> Destino </th>
    <th> Protocolo / Canal </th>
    <th> Latencia Estimada (ms) </th>
    <th> Acción Operativa </th>
  </tr>
  <tr>
    <td> Nodo (ESP32) </td>
    <td> Broker MQTT (Edge) </td>
    <td> MQTT sobre Wi-Fi local </td>
    <td> 50 ms </td>
    <td> Publicación inalámbrica del payload de telemetría o salud por parte del firmware. </td>
  </tr>
  <tr>
    <td> Broker MQTT </td>
    <td> Edge Service (Python) </td>
    <td> IPC Local Loopback </td>
    <td> 10 ms </td>
    <td> Lectura interna del servicio de borde al suscribirse al tópico local del broker Mosquitto. </td>
  </tr>
  <tr>
    <td> Edge Service (Pi 4) </td>
    <td> Cloud Service (Spring Boot) </td>
    <td> HTTPS / WAN (REST API) </td>
    <td> 500 ms </td>
    <td> Procesamiento local (conversión de peso a stock), encriptación TLS y POST a la nube. </td>
  </tr>
  <tr>
    <td> Cloud Service </td>
    <td> Base de datos (MongoDB) </td>
    <td> Conector interno de BD </td>
    <td> 150 ms </td>
    <td> Persistencia en MongoDB, comparación de discrepancias con el inventario lógico y generación del evento. </td>
  </tr>
  <tr>
    <td> Cloud Service </td>
    <td> Aplicación Frontend </td>
    <td> WebSockets / HTTPS </td>
    <td> 400 ms </td>
    <td> Transmisión del estado actualizado y visualización de la alerta en tiempo real en la UI del administrador. </td>
  </tr>
  <tr>
    <td colspan="3"> <strong> Latencia Total Acumulada (End-to-End) </strong> </td>
    <td> <strong> 1110 ms (1.11 s) </strong> </td>
    <td> El tiempo acumulado total es menor al límite crítico de 2.0 s establecido en el Paso 1. </td>
  </tr>
</table>

#### Paso 8: Elección de sensores y actuadores

Para satisfacer los requisitos metrológicos y de incertidumbre definidos en el Paso 3, se seleccionan los siguientes componentes de hardware:

<table>
  <tr>
    <th> Parámetro Físico </th>
    <th> Modelo de Componente </th>
    <th> Justificación e Integración Técnica </th>
  </tr>
  <tr>
    <td> <strong> Medición de Masa/Peso </strong> </td>
    <td> Celda de Carga WSS-5KG + Convertidor HX711 </td>
    <td> 
La celda de carga de tipo puente de Wheatstone soporta un peso máximo de 5 kg, ideal para bandejas y recipientes de cocina. Se acopla al chip **HX711**, un convertidor analógico-digital (ADC) de 24 bits especializado en pesaje de alta resolución. Su bajo nivel de ruido eléctrico y su ganancia interna programable de 128 permiten capturar variaciones menores a 1 g con excelente precisión. El chip opera con voltajes lógicos de 2.6V a 5.5V, integrándose perfectamente a la alimentación del nodo.
    </td>
  </tr>
  <tr>
    <td> <strong> Monitoreo de Temperatura y Humedad </strong> </td>
    <td> Sensor Digital DHT22 (AM2302) </td>
    <td>
Se prefiere sobre el modelo DHT11 debido a su mayor precisión metrológica ($\pm 0.5\text{ }^\circ\text{C}$ de error máximo en temperatura y $\pm 2\%$ de error en humedad relativa) y un rango de sensado completo ($0-100\%\text{ HR}$). Envía los datos mediante una salida digital One-Wire con un protocolo serie propio que reduce el uso de pines GPIO en el microcontrolador y elimina la necesidad de convertidores ADC adicionales.
    </td>
  </tr>
  <tr>
    <td> <strong> Interfaz de Usuario Local </strong> </td>
    <td> Pantalla LCD 1602A + Módulo I2C PCF8574 </td>
    <td>
El display alfanumérico de 16 caracteres y 2 líneas proporciona visualización directa en el almacén. Para optimizar el uso de los pines de entrada/salida (GPIO) del microcontrolador, se acopla un módulo expansor I2C basado en el integrado PCF8574, reduciendo la interfaz física de 6 cables de datos a solo 2 líneas seriales (SDA y SCL).
    </td>
  </tr>
</table>

#### Paso 9: Elección del microcontrolador y transceptores de radio del dispositivo

Con los componentes periféricos definidos, se selecciona el hardware para los nodos de captura y el concentrador local.

<table>
  <tr>
    <th> Rol en la Red </th>
    <th> Modelo de Hardware </th>
    <th> Transceptor Integrado </th>
    <th> Justificación Metodológica </th>
  </tr>
  <tr>
    <td> <strong> Nodo Sensor (Balanza) </strong> </td>
    <td> ESP32 DevKitV1 </td>
    <td> Wi-Fi 2.4 GHz (802.11 b/g/n) </td>
    <td> 
Se selecciona este SoC de 32 bits de doble núcleo por sus periféricos integrados de comunicación inalámbrica y su potencia de procesamiento. Ofrece soporte nativo para buses I2C (para la pantalla LCD) y pines digitales rápidos para comunicarse con el módulo HX711 y el sensor DHT22. Además, su memoria interna (520 KB de SRAM y 4 MB de Flash) permite ejecutar de forma concurrente el stack Wi-Fi WPA2, la encriptación local y la lógica de muestreo de peso y ambiente.
    </td>
  </tr>
  <tr>
    <td> <strong> Concentrador (Edge Gateway) </strong> </td>
    <td> Raspberry Pi 4 Model B </td>
    <td> Wi-Fi Dual Band + Ethernet </td>
    <td> 
Esta computadora de placa única (SBC) de 1.5 GHz con arquitectura ARM Cortex-A72 proporciona la capacidad de cómputo necesaria para ejecutar el broker local de mensajería (Mosquitto), la base de datos SQLite y el servicio local de borde (Edge Service). Soporta la ingesta y procesamiento de múltiples balanzas en paralelo sin pérdidas de información, encripta los datos y los sincroniza de manera segura con el Cloud Service.
    </td>
  </tr>
</table>

#### Paso 10: Definición de los algoritmos de procesamiento de datos

Se detallan las rutinas lógicas implementadas en el firmware y software del ecosistema Restock para garantizar la exactitud de los datos.

<table>
  <tr>
    <th> Nombre del Algoritmo </th>
    <th> Responsabilidad y Lógica Matemática </th>
    <th> Nivel de Ubicación </th>
  </tr>
  <tr>
    <td> <strong> Algoritmo de Calibración e Integración de Cero (Tara) </strong> </td>
    <td> 
Establece la relación lineal entre la salida de bits del ADC y el peso en gramos mediante un factor de escala. Permite fijar el valor cero (tara) al encender el dispositivo eliminando el offset inicial del contenedor físico:
$$\text{Peso Calibrado} = \frac{\text{Lectura HX711} - \text{Offset de Tara}}{\text{Factor de Escala}}$$
    </td>
    <td> Nodo Sensor (ESP32) </td>
  </tr>
  <tr>
    <td> <strong> Algoritmo de Filtrado y Muestreo (Sampling Window) </strong> </td>
    <td> 
Atenúa el ruido de alta frecuencia provocado por vibraciones mecánicas sobre la balanza. Aplica un promedio móvil sobre una ventana deslizable de $N$ lecturas (típicamente $N=10$):
$$\text{Peso Filtrado} = \frac{1}{N} \sum_{i=1}^{N} S_i$$
    </td>
    <td> Nodo Sensor (ESP32) </td>
  </tr>
  <tr>
    <td> <strong> Algoritmo de Normalización y Conversión de Variables </strong> </td>
    <td> Transforma la salida del sensor DHT22 en grados Celsius y porcentaje de humedad relativa, validando que el checksum del bus One-Wire sea correcto para descartar lecturas corruptas. </td>
    <td> Nodo Sensor (ESP32) </td>
  </tr>
  <tr>
    <td> <strong> Algoritmo de Transformación de Peso a Stock Unitario </strong> </td>
    <td> 
Calcula el número de unidades de insumo disponibles dividiendo el peso neto corregido entre el peso unitario del producto configurado:
$$\text{Stock Unitario} = \max\left(0, \left\lfloor \frac{W_{\text{neto}}}{W_{\text{unitario}}} \right\rfloor\right)$$
donde $W_{\text{neto}} = W_{\text{filtrado}} - W_{\text{tara}}$.
    </td>
    <td> Gateway (Edge) </td>
  </tr>
  <tr>
    <td> <strong> Algoritmo de Evaluación de Límites y Discrepancias </strong> </td>
    <td> Evalúa si el stock calculado o las variables ambientales se encuentran fuera de los umbrales lógicos configurados en el dispositivo. Si se detecta un desvío o una anomalía que supera la tolerancia ($\pm 15\%$ por defecto), se dispara un evento de alerta. </td>
    <td> Gateway (Edge) </td>
  </tr>
  <tr>
    <td> <strong> Algoritmo de Verificación de Salud del Dispositivo (Self-Diagnostic) </strong> </td>
    <td> Monitorea los parámetros internos del microcontrolador y la SBC (temperatura de CPU, niveles de voltaje, uso de memoria libre y latencia) para detectar fallos inminentes o problemas de alimentación. </td>
    <td> Gateway (Edge) </td>
  </tr>
  <tr>
    <td> <strong> Algoritmo de Conciliación de Inventario </strong> </td>
    <td> Realiza la comparación cruzada entre el stock medido físicamente por el dispositivo y el stock digital registrado en el sistema administrativo para calcular discrepancias. </td>
    <td> Cloud Service </td>
  </tr>
</table>

#### Paso 11: Análisis del esfuerzo computacional de los algoritmos

Para validar la viabilidad del firmware en el nodo periférico y el rendimiento del Gateway, se analiza la complejidad Big O y el impacto de los algoritmos seleccionados.

<table>
  <tr>
    <th> Algoritmo </th>
    <th> Complejidad Temporal (Big O) </th>
    <th> Complejidad Espacial </th>
    <th> Tiempo Estimado de Ejecución </th>
    <th> Ubicación </th>
  </tr>
  <tr>
    <td> Calibración y Tara </td>
    <td> $O(N)$ </td>
    <td> $O(1)$ (Bajo, $< 1\text{ KB}$) </td>
    <td> 100 ms </td>
    <td> Nodo Sensor (ESP32) </td>
  </tr>
  <tr>
    <td> Filtrado y Sampling </td>
    <td> $O(N)$ </td>
    <td> $O(N)$ (Bajo, buffer de $N$ muestras) </td>
    <td> 50 ms </td>
    <td> Nodo Sensor (ESP32) </td>
  </tr>
  <tr>
    <td> Normalización </td>
    <td> $O(1)$ </td>
    <td> $O(1)$ (Mínimo, Bytes) </td>
    <td> 10 ms </td>
    <td> Nodo Sensor (ESP32) </td>
  </tr>
  <tr>
    <td> Transformación a Stock </td>
    <td> $O(1)$ </td>
    <td> $O(1)$ (Bajo, $< 1\text{ KB}$) </td>
    <td> 30 ms </td>
    <td> Gateway (Edge) </td>
  </tr>
  <tr>
    <td> Evaluación de Límites </td>
    <td> $O(1)$ </td>
    <td> $O(1)$ (Mínimo, Bytes) </td>
    <td> 20 ms </td>
    <td> Gateway (Edge) </td>
  </tr>
  <tr>
    <td> Autodiagnóstico de Salud </td>
    <td> $O(1)$ </td>
    <td> $O(1)$ (Bajo, $< 1\text{ KB}$) </td>
    <td> 50 ms </td>
    <td> Gateway (Edge) </td>
  </tr>
  <tr>
    <td> Conciliación de Inventario </td>
    <td> $O(1)$ </td>
    <td> $O(1)$ (Moderado, $\sim 10\text{ KB}$) </td>
    <td> 200 ms </td>
    <td> Cloud Service </td>
  </tr>
</table>

**Justificación Técnica del Esfuerzo Computacional:**

* **Análisis de Complejidad Temporal:** Los algoritmos con complejidad lineal $O(N)$ son la calibración y el muestreo acumulativo (Sampling), debido a que procesan secuencialmente una ventana de $N$ lecturas crudas del ADC para obtener la media estadística del peso. Los algoritmos restantes se ejecutan en tiempo constante $O(1)$, pues corresponden a operaciones aritméticas directas y comparaciones booleanas sobre umbrales predefinidos.
* **Tiempo de Ejecución y Consumo de Recursos:** A una frecuencia de reloj de 240 MHz en el ESP32, los cálculos locales toman fracciones mínimas de milisegundos. El retardo de 50 ms en el muestreo responde principalmente a la velocidad de muestreo fija del chip HX711 (configurable a 10 u 80 muestras por segundo), no a limitaciones de potencia del microcontrolador.
* **Uso de Memoria:** Los búferes requeridos en el ESP32 consumen menos del $1\%$ de los 520 KB de SRAM disponibles, garantizando la estabilidad del firmware frente a fugas de memoria y reservando recursos para la ejecución segura del stack de conectividad.
* **Rendimiento en el Gateway (Edge):** La ejecución de los algoritmos de transformación de stock y validación de límites en la Raspberry Pi se realiza de manera eficiente en milisegundos, permitiendo realizar Edge Analytics con múltiples balanzas concurrentes sin sobrecargar la CPU ARM de 1.5 GHz.

#### Paso 12: Definición de la interfaz de usuario gráfica

Esta etapa final define los módulos de interacción gráfica y visualización diseñados para comunicar el estado del hardware y la telemetría recolectada al usuario.

<table>
  <tr>
    <th> Módulo de Interfaz </th>
    <th> Plataformas de Visualización </th>
    <th> Elementos Clave de la UI </th>
    <th> Justificación Funcional </th>
  </tr>
  <tr>
    <td> <strong> Monitoreo de Salud de Dispositivos </strong> </td>
    <td> Aplicación Web / Historial local (Health Log) </td>
    <td> Indicadores de conectividad, temperatura de CPU, voltaje y RAM libre. </td>
    <td> Permite a los operadores realizar autodiagnósticos de hardware y prever desconexiones o fallos eléctricos en tiempo real. </td>
  </tr>
  <tr>
    <td> <strong> Historial en Tiempo Real </strong> </td>
    <td> Web (Device Onboarding sidebar log panel) </td>
    <td> Panel con pestañas interactivas "Weight Log" (historial de peso) y "Health Log" (historial de salud física). </td>
    <td> Ofrece trazabilidad detallada del estado operativo del hardware directamente en la vista de configuración del dispositivo. </td>
  </tr>
  <tr>
    <td> <strong> Inventario Físico Activo </strong> </td>
    <td> Aplicación Web / Aplicación Móvil </td>
    <td> Monitor de stock convertido en unidades y masa neta (kg o g). </td>
    <td> Proporciona el stock consolidado para facilitar la toma de decisiones rápidas de reabastecimiento en cocinas o almacenes. </td>
  </tr>
  <tr>
    <td> <strong> Comandos de Calibración </strong> </td>
    <td> Aplicación Web </td>
    <td> Botones para comando remoto de tara ("Reset Tare") y configuración de peso unitario. </td>
    <td> Permite el control remoto de los recursos físicos (Resource Control) desde el dashboard del administrador sin requerir interacción física directa con el nodo. </td>
  </tr>
  <tr>
    <td> <strong> Historial de Conciliación y Discrepancias </strong> </td>
    <td> Aplicación Web </td>
    <td> Gráficas temporales de peso vs tiempo y comparador de stock lógico vs stock físico. </td>
    <td> Visualiza de forma agregada las discrepancias físicas identificadas por el dispositivo y permite documentar las justificaciones operativas. </td>
  </tr>
</table>

### Diseño físico y de circuito del dispositivo IoT

Por otro lado, se realiza una propuesta de diseño físico y del circuito del dispositivo IoT, el cual ayuda a tener una idea de los componentes a usar y cómo se conectan con el ESP32 central del dispositivo.

**Diseño del circuito:**

El diseño de circuito incluye la lectura de datos de peso, temperatura y humedad de los sensores y la exhibición de los datos procesados en el display LCD.

En la siguiente imagen elaborada en Cirkit Designer, se muestra el prototipo físico del dispositivo IoT, el cual incluye la ubicación de los sensores, el display LCD y el microcontrolador ESP32. Además, se muestran las conexiones eléctricas entre los componentes para una mejor visualización del diseño del circuito.

<div align="center">
  <img src="https://i.ibb.co/pB2Gny8J/image.png" alt="Prototipo físico del dispositivo IoT" width="450px"/>
</div>

**Diseño físico:**

El diseño físico del dispositivo IoT de Restock se plantea como una plataforma de pesaje de perfil bajo, pensada para colocarse en la base de estantes de almacenes, restaurantes o tiendas retail. Su forma rectangular y compacta permite ubicar productos, cajas o bandejas sobre la superficie sin elevar demasiado la carga ni interferir con el uso cotidiano del estante.

El dispositivo integra una pantalla LCD 16x2 en la parte superior para mostrar una métrica local a la vez, como peso, temperatura o humedad. Además, considera cuatro celdas de carga distribuidas en las esquinas para mejorar la estabilidad de la medición, un módulo HX711 para la conversión de señal, un ESP32 como nodo principal de captura y transmisión, y un sensor DHT22 para el monitoreo ambiental del producto almacenado. La entrada de alimentación de 5V DC se ubica en un lateral para facilitar la conexión sin afectar la plataforma de pesaje.

La siguiente propuesta muestra el diseño físico externo del dispositivo, incluyendo la vista superior, frontal y lateral. En ella se evidencia el perfil bajo del prototipo, la ubicación de la pantalla LCD, la entrada de alimentación de 5V DC y las dimensiones aproximadas consideradas para su uso en la base de estantes.

<div align="center">
  <img src="assets/images/chapter5/iot_design/diseno_fisico.png" alt="Prototipo físico del dispositivo IoT" width="450px"/>
</div>

La vista explosionada permite observar la distribución interna de los principales componentes electrónicos del dispositivo. Se identifican las celdas de carga ubicadas en las esquinas, el módulo HX711, el ESP32, el sensor DHT22, la pantalla LCD 16x2 y la base inferior que protege el circuito interno del prototipo.

<div align="center">
  <img src="assets/images/chapter5/iot_design/diseno_fisico_expandido.png" alt="Prototipo físico del dispositivo IoT" width="450px"/>
</div>

### Flujos de interacción del dispositivo IoT

Los flujos de interacción del dispositivo IoT representan la forma en que el usuario, el hardware y el sistema Restock se relacionan durante la operación diaria. Estos flujos permiten evidenciar que el diseño físico no solo responde a una distribución de componentes, sino también a decisiones de uso, instalación, monitoreo y mantenimiento.

**Flujo 1: Instalación y encendido del dispositivo IoT**

Este flujo describe la secuencia inicial de puesta en funcionamiento del dispositivo IoT dentro del entorno de uso. Se muestra cómo el operador instala el dispositivo en la base del estante, conecta la alimentación eléctrica y permite que el sistema inicie, verifique sus componentes y establezca comunicación con la capa Edge y la nube.

<div align="center">
  <img src="assets/images/chapter5/iot_design/flujo1.png" alt="Prototipo físico del dispositivo IoT" width="450px"/>
</div>

**Flujo 2: Monitoreo normal de inventario**

Este flujo representa el funcionamiento habitual del dispositivo durante la operación diaria del sistema. A través de este proceso, el dispositivo captura el peso del producto colocado sobre la plataforma, procesa la lectura localmente y la transmite hacia la capa Edge y el backend para mantener actualizado el inventario físico en tiempo casi real.

<div align="center">
  <img src="assets/images/chapter5/iot_design/flujo2.png" alt="Prototipo físico del dispositivo IoT" width="450px"/>
</div>

**Flujo 3: Monitoreo ambiental del producto**

Este flujo muestra cómo el dispositivo supervisa las condiciones ambientales del entorno donde se encuentra almacenado el producto. En particular, se describe la captura de temperatura y humedad, su procesamiento en el nodo IoT y su evaluación posterior en la capa Edge, con el fin de registrar el estado ambiental o detectar posibles condiciones fuera del rango esperado.

<div align="center">
  <img src="assets/images/chapter5/iot_design/flujo3.png" alt="Prototipo físico del dispositivo IoT" width="450px"/>
</div>

**Flujo 4: Alerta por stock crítico o condición ambiental**

Este flujo presenta el comportamiento del sistema ante la detección de una situación crítica relacionada con el inventario o el ambiente. A partir de la lectura enviada por el dispositivo, la capa Edge analiza la información y, si identifica una anomalía, el backend genera una alerta para que el administrador tome una acción correctiva oportuna.

<div align="center">
  <img src="assets/images/chapter5/iot_design/flujo4.png" alt="Prototipo físico del dispositivo IoT" width="450px"/>
</div>

<div style="page-break-after: always;"></div>
