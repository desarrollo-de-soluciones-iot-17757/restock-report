# Capítulo V: Solution UI/UX Design
## 5.1. Style Guidelines

### 5.1.1. General Style Guidelines

El equipo de UI-Topic ha definido un sistema integral de Style Guidelines que establece
las bases visuales y comunicacionales de Restock en todas sus plataformas: aplicación
web, aplicación móvil y dispositivos IoT. Estas directrices garantizan coherencia,
accesibilidad y alineación con la identidad de marca en cada punto de contacto,
reduciendo la carga cognitiva del usuario y fortaleciendo la confianza en el sistema.

El diseño se sustenta en principios de usabilidad, accesibilidad y diseño centrado en
el usuario. La correcta aplicación de estas guías permite que los equipos de diseño y
desarrollo colaboren bajo un lenguaje visual unificado, facilitando la escalabilidad
del producto y asegurando una experiencia profesional y técnicamente robusta. Como
señala Zeldman (2024), una guía de estilos bien estructurada agiliza la evolución del
producto y asegura una experiencia consistente en todos los entornos de uso.

#### 5.1.1.1. Colores

El color constituye uno de los recursos comunicacionales más poderosos en el diseño
de interfaces. Su correcta aplicación no solo define la identidad visual de una marca,
sino que también guía la atención del usuario, comunica estados del sistema y refuerza
la jerarquía de la información. La paleta cromática de Restock fue definida a partir
del sistema visual del proyecto, el cual establece cuatro familias de color:
Primary (`#10B981`), Secondary (`#111827`), Tertiary (`#DC2626`) y Neutral (`#F4F7F6`).

Investigaciones recientes señalan que las interfaces que emplean paletas cromáticas
estructuradas y semánticamente coherentes reducen los errores de navegación y mejoran
la retención de información por parte del usuario (Westland & Maggio, 2023). Bajo este
marco, cada color de Restock cumple un rol funcional específico dentro del sistema
de diseño.

**Color primario:**

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/N6SmUw2.png" alt="primary-color">
</div>

El verde esmeralda (`#10B981`) y sus variantes constituyen el color principal del
sistema. Esta elección responde a su asociación semántica con crecimiento, eficiencia
y control, conceptos directamente alineados con la propuesta de valor de Restock como
plataforma de gestión de inventarios. A nivel perceptivo, los tonos verdes de media
saturación favorecen la concentración y reducen la fatiga visual en sesiones de uso
prolongado, lo que resulta especialmente relevante para administradores que interactúan
con dashboards y métricas durante largas jornadas operativas.

| Nombre          | Hex       | Uso principal                                                              | Justificación                                                            |
|-----------------|-----------|----------------------------------------------------------------------------|--------------------------------------------------------------------------|
| Verde Esmeralda | `#10B981` | Botones primarios, barras de navegación, estados activos, íconos de acción | Color de marca principal; contraste mínimo 4.5:1 sobre blanco |
| Verde Profundo  | `#065F46` | Encabezados, textos sobre fondo claro, estados hover en elementos primarios | Mayor oscuridad para jerarquía tipográfica y contraste AAA               |
| Verde Medio     | `#059669` | Confirmaciones, indicadores de éxito, badges de estado activo              | Variante funcional para señalización positiva del sistema                |
| Verde Claro     | `#6EE7B7` | Fondos de sección destacada, chips informativos, estados seleccionados     | Variante de baja saturación para fondos y contenedores secundarios       |
| Verde Menta     | `#D1FAE5` | Fondos sutiles, zonas de descanso visual, tarjetas informativas            | Proporciona respiro visual sin competir con elementos interactivos       |

- **Jerarquía visual:** El tono más oscuro ancla la estructura de navegación, mientras
los tonos más claros señalizan niveles de interacción progresivos, reduciendo la carga
cognitiva al distinguir zonas estáticas de dinámicas.
- **Consistencia de marca:** Los tres verdes principales comparten la misma temperatura
de color, evitando derivaciones que puedan confundir al usuario respecto a la identidad
de la plataforma (Wheeler & Meyerson, 2024).
- **Accesibilidad:** Todos los contrastes han sido validados según WCAG 2.1 para asegurar
cumplimiento AA/AAA en texto y elementos interactivos, protegiendo a usuarios con
deficiencias visuales (World Wide Web Consortium, 2025).

**Color secundario:**

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/HLfGfHZ.png" alt="secondary-color">
</div>

El azul marino oscuro (`#111827`) actúa como color de soporte estructural del sistema.
Su alta oscuridad y neutralidad cromática lo convierten en el soporte ideal para textos
principales, fondos de paneles laterales y encabezados de sección, generando un
contraste sólido con los elementos primarios verdes.

| Nombre          | Hex       | Uso principal                                                       | Justificación                                                                |
|-----------------|-----------|---------------------------------------------------------------------|------------------------------------------------------------------------------|
| Azul Marino     | `#111827` | Textos principales, barras laterales, fondos de modo oscuro         | Contraste superior a 15:1 con blanco; cumple WCAG AAA para tipografía       |
| Gris Medianoche | `#1F2937` | Paneles secundarios, encabezados de tabla, fondos de tarjeta oscura | Variante ligeramente más clara para crear profundidad en capas               |
| Gris Acero      | `#374151` | Labels de formularios, bordes de componentes, íconos inactivos      | Tono intermedio que establece límites sin saturar visualmente                |
| Gris Suave      | `#6B7280` | Textos de ayuda contextual, placeholders, metadatos                 | Legibilidad confortable para información de menor jerarquía                  |
| Gris Perla      | `#9CA3AF` | Texto desactivado, elementos inactivos                              | Señaliza estados no interactivos manteniendo contraste mínimo 3:1            |

- **Jerarquía visual:** Los tonos secundarios crean la estructura invisible de la
interfaz, diferenciando zonas de navegación, contenido y datos sin competir con los
elementos primarios.
- **Consistencia:** Todos los tonos comparten la misma temperatura de color fría,
garantizando transiciones fluidas entre secciones de la plataforma.
- **Accesibilidad:** Cada token ha sido validado contra WCAG 2.1 para asegurar lectura
cómoda y correcta separación de componentes interactivos (World Wide Web Consortium,
2025).

**Color terciario:**

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/pAxpbJl.png" alt="tertiary-color">
</div>

El rojo coral intenso (`#DC2626`) se reserva para comunicar urgencia, errores críticos
y alertas de alta prioridad. Su uso estratégico garantiza que el usuario identifique
de inmediato situaciones que requieren intervención, como quiebres de stock,
discrepancias críticas de inventario o fallas en dispositivos IoT. Este color no
debe emplearse de manera decorativa ni en elementos de navegación habitual, ya que
su impacto semántico perdería efectividad.

| Nombre      | Hex       | Uso principal                                                  | Justificación                                                                    |
|-------------|-----------|----------------------------------------------------------------|----------------------------------------------------------------------------------|
| Rojo Alerta | `#DC2626` | Alertas críticas, botones de cancelación, indicadores de error | Semántica de peligro universalmente reconocida; contraste AAA con blanco         |
| Rojo Oscuro | `#991B1B` | Estados hover en alertas, bordes de campos con error           | Variante oscura para estados activos en contextos de alerta                      |
| Rojo Claro  | `#FCA5A5` | Fondos de mensajes de error, chips de alerta                   | Variante suave para contenedores de advertencia sin saturar la vista             |
| Rojo Mínimo | `#FEE2E2` | Fondos de sección con notificación crítica                     | Fondo de alerta de muy baja saturación para no distraer del contenido principal  |

- **Jerarquía visual:** El uso restringido del rojo garantiza que su aparición en
pantalla sea siempre significativa, evitando la normalización que reduciría su
efectividad como señal de alerta.
- **Consistencia:** Los cuatro tonos comparten la misma temperatura cálida, manteniendo
una señalización coherente en todos los estados de error y alerta del sistema.
- **Accesibilidad:** Todos los tonos han sido validados contra WCAG 2.1, asegurando
contraste suficiente tanto en texto como en elementos no textuales (World Wide Web
Consortium, 2025).

**Color neutral:**

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/d5wPnUD.png" alt="neutral-color">
</div>

El blanco grisáceo (`#F4F7F6`) y su familia de neutros constituyen el lienzo sobre
el cual se despliegan todos los elementos de la interfaz. Su función es proporcionar
descanso visual, mejorar el contraste con los colores funcionales y mantener una
sensación de orden y limpieza en las vistas de gestión de inventario.

| Nombre          | Hex       | Uso principal                                               | Justificación                                               |
|-----------------|-----------|-------------------------------------------------------------|-------------------------------------------------------------|
| Blanco Grisáceo | `#F4F7F6` | Fondo general de la aplicación, fondos de página            | Lienzo principal; reduce el contraste agresivo del blanco puro |
| Blanco Puro     | `#FFFFFF` | Tarjetas, modales, paneles flotantes                        | Máximo contraste para contenedores de información crítica   |
| Gris Borde      | `#E5E7EB` | Líneas divisorias, bordes de inputs, separadores de sección | Define límites de componentes sin generar ruido visual      |

- **Jerarquía visual:** La escala neutral define los niveles de importancia del
contenido sin recurrir a color saturado, permitiendo que el sistema de color semántico
(primario, terciario) conserve su impacto.
- **Consistencia:** Todos los tonos neutros comparten la misma temperatura ligeramente
fría, armonizando con el secundario y generando una interfaz visualmente cohesiva.
- **Accesibilidad:** Cada tono ha sido validado para garantizar contraste suficiente
en texto y componentes no textuales conforme a WCAG 2.1 (World Wide Web Consortium,
2025).

#### 5.1.1.2. Tipografía

La tipografía es un vehículo fundamental de comunicación y un componente decisivo en
la percepción de la marca. La elección tipográfica genera una respuesta psicológica
directa en el usuario, influenciando su percepción de confiabilidad y modernidad antes
incluso de procesar el contenido (Jay & Lupton, 2024). En Restock, la selección
tipográfica responde tanto a criterios funcionales de legibilidad como a la necesidad
de proyectar una identidad profesional, accesible y tecnológicamente actualizada.

A partir de la imagen de referencia del sistema visual del proyecto, el equipo confirma
el uso de **Inter** como tipografía principal, aplicada consistentemente en los niveles
de Headline, Body y Label de la interfaz.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/UiDSdhb.png" alt="typographie">
</div>

*Modelo tipográfico Inter Headline, Body y Label para Restock*

Las fuentes sans-serif presentan una geometría que se rasteriza de forma eficiente,
permitiendo una presentación consistente y legible tanto en pantallas de baja resolución
como en dispositivos de gama alta (González-Rodríguez et al., 2024). Inter, en
particular, fue concebida para optimizar la lectura en monitores y dispositivos móviles,
con métricas que garantizan claridad desde 12 px hasta tamaños de display, lo que la
convierte en la elección más adecuada para una plataforma de gestión de inventarios
donde la precisión en la lectura de datos es crítica.

*Escala tipográfica y usos de la familia Inter en la interfaz de Restock*

| Rol      | Familia | Peso           | Tamaño   | Altura de línea | Uso principal                                                                        |
|----------|---------|----------------|----------|-----------------|--------------------------------------------------------------------------------------|
| Headline | Inter   | 500 (Medium)   | 28–36 px | 1.25×           | Títulos de sección, encabezados de página y elementos de alto impacto visual         |
| Body     | Inter   | 400 (Regular)  | 14–16 px | 1.5×            | Cuerpo de texto, descripciones, datos de inventario y contenido informativo general  |
| Label    | Inter   | 400–500        | 12–13 px | 1.4×            | Etiquetas de componentes, metadatos, campos de formulario y elementos secundarios    |

La elección de Inter responde a cuatro criterios técnicos fundamentales:

**1. Legibilidad optimizada en pantallas de distintas densidades**

Inter fue diseñada con hinting específico para pantallas digitales, lo que garantiza
que sus contornos se mantengan nítidos tanto en displays de baja resolución como en
dispositivos Retina o 4K. Esto resulta especialmente relevante para Restock, donde
datos numéricos como cantidades de stock, precios y alertas deben ser legibles de
forma inmediata (González-Rodríguez et al., 2024).

**2. Geometría funcional sin ornamentos**

Su estructura sans-serif con proporciones abiertas asegura que los caracteres sean
distinguibles incluso a 12 px, evitando confusiones entre glifos similares como "1",
"l" e "I", frecuentes en tipografías de menor calidad para pantalla.

**3. Compatibilidad multiplataforma**

Inter está disponible en Google Fonts con carga optimizada desde CDN, ofrece amplia
compatibilidad entre navegadores y sistemas operativos, y puede implementarse en
frameworks como Angular (web) y Flutter (móvil) sin pérdida de consistencia visual
entre plataformas (Bhanarkar et al., 2023).

**4. Coherencia con la identidad de Restock**

Su estética moderna, neutral y funcional se alinea con los valores de la plataforma:
precisión, eficiencia y profesionalismo. A diferencia de opciones más decorativas,
Inter refuerza la percepción de herramienta confiable sin añadir ruido visual a
interfaces densas en datos.

**Principios de aplicación tipográfica:**

- **Contraste de peso:** Se utilizan únicamente dos pesos (400 regular y 500 medium)
para establecer jerarquía sin sobrecargar visualmente la interfaz.
- **Escala jerárquica:** Los títulos (Headline) captan la atención en puntos clave de
navegación; los cuerpos (Body) garantizan lectura cómoda; las etiquetas (Label)
organizan la información de menor jerarquía sin competir con el contenido principal.
- **Espaciado entre letras:** Se aplica espaciado negativo ligero (–0.3 a –0.5 px)
en los Headline para mejorar la cohesión visual de los bloques de título en tamaños
grandes.
- **Longitud de línea:** Se recomienda un máximo de 65–75 caracteres por línea en
Body para garantizar legibilidad óptima en pantallas de escritorio, reduciendo a
45–55 caracteres en dispositivos móviles.

#### 5.1.1.3. Espaciado

El espaciado es un pilar fundamental para garantizar legibilidad, jerarquía visual
y una experiencia de uso fluida en todas las plataformas de Restock. El sistema de
espaciado se basa en una unidad base de 8 px y sus múltiplos (4 px, 8 px, 12 px,
16 px, 24 px, 32 px), siguiendo las recomendaciones de sistemas modulares de diseño
contemporáneo.

Este enfoque ofrece ventajas técnicas y de usabilidad concretas: garantiza consistencia
de diseño al eliminar valores arbitrarios, facilita la implementación mediante design
tokens o variables CSS, permite escalar los espaciados de forma predecible en
breakpoints responsivos y reduce la carga cognitiva del usuario al crear ritmos
visuales coherentes (Wang et al., 2025).

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

- **Agrupamiento semántico:** Los elementos funcionalmente relacionados (ícono con
etiqueta, input con helper text) se agrupan con márgenes internos de 4–8 px; las
secciones independientes se separan con 24–32 px, aplicando el principio de proximidad
de la Gestalt para reducir la carga cognitiva (Zeldman, 2024).
- **Alineación consistente:** Todos los elementos siguen la cuadrícula modular de 8 px
en ambos ejes, garantizando una distribución homogénea de la interfaz y facilitando
la implementación en CSS Grid.
- **Escalado responsivo:** En dispositivos móviles (menor a 768 px) se conservan los
primeros múltiplos (4, 8, 16 px); en tablet y escritorio (mayor a 768 px) se
incorporan múltiplos superiores (24, 32 px) para aprovechar el espacio adicional sin
generar distribuciones desequilibradas.

#### 5.1.1.4. Branding

El branding de Restock ha sido diseñado para reflejar simplicidad, confianza y
profesionalismo. El logotipo y los íconos adoptan un enfoque minimalista, con líneas
claras y formas simples que comunican el propósito de la plataforma de forma inmediata.
El diseño incorpora la inicial del nombre del producto representada de manera que
simboliza gestión y orden, con una apariencia limpia fácilmente reconocible tanto en
entornos web como móviles.

Los íconos de la plataforma provienen de la librería **Tabler Icons** en su variante
outline, seleccionada por su estilo limpio, trazos uniformes de 2 px y amplia
cobertura de conceptos relacionados con inventario, logística y gestión operativa.
Su geometría modular armoniza con la tipografía Inter y con la paleta cromática del
sistema, reforzando la coherencia visual en todos los puntos de contacto.

<img src="https://i.ibb.co/rfzS7Twx/image.png" style="display: flex; align-items: center;"/>

#### 5.1.1.5. Tono de Comunicación y Lenguaje Aplicado

De acuerdo con Smith y Zook (2024), el tono de comunicación es un componente esencial
en el diseño de interfaces. No solo moldea la percepción emocional de los usuarios,
sino que también contribuye a forjar una identidad de marca coherente y memorable.
Un tono bien calibrado genera sensaciones de cercanía y confianza, mientras que un
lenguaje claro y directo facilita la toma de decisiones en entornos operativos
exigentes.

En Restock, el tono de comunicación fue definido considerando el perfil de sus usuarios
principales: administradores de restaurantes y tiendas retail que gestionan operaciones
críticas de inventario en su día a día. La plataforma se comunica con claridad, sin
tecnicismos innecesarios, pero con el rigor suficiente para transmitir confiabilidad.

El tono de Restock se define en las siguientes dimensiones:

*Dimensiones del tono de comunicación de Restock*

| Dimensión               | Posición                              | Justificación                                                                                                                                                  |
|-------------------------|---------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Divertido / Serio       | Inclinado hacia serio                 | La plataforma gestiona operaciones críticas de negocio. La comunicación prioriza claridad y precisión sobre el humor, sin resultar fría ni distante            |
| Formal / Casual         | Punto intermedio, levemente casual    | Se evita el lenguaje corporativo excesivo. Las instrucciones son directas y comprensibles para administradores de distintos niveles de experiencia tecnológica |
| Respetuoso / Irreverente| Marcadamente respetuoso               | El lenguaje mantiene en todo momento un tono empático y profesional, reconociendo la exigencia del contexto operativo del usuario                             |
| Entusiasta / Sereno     | Levemente entusiasta                  | La plataforma motiva la acción sin generar ansiedad. Los mensajes de alerta son informativos, no alarmistas; las confirmaciones son afirmativas sin exagerar  |

**Principios de comunicación aplicados:**

- **Claro y conciso:** Se emplean oraciones breves y directas, con un máximo de 25–30
palabras en mensajes operativos. Los términos técnicos se introducen únicamente cuando
son necesarios, acompañados de una explicación breve en su primer uso.
- **Orientado a la acción:** Los mensajes priorizan la información que permite al
usuario resolver tareas o tomar decisiones. Los llamados a la acción son específicos
y concretos: "Registrar lote", "Ver discrepancias", "Configurar alerta".
- **Empático y contextual:** El sistema reconoce el impacto de los eventos en la
operación del negocio. Una alerta de stock crítico no solo informa, sino que orienta
al usuario hacia la acción correcta sin generar alarma innecesaria.
- **Consistente y reconocible:** El estilo de redacción (voz activa, vocabulario
operativo, estructura de mensajes) se mantiene uniforme en toda la plataforma,
reforzando la identidad de la herramienta.

*Patrones de tono aplicados según el contexto de interacción en Restock*

| Contexto                      | Tono                            | Ejemplo                                                                                                          |
|-------------------------------|----------------------------------|------------------------------------------------------------------------------------------------------------------|
| Confirmación de acción        | Afirmativo y directo             | "Lote registrado correctamente."                                                                                 |
| Alerta de stock bajo          | Claro y orientado a la acción    | "El insumo Harina de trigo ha alcanzado su nivel mínimo. Se recomienda reponer el stock."                       |
| Error del sistema             | Sobrio y tranquilizador          | "No fue posible completar la operación. Verifique su conexión e intente nuevamente."                            |
| Mensaje de bienvenida         | Cercano y profesional            | "Bienvenido a Restock. Comience registrando su primera sucursal."                                               |
| Notificación de discrepancia  | Informativo y preciso            | "Se detectó una diferencia entre el stock físico y el registrado en Aceite de oliva. Revise la conciliación."  |

**Vocabulario preferido:**

El vocabulario empleado en la interfaz se alinea con el Ubiquitous Language definido
en el modelo de dominio del sistema (véase Capítulo 2), garantizando coherencia entre
la terminología de la interfaz y los conceptos del negocio. Términos como "insumo",
"lote", "sucursal", "stock físico", "stock registrado" y "discrepancia" se emplean
de forma consistente en todos los mensajes, etiquetas y notificaciones de la plataforma.

Se evitan anglicismos innecesarios, jerga técnica no definida y expresiones ambiguas.
Cuando se introduce un término especializado, este se acompaña de una descripción
breve en el contexto de su primer uso, asegurando que usuarios de distintos niveles
de experiencia tecnológica puedan operar la plataforma con eficiencia.

### 5.1.2. Web, Mobile and IoT Style Guidelines
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
