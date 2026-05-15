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

### 5.2.1. Organization Systems

### 5.2.2. Labeling Systems

### 5.2.3. SEO Tags and Meta Tags

### 5.2.4. Searching Systems

### 5.2.5. Navigation Systems

## 5.3. Landing Page UI Design

### 5.3.1. Landing Page Wireframe

### 5.3.2. Landing Page Mock-up

## 5.4. Applications UX/UI Design

### 5.4.1. Applications Wireframes

### 5.4.2. Applications Wireflow Diagrams

### 5.4.2. Applications Mock-ups

### 5.4.3. Applications User Flow Diagrams

## 5.5. Applications Prototyping

## 5.6. IoT Device Design

### Diseño del dispositivo IoT

Además del diseño de experiencia e interfaces de las aplicaciones convencionales, también es necesario detallar el diseño del dispositivo IoT del proyecto, el cual se encarga de tomar medidas de peso, temperatura y humedad del suministro que se encuentre almacenado.
Por un lado, se utiliza la propuesta de 12 pasos para el diseño de dispositivos IoT hecha por Eulalia Balestrieri, Luca De Vito, Francesco Lamonaca, Francesco Picariello, Sergio Rapuano y Ioan Tudosa, la cual se basa en capacidades de suministro de energía y restricciones de retraso de tiempo (time-delay) que deba poseer el dispositivo.

<div align="center">
  <img src="https://i.imgur.com/KIXRbiB.png" alt="Flujo del diseño de dispositivos iot en 12 pasos"/>
</div>

#### Paso 1: Definición de los requisitos del sistema

En este paso se toma en consideración los requisitos en general del sistema. Para que sean específicos y no redunden con pasos siguientes, se definen requisitos basados en la capacidad de suministro de energía del dispositivo y las restricciones de retraso de tiempo.

<table>
  <tr>
    <th> Criterios </th>
    <th> Especificación </th>
  </tr>
  <tr>
    <td rowspan="3"> <strong> Capacidades de suministro de energía </strong> </td>
    <td> <strong> Centro de operación: </strong> El sistema operará en entornos cerrados (más específicamente, en almacenes) de las tiendas retail y restaurantes donde se dispone de acceso constante a la red eléctrica comercial.  </td>
  </tr>
  <tr>
    <td> <strong> Entrada de alimentación: </strong> Se requiere una entrada de alimentación estándar (enchufe) que proporcione <strong> 5V DC </strong> con una capacidad de corriente mínima de <strong> 2 A </strong> para cubrir el consumo del microcontrolador y los sensores periféricos. </td>
  </tr>
  <tr>
    <td> <strong> Limitaciones: </strong> No se contempla el uso de baterías ni sistemas de recolección de energía (harvesting). </td>
  </tr>
  <tr>
    <td rowspan="4"> <strong> Restricciones de time-delay </strong> </td>
    <td> <strong> Sistema basado en eventos: </strong> El sistema operará bajo un modelo de programación reactiva (event-driven) para optimizar la eficiencia del procesamiento en el borde (Edge Analytics).  </td>
  </tr>
  <tr>
    <td> <strong> Reacción ante cambios físicos: </strong> La detección de cambios físicos (cambios de peso ≥ 5–10 g) deberá activar una notificación inmediata con un tiempo de respuesta en el nodo no mayor a 300 ms. </td>
  </tr>
  <tr>
    <td> <strong> Lectura de estado de salud: </strong> Para garantizar la calidad de servicio (QoS) y la detección de fallos de red, el sistema enviará un mensaje de estado ("heartbeat") cada 60 segundos en ausencia de eventos. </td>
  </tr>
  <tr>
    <td> <strong> Reacción ante eventos críticos: </strong> Ante un evento crítico (discrepancia detectada o temperatura fuera de rango), el sistema priorizará este paquete sobre el tráfico normal, garantizando una latencia end-to-end (sensor a nube) menor a 2 segundos para permitir una toma de decisiones en tiempo casi real por parte del administrador </td>
  </tr>
</table>

#### Paso 2: Elección de la tipología de sistema IoT

A continuación, se identifica la tipología adecuada para nuesto sistema IoT basándonos en las mismas características que el paso anterior (capacidad de suministro de energía y restricciones de time-delay).
Esto significa, escoger una unión de estructuras definidas entre los dos parámetros mencionados (alimentado por red o batería y en tiempo real o con retraso), lo cual ayuda a enfocar mejor las decisiones de diseño en los próximos pasos.

<table>
  <tr>
    <th> Parámetro de clasificación </th>
    <th> Estructura definida </th>
    <th> Justificación técnica </th>
  </tr>
  <tr>
    <td> <strong> Capacidades de suministro de energía </strong> </td>
    <td> Alimentado por red (Network-powered) </td>
    <td> Los dispositivos se instalarán en espacios cerrados (almacenes) con acceso a la red eléctrica comercial de la tienda o restaurante. </td>
  </tr>
  <tr>
    <td> <strong> Restricción de retardo (time-delay) </strong> </td>
    <td> High Delay (No Real-Time) </td>
    <td> La aplicación permite latencias de segundos para la actualización de stock físico, no siendo una aplicación de seguridad crítica. </td>
  </tr>
  <tr>
    <td> <strong> Tipología Final </strong> </td>
    <td> Network-powered IoT system </td>
    <td> Clasificación estándar para sistemas alimentados por red sin restricciones críticas de tiempo. </td>
  </tr>
</table>

#### Paso 3: Definición de requisitos para la capa física

Luego, se definen los nodos, sensores y actuadores necesarios para el dispositivo. En este paso, no se entra en detalle de modelos de sensores o actuadores, sino que se detalla lo relacionado a la lectura de datos que realizan los sensores y la precisión de los actuadores.

<table>
  <tr>
    <th> Parámetro </th>
    <th> Definición </th>
  </tr>
  <tr>
    <td> <strong> Número y tipos de nodos, sensores y actuators  </strong> </td>
    <td>  
- Se requiere 1 nodo IoT integral para el dispositivo (Smart Inventory Device). <br>
- Sensores: 4 celdas de carga, 1 sensor digital de temperatura y 1 de humedad. <br>
- Actuadores: 1 Display de tipo LCD para retroalimentación local al usuario </td>
  </tr>
  <tr>
    <td> <strong> Target uncertainty, relacionada con las cantidades físicas medidas por cada sensor </strong> </td>
    <td> 
- El sensor de celda de carga debe tener una precisión máxima de ±0.05% F.S. (Full Scale). <br>
- El sensor de temperatura debe tener una precisión máxima de ±0.5 °C (grados celsius). <br>
- El sensor de humedad debe tener una precisión máxima de ±2% HR (humedad relativa) para detección de ambientes propensos a descomposición.
    </td>
  </tr>
  <tr>
    <td> <strong> Target accuracy and precision de los actuadores </strong> </td>
    <td> LCD: Garantizar una tasa de refresco de datos procesados (Edge) cada 1 segundo con integridad de caracteres del 100%, asegurando que la lectura física coincida con la telemetría enviada. </td>
  </tr>
  <tr>
    <td> <strong> Processing Power para los algoritmos de procesamiento de datos que se implementarán en el nodo </strong> </td>
    <td>  
- Se requiere una memoria RAM de al menos 256 KB para manejar el stack de WiFi y el buffer de datos. <br>
- Algoritmos: Implementación de Edge Analytics mediante: <br>
  1) Filtro de promedio móvil para estabilizar el peso. <br>
  2) Algoritmo de compensación térmica y tara automática basada en memoria no volátil (NVS).
  </tr>
</table>

#### Paso 4: Definición de requisitos para la capa de intercambio de datos

Continuando con el cuarto paso, aquí se define la forma en la que los datos son transportados, es decir, cómo viajan desde el dispositivo al gateway. Es por eso que, se definen restricciones de tiempo para el transporte, protocolos de comunicación y de red, la distancia entre nodos y gateway y qué tipo de seguridad se aplica a los datos para un traslado seguro.

<table>
  <tr>
    <th> Parámetro </th>
    <th> Definición </th>
  </tr>
  <tr>
    <td> <strong> Máximo time-delay permitido </strong> </td>
    <td> El retardo en la transmisión del paquete desde el nodo hasta el gateway no debe exceder los 500 ms para asegurar que la latencia end-to-end total se mantenga bajo los 2 segundos definidos en el Paso 1. </td>
  </tr>
  <tr>
    <td> <strong> Tipología de comunicación </strong> </td>
    <td> Se requiere una comunicación inalámbrica (wireless) debido a la necesidad de moLilidad y facilidad de instalación en góndolas en tiendas retail y almacenes de restaurantes y tiendas retail, evitando el cableado estructurado costoso. </td>
  </tr>
  <tr>
    <td> <strong> Tipología de la red </strong> </td>
    <td> Topología de estrella, donde cada dispositivo se comunica directamente con un punto de acceso (Access Point/Router) central. </td>
  </tr>
  <tr>
    <td> <strong> Distancias de comunicación </strong> </td>
    <td> Red local: el gateway y los dispositivos se encuentran en el mismo espacio físico. El sistema debe operar en un rango de 30 a 50 metros en interiores, considerando la penetración de obstáculos como estanterías metálicas o paredes de cocina. </td>
  </tr>
  <tr>
    <td> <strong> Consumo de potencia máximo </strong> </td>
    <td> 
Se establece un límite de consumo máximo de 300 mA para la etapa de radio durante ráfagas de transmisión activa (Tx/Rx). Dado que el sistema es alimentado por red (network-powered), el objetivo de este límite es independiente del ahorro energético, centrándose exclusivamente en garantizar la estabilidad del bus de sensores y evitar caídas de tensión (brownouts). Este valor se mantiene dentro del Power Budget de 2000 mA definido en el Paso 1, permitiendo un margen de maniobra suficiente para el funcionamiento simultáneo de la lógica de control, los sensores de alta precisión y el actuador visual (LCD). </td>
  </tr>
  <tr>
    <td> <strong> Tipo de criptografía de datos </strong> </td>
    <td> 
Se requiere el uso de TLS 1.2/1.3 para la comunicación nodo-nube y soporte para cifrado AES-256. El dispositivo debe ser compatible con protocolos de seguridad WPA2/WPA3 para su integración en la infraestructura WiFi del cliente. Esto garantiza la integridad de los datos de inventario y evita interceptaciones en la red del restaurante. </td>
  </tr>
</table>

#### Paso 5: Definición de requisitos para la capa de información

En el quinto paso, empezamos a definir quienes serán los usuarios finales que usarán el dispositivo. Además, se inicia la detección de posibles servicios que cada usuario requiere para el ecosistema IoT de Restock. Por otro lado, se asocia cada servicio identificado con la información necesaria para satisfacer el servicio propuesto.

<table>
  <tr>
    <th> Criterios </th>
    <th> Especificación </th>
  </tr>
  <tr>
    <td rowspan="2"> <strong> Definición de usuarios finales </strong> </td>
    <td> <strong> Operador del sistema: </strong> son los encargados del mantenimiento de dispositivos y de su estado.  </td>
  </tr>
  <tr>
    <td> <strong> Administrador de tienda retail o restaurante: </strong> usuarios que gestionan el inventario de sus productos y su bienestar para evitar pérdidas y tener un control de las operaciones del inventario.  </td>
  </tr>
  <tr>
    <td rowspan="2"> <strong> Servicios por usuario final identificado </strong> </td>
    <td> <strong> Operador del sistema: </strong> supervisión del estado del dispositivo/nodo (uptime, conectividad).  </td>
  </tr>
  <tr>
    <td> 
<strong> Administrador de tienda retail o restaurante: </strong> configuración de producto asignado al dispositivo, monitoreo del estado de un producto (frescura ambiental), recibir alertas por estado crítico del producto (quiebre de stock o degradación ambienta), monitoreo de desfase entre stock físico y digital. </td>
  </tr>
  <tr>
    <td rowspan="5"> <strong> Necesidades de información para satisfacer cada servicio identificado </strong> </td>
    <td> <strong> Supervisión del estado del dispositivo: </strong> se necesitan datos de salud que envían los dispositivos como temperatura de CPU, voltaje actual (reporte de uptime y estabilidad de voltaje del nodo). </td>
  </tr>
  <tr>
    <td> <strong> Configuración de asignación de producto al dispositivo: </strong> se necesitan los datos del producto asignado como peso aproximado por producto, límites de stock y nombre. </td>
  </tr>
  <tr>
    <td> <strong> Monitoreo del estado de productos: </strong> se necesita el peso leído por las celdas de carga y el peso aproximado del producto configurado y los datos leídos por los sensores de temperatura y humedad. </td>
  </tr>
  <tr>
    <td> <strong> Generación de alertas por eventos críticos detectados: </strong> se necesitan los límites de stock, temperatura y humedad configurados por el usuario para evaluar el dato leído del dispositivo. </td>
  </tr>
  <tr>
    <td> <strong> Supervisión de desafe entre stock físico y digital: </strong> se necesita el valor convertido de kilogramos a "unidades de producto" tras aplicar el factor de peso unitario y el dato del stock digital almacenado en la nube. </td>
  </tr>
  <tr>
    <td rowspan="2"> <strong> Arquitectura de procesamiento (Nodo vs. Nube) </strong> </td>
    <td> <strong> En el Gateway: </strong> Filtrado de ruido (promedio móvil), detección de eventos de cambio de peso asíncronos y evaluación del estado de salud de los dispositivos. </td>
  </tr>
  <tr>
    <td> <strong> En Cloud: </strong> Comparación del stock físico recibido con la base de datos de inventario digital y gestión de logs históricos </td>
  </tr>
  <tr>
    <td rowspan="2"> <strong> Evaluación de complejidad computacional </strong> </td>
    <td> <strong> Gateway: </strong> Baja complejidad (algoritmos lineales de filtrado y comparación de umbrales), ideal para el microcontrolador a seleccionar. </td>
  </tr>
  <tr>
    <td> <strong> Nube: </strong> Complejidad media (consultas a base de datos en tiempo real y orquestación de notificaciones push/correo). </td>
  </tr>
  <tr>
    <td rowspan="2"> <strong> Tiempo de procesamiento requerido </strong> </td>
    <td> <strong> Información de stock: </strong> Generación del dato integrado en menos de 700 ms tras recibir el evento del nodo.  </td>
  </tr>
  <tr>
    <td> <strong> Alertas por eventos críticos: </strong> Disparo de notificación en menos de 1 segundo tras la detección de la anomalía. </td>
  </tr>
</table>

#### Paso 6: Definición de requisitos para la capa de servicios de aplicación

Ya habiendo definido los servicios en el anterior paso y la información necesaria para cumplir con estos servicios, en este paso se definen los requisitos para dichos servicios.
Estos requisitos incluyen un resumen de la interfaz o interfaces que se requieren para dicho servicio. Además, se determina la complejidad de los algoritmos asociados con los servicios identificados.

<table>
  <tr>
    <th> Requisitos </th>
    <th> Especificación de requisitos asociados </th>
    <th> Complejidad de Algoritmos en Disp. Usuario </th>
  </tr>
  <tr>
    <td> <strong> Servicio de monitoreo de estado de un producto </strong> </td>
    <td>  
- Uso del Display LCD en el dispositivo para mostrar el stock de un producto asociado. <br>
- Uso del Display LCD en el dispositivo para mostrar la temperatura y humedad actual del producto asociado. <br>
- Interfaz gráfica en las aplicaciones web y móvil para visualizar el producto y su información de estado actual.
    </td>
    <td> Baja: Renderizado de datos en tiempo real recibidos desde el middleware. </td>
  </tr>
  <tr>
    <td> <strong> Servicio de resumen de información recolectada </strong> </td>
    <td>  
- Interfaz gráfica en las aplicaciones web y móvil donde se visualizan las alertas generadas recientemente. <br>
- Gráficos que muestren la información de estado de un producto (variación de stock, temperatura y humedad).
    </td>
    <td> Media: Procesamiento de datos históricos y renderizado de bibliotecas gráficas. </td>
  </tr>
  <tr>
    <td> <strong> Servicio de configuración de dispositivos </strong> </td>
    <td>  
- Interfaz gráfica en la aplicación web donde el usuario registra un dispositivo a su nombre con el uso de un código especial asignado a dicho dispositivo. <br>
- Interfaz gráfica en la aplicación web donde el usuario configura el dispositivo asignándole un producto registrado.
    </td>
    <td> Baja: Gestión de formularios estándar y envío de comandos CRUD. </td>
  </tr>
  <tr>
    <td> <strong> Servicio de configuración de información sobre productos </strong> </td>
    <td>  
- Interfaz gráfica en las aplicaciones web y móvil donde el usuario puede configurar información del producto como nombre y peso promedio. <br>
- Opción de asignar límites de stock a un producto. <br>
- Opción de definir una temperatura y humedad adecuada para el producto registrado.
    </td>
    <td> Baja: Interfaz de entrada de datos y actualización de parámetros en la nube. </td>
  </tr>
  <tr>
    <td> <strong> Servicio de mantenimiento de dispositivos </strong> </td>
    <td>  
- Envío automático de alertas ante anomalías técnicas detectadas (caídas de voltaje o pérdida de conexión). <br>
- Módulo de Reporte: Formulario simple en el dashboard para que el administrador registre o reporte fallas manuales del nodo en la aplicación Web.
    </td>
    <td> Baja: Lógica de activación de disparadores (triggers) de eventos y manejo de formularios. </td>
  </tr>
  <tr>
    <td> <strong> Servicio de alertas por estado de productos </strong> </td>
    <td>  
- Panel donde se reunen las alertas generadas por el sistema en las aplicaciones Web y Móvil. <br>
- Cuando algún dato leído por el dispositivo esté fuera de los límites definidos, se alerta al usuario.
    </td>
    <td> Baja: Lógica de recepción y visualización de notificaciones push. </td>
  </tr>
</table>

#### Paso 7: Elección de la arquitectura de las capas de intercambio de datos y de información

Con los requisitos más claros, se elige la arquitectura final para las capas de intercambio de datos e integración de información. Además, se analizan las restricciones de tiempo de los pasos anteriores para evaluar la arquitectura elegida.

**Selección de arquitectura**

<table>
  <tr>
    <th> Capa </th>
    <th> Arquitectura seleccionada </th>
    <th> Justificación técnica </th>
  </tr>
  <tr>
    <td> <strong> Intercambio de Datos </strong> </td>
    <td> Arquitectura basada en Nodo Concentrador (SBC) </td>
    <td> 
Se selecciona un concentrador basado en una Single Board Computer (SBC) para centralizar la recepción de datos provenientes de los nodos sensores IoT. Este concentrador actúa como capa Edge, recibiendo lecturas de peso, temperatura, humedad y estado del dispositivo, para luego validarlas, procesarlas y publicar la telemetría procesada hacia la nube mediante MQTT sobre WiFi. Esto permite una gestión local más robusta, desacopla los nodos sensores del backend y facilita la comunicación segura mediante TLS/SSL planteada en el Paso 4.
    </td>
  </tr>
  <tr>
    <td> <strong> Integración de Información </strong> </td>
    <td> Arquitectura Monolítica en la Nube </td>
    <td>
Para los servicios definidos en el Paso 5, se opta por un monolito desarrollado en Spring Boot con MongoDB. Según la fuente, esta capa debe asegurar la interoperabilidad y protección de datos. Un monolito centraliza el procesamiento de inventario y la lógica de negocio, facilitando el mantenimiento y despliegue inicial del sistema Restock.
    </td>
  </tr>
</table>

**Análisis de retardo en la comunicación en la arquitectura**

<table>
  <tr>
    <th> Segmento del flujo de datos </th>
    <th> Acción técnica </th>
    <th> Retardo estimado (ms) </th>
    <th> Justificación </th>
  </tr>
  <tr>
    <td> <strong> Nodo → Concentrador (Edge) </strong> </td>
    <td> Comunicación Local (WiFi Direct/Serial) </td>
    <td> 200 ms </td>
    <td> Los nodos sensores envían los datos de telemetría al concentrador local para su procesamiento inicial. </td>
  </tr>
  <tr>
    <td> <strong> Nodo Concentrador (Edge) → Broker MQTT </strong> </td>
    <td> Publicación vía MQTT/TLS </td>
    <td> 400 ms </td>
    <td> El Edge procesa el dato y lo publica en el broker bajo cifrado para asegurar la privacidad. </td>
  </tr>
  <tr>
    <td> <strong> Broker MQTT → Cloud </strong> </td>
    <td> Suscripción y Procesamiento </td>
    <td> 300 ms </td>
    <td> El servidor recibe el mensaje y actualiza el estado del stock en la base de datos. </td>
  </tr>
  <tr>
    <td> <strong> Cloud  → Aplicación </strong> </td>
    <td> Comunicación via API/HTTPS </td>
    <td> 200 ms </td>
    <td> El usuario consulta el estado vía API HTTPS o recibe la alerta de inventario crítico. </td>
  </tr>
  <tr>
    <td> <strong> Total Estimado (End-to-End) </strong> </td>
    <td> Latencia total de transporte </td>
    <td> 1500 ms (1.5s) </td>
    <td> El tiempo acumulado es menor al límite de 2.00 s definido en la QoS del Paso 1. </td>
  </tr>
</table>

#### Paso 8: Elección de sensores y actuadores

Al tener definida la arquitectura y la comunicación entre nodos y gateway, es momento de elegir los sensores y actuadores necesarios que cumplan con los requisitos identificados. Estos requisitos se centran en incertidumbre máxima, dato a leer y capacidad de suministro de energía.

<table>
  <tr>
    <th> Sensor o actuador identificado </th>
    <th> Modelo elegido </th>
    <th> Justificación técnica </th>
  </tr>
  <tr>
    <td> <strong> Medición de peso </strong> </td>
    <td> Celda de carga WSS-5KG + Módulo HX711 </td>
    <td> 
La celda de carga permite un rango de hasta 5kg, ideal para productos de restaurante. El HX711 actúa como un convertidor analógico-digital (ADC) de 24 bits, lo que garantiza una alta resolución metrológica para detectar variaciones mínimas de stock. Eléctricamente, opera entre 2.6V y 5.5V, siendo compatible con los niveles lógicos del nodo.
    </td>
  </tr>
  <tr>
    <td> <strong> Medición de Temperatura y Humedad </strong> </td>
    <td> Sensor Digital DHT22 (AM2302) </td>
    <td>
Se elige sobre el DHT11 por su mayor precisión (±0.5°C frente a ±2°C) y un rango de humedad más amplio (0-100%). Proporciona una señal digital mediante un bus de un solo cable, lo que facilita la integración y reduce el ruido eléctrico en la medición. Además, es más preciso que su versión anterior el DHT11 para estas mediciones.
    </td>
  </tr>
  <tr>
    <td> <strong> Interfaz Visual Local (Actuador) </strong> </td>
    <td> Display LCD 1602A con Módulo I2C (PCF8574) </td>
    <td>
Este actuador de información permite visualizar el estado del stock "in situ" sin necesidad de la app. El uso del protocolo I2C es una decisión eléctrica clave, ya que reduce el uso de pines GPIO de 6 a solo 2 (SDA/SCL), optimizando los recursos del microcontrolador.
    </td>
  </tr>
</table>

#### Paso 9: Elección del microcontrolador y transceptores de radio del dispositivo

Previamente se definieron los sensores y actuadores que se encargan de actuar ante eventos del entorno y ante comandos, respectivamente. Sin embargo, ahora es momento de definir cómo es que estos datos van a ser comunicados hacia el gateway.
Es por ello, que, se define, a su vez, el modelo del 'cerebro' del dispositivo y el gateway.

<table>
  <tr>
    <th> Nodo asignado </th>
    <th> Modelo seleccionado </th>
    <th> Transceptor de radio </th>
    <th> Justificación </th>
  </tr>
  <tr>
    <td> <strong> Nodo Sensor (Dispositivo) </strong> </td>
    <td> ESP32 DevKitV1 </td>
    <td> Wi-Fi 802.11 b/g/n (Integrado) </td>
    <td> 
Se selecciona este System-on-a-Chip (SoC) por su bajo consumo en modos de suspensión y su doble núcleo de 240 MHz, suficiente para el filtrado de datos. Cuenta con los periféricos necesarios: pines GPIO para el DHT22 y bus I2C para el LCD. Opera a 3.3V, compatible con los sensores elegidos en el Paso 8. Se encarga de controlar el hardware del dispositivo como sensores y actuadores. Además, es el encargado de transmitir los datos leídos al gateway.
    </td>
  </tr>
  <tr>
    <td> <strong> Nodo Concentrador (Gateway) </strong> </td>
    <td> Raspberry Pi 4 Model B </td>
    <td> Wi-Fi Dual Band + Bluetooth 5.0 </td>
    <td> 
Al ser una Single Board Computer (SBC), ofrece una potencia de 1.5 GHz y hasta 4GB de RAM, superando ampliamente a un microcontrolador para tareas de Edge Analytics. Su capacidad de procesamiento permite gestionar el Broker MQTT local y la comunicación segura hacia la nube sin cuellos de botella. Se encarga de la recepción de datos de los dispositivos asignados y procesar toda la información para obtener un conjunto de datos limpios y útiles para los usuarios finales.
    </td>
  </tr>
</table>

#### Paso 10: Definición de los algoritmos de procesamiento de datos

A continuación, se definen los algoritmos necesarios para procesar los datos en las diversas capas del ecosistema IoT.
Para este caso, se definen algoritmos que se ejecutan en el nodo (ESP32), en el gateway y en la nube. Además, se brinda una breve descripción de la responsabilidad del algoritmo a implementar.

<table>
  <tr>
    <th> Algoritmo a implementar </th>
    <th> Responsabilidad </th>
    <th> Ubicación </th>
  </tr>
  <tr>
    <td> <strong> Algoritmo de calibración (Calibración y Tara) </strong> </td>
    <td> Calibrar los datos leídos por los sensores antes de enviarlos al gateway. Ejecuta la rutina de ajuste del sensor HX711 usando un peso de referencia para eliminar el offset inicial. </td>
    <td> En el Nodo Sensor (ESP32) </td>
  </tr>
  <tr>
    <td> <strong> Algoritmo de filtrado de Ruido (Sampling) </strong> </td>
    <td> Implementa un método de muestreo consciente de la energía para promediar lecturas y eliminar fluctuaciones eléctricas en los sensores de temperatura y peso. </td>
    <td> En el Nodo Sensor (ESP32) </td>
  </tr>
  <tr>
    <td> <strong> Algoritmo de normalización de Datos </strong> </td>
    <td> Convierte las lecturas de bits del ADC (HX711) y el sensor DHT22 a unidades del SI (kg, °C, %) antes de su transmisión inalámbrica. </td>
    <td> En el Nodo Sensor (ESP32) </td>
  </tr>
  <tr>
    <td> <strong> Algoritmo de compensación </strong> </td>
    <td> Tomando en cuenta la incertidumbre de los datos leídos por los sensores, se debe realizar un cálculo aproximado del valor real del dato sin la incertidumbre. </td>
    <td> En el Gateway (Edge) </td>
  </tr>
  <tr>
    <td> <strong> Algoritmo de transformación a stock </strong> </td>
    <td> Para el caso del peso de los productos, se aplica una función de división entre el peso total recibido y el peso unitario configurado para el insumo, derivando las existencias reales en unidades para enviar únicamente el dato consolidado hacia la nube. </td>
    <td> En el Gateway (Edge) </td>
  </tr>
  <tr>
    <td> <strong> Algoritmo de validación de límites </strong> </td>
    <td> Tomar la configuración del producto asignado, leer sus límites definidos y validarlos con el dato procesado para evaluar la generación de alertas sobre el estado del producto. </td>
    <td> En el Gateway (Edge) </td>
  </tr>
  <tr>
    <td> <strong> Algoritmo de verificación de salud de dispositivos </strong> </td>
    <td> Verificar los límites para temperatura de CPU y voltaje permitido para determinar el correcto estado y funcionamiento de los dispositivos.  </td>
    <td> En el Gateway (Edge) </td>
  </tr>
  <tr>
    <td> <strong> Algoritmo de sincronización de inventario </strong> </td>
    <td> Ejecuta la lógica de comparación entre el stock calculado físicamente y el registro digital en la base de datos para detectar discrepancias. </td>
    <td> En la nube </td>
  </tr>
</table>

#### Paso 11: Análisis del esfuerzo computacional de los algoritmos

Luego, se analiza el esfuerzo computacional de los algoritmos elegidos. Es por ello, que elegimos como métricas clave la complejidad según Big O del algoritmo, el tiempo de ejecución y el consumo de memoria,

<table>
  <tr>
    <th> Algoritmo a implementar </th>
    <th> Complejidad (Big O) </th>
    <th> Uso en Memoria </th>
    <th> Tiempo de ejecución (estimación) </th>
    <th> Ubicación </th>
  </tr>
  <tr>
    <td> <strong> Algoritmo de calibración (Calibración y Tara) </strong> </td>
    <td> O(N) </td>
    <td> Muy Bajo (< 1 KB) </td>
    <td> 100 ms </td>
    <td> En el Nodo Sensor (ESP32) </td>
  </tr>
  <tr>
    <td> <strong> Algoritmo de filtrado de Ruido (Sampling) </strong> </td>
    <td> O(N) </td>
    <td> Bajo (~2 KB) </td>
    <td> 50 ms </td>
    <td> En el Nodo Sensor (ESP32) </td>
  </tr>
  <tr>
    <td> <strong> Algoritmo de normalización de Datos </strong> </td>
    <td> O(1) </td>
    <td> Mínimo (Bytes) </td>
    <td> 10 ms </td>
    <td> En el Nodo Sensor (ESP32) </td>
  </tr>
  <tr>
    <td> <strong> Algoritmo de compensación </strong> </td>
    <td> O(1) </td>
    <td> Bajo (< 1 KB) </td>
    <td> 40 ms </td>
    <td> En el Gateway (Edge) </td>
  </tr>
  <tr>
    <td> <strong> Algoritmo de transformación a stock </strong> </td>
    <td> O(1) </td>
    <td> Bajo (< 1 KB) </td>
    <td> 30 ms </td>
    <td> En el Gateway (Edge) </td>
  </tr>
  <tr>
    <td> <strong> Algoritmo de validación de límites </strong> </td>
    <td> O(1) </td>
    <td> Mínimo (Bytes) </td>
    <td> 20 ms </td>
    <td> En el Gateway (Edge) </td>
  </tr>
  <tr>
    <td> <strong> Algoritmo de verificación de salud de dispositivos </strong> </td>
    <td> O(1) </td>
    <td> Bajo (~1 KB) </td>
    <td> 50 ms </td>
    <td> En el Gateway (Edge) </td>
  </tr>
  <tr>
    <td> <strong> Algoritmo de sincronización de inventario </strong> </td>
    <td> O(1) </td>
    <td> Moderado (~10 KB) </td>
    <td> 200 ms </td>
    <td> En la nube </td>
  </tr>
</table>

**Justificación Técnica de los Parámetros**

**1. Justificación de Complejidad (***O***):**

- Algoritmos *O*(*N*): La Calibración y el Filtrado (Sampling) requieren procesar un conjunto de *N* muestras consecutivas para promediar el peso y eliminar el ruido eléctrico. El esfuerzo crece linealmente con el número de muestras seleccionadas (ej. 100 muestras).
- Algoritmos *O*(1): Procesos como la Normalización, Transformación y Validación consisten en operaciones aritméticas directas o comparaciones de umbrales que no dependen del volumen de datos almacenados, ejecutándose en tiempo constante.

**2. Justificación de los Tiempos de Ejecución:**

- Capacidad del ESP32: Con una velocidad de reloj de 240 MHz, el microcontrolador puede realizar millones de instrucciones por segundo. Tiempos de 10 ms a 100 ms son valores conservadores que incluyen el tiempo de adquisición del sensor HX711 y el procesamiento básico, garantizando que el nodo no sea un cuello de botella.
- Capacidad del Edge (Raspberry Pi): Al ser una Single Board Computer (SBC) de 1.5 GHz con arquitectura ARM, la ejecución de lógica de negocio (Transformación y Salud) en milisegundos es sumamente eficiente, permitiendo realizar Edge Analytics en tiempo real sin degradar el sistema.
- Impacto en la QoS: La sumatoria de estos tiempos de procesamiento local (aprox 500 ms en total) es una fracción menor del presupuesto de 2 segundos de QoS definido en el Paso 1, dejando el margen necesario para la latencia de red y el transporte de datos analizado en el Paso 7.

**3. Uso de Memoria:**

- El uso de memoria es Bajo en los nodos periféricos porque se manejan tipos de datos primitivos (float, int) y buffers de muestreo pequeños, lo que optimiza los 520 KB de RAM del ESP32.

#### Paso 12: Definición de la interfaz de usuario gráfica

En esta etapa final se definen los elementos visuales basándose en los servicios de información integrada y comandos operativos requeridos por el usuario final. A continuación, se detalla el módulo y su responsabilidad en el sistema:

<table>
  <tr>
    <th> Servicio/Módulo (Tipología) </th>
    <th> Plataformas de Interfaz </th>
    <th> Elementos Clave </th>
    <th> Justificación Funcional (Metodología) </th>
  </tr>
  <tr>
    <td> <strong> Monitoreo de Salud del Dispositivo </strong> </td>
    <td> Web / Mobile / LCD local </td>
    <td> Indicadores de conectividad y alertas de falla técnica. </td>
    <td> Permite visualizar el autodiagnóstico y reconocer automáticamente fallas del hardware. </td>
  </tr>
  <tr>
    <td> <strong> Inventario Físico en Tiempo Real </strong> </td>
    <td> Web / Mobile </td>
    <td> Monitor de stock en masa (kg) y unidades calculadas. </td>
    <td> Proporciona la información integrada y comprimida necesaria para la operación del restaurante. </td>
  </tr>
  <tr>
    <td> <strong> Configuración de Hardware </strong> </td>
    <td> Web </td>
    <td> Panel para asignar productos a sensores y ajustar pesos unitarios. </td>
    <td> Permite el envío de comandos operativos para el control remoto de los recursos (Resource Control). </td>
  </tr>
  <tr>
    <td> <strong> Notificaciones  </strong> </td>
    <td> Web / Mobile </td>
    <td> Avisos visuales de stock crítico o temperatura. </td>
    <td> Cumple con la prioridad de QoS para servicios que requieren procesamiento y reacción en tiempo real. </td>
  </tr>
  <tr>
    <td> <strong> Análisis de Históricos </strong> </td>
    <td> Web </td>
    <td> Gráficas de tendencias de consumo y reportes de discrepancias. </td>
    <td> Utiliza la capacidad de almacenamiento y procesamiento del middleware para mostrar datos históricos </td>
  </tr>
  </tr>
</table>

### Diseño físico y de circuito del dispositivo IoT

Por otro lado, se realiza una propuesta de diseño físico y del circuito del dispositivo IoT, el cual ayuda a tener una idea de los componentes a usar y cómo se conectan con el ESP32 central del dispositivo.

### Flujos de interacción del dispositivo IoT

Finalmente, se diseñan diagramas que explican los flujos de interacción para el dispositivo IoT, los cuales incluyen la lectura de datos de peso, temperatura y humedad de los sensores y la exhibición de los datos procesados en el display LCD.
