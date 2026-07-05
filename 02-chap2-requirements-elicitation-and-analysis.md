# Capítulo II: Requirements Elicitation & Analysis

## 2.1 Competidores

- **Oracle Simphony** (competidor directo): Plataforma empresarial desarrollada por Oracle que permite la gestión integral de restaurantes mediante POS, inventario, analítica y operaciones en la nube. Está orientado a grandes cadenas del sector hospitality. Su principal fortaleza es la integración completa del ecosistema, aunque presenta altos costos y complejidad de implementación.

- **RestroWorks** (competidor directo): Solución SaaS enfocada en la gestión operativa de restaurantes, incluyendo inventario, pedidos, cocina y reportes. Se orienta a negocios medianos y cadenas en crecimiento. Destaca por su modularidad, aunque puede volverse costoso dependiendo de los módulos implementados.

- **SoftRestaurant** (competidor directo): Software administrativo con fuerte presencia en Latinoamérica. Permite gestionar inventarios, ventas, personal y facturación en restaurantes pequeños y medianos. Su principal ventaja es su experiencia regional, aunque su arquitectura es más tradicional.

- **Stockagile** (competidor directo): Plataforma de gestión de inventario, pedidos y analítica que, aunque originalmente orientada a retail, puede aplicarse al sector restaurantes en gestión de stock, reposiciones y control operativo. Destaca por su enfoque en automatización y visualización en tiempo real.

---

### 2.1.1 Análisis Competitivo

**¿Por qué llevar a cabo este análisis?**

> El objetivo es identificar brechas en soluciones actuales del sector restaurantes, especialmente en la gestión de inventarios.  
> Se busca construir una solución diferenciada basada en automatización inteligente, integración con IoT y simplicidad operativa.

---

<table>
  <thead>
    <tr>
      <th></th>
      <th><b>UI-Topic (Nuestro producto)</b></th>
      <th><b>Oracle Simphony</b></th>
      <th><b>RestroWorks</b></th>
      <th><b>SoftRestaurant</b></th>
      <th><b>Stockagile</b></th>
    </tr>
    <tr>
      <th></th>
      <th><img src="https://i.ibb.co/rfzS7Twx/image.png" width="80"/></th>
      <th><img src="https://cdn.prod.website-files.com/66dc52dd15daa3fe6cd6d3ca/68d7ecc286db039b140973f3_Oracle%20Simphony.png" width="80"/></th>
      <th><img src="https://yt3.googleusercontent.com/zQjgAqX6aZyR6RV9Y-fexw2svbJErBtnU9umRzUCs3SCBr_S0QBX1bBM0SvakT08-qLLHySsp3k=s900-c-k-c0x00ffffff-no-rj" width="80"/></th>
      <th><img src="https://lemon-w-d.s3.us-east-2.amazonaws.com/projects/spr/public/images/softrestaurant/soluciones-para-restaurantes-softrestaurant-logo.png" width="80"/></th>
      <th><img src="https://m.media-amazon.com/images/I/11P6Wp3KC+L.png" width="80"/></th>
    </tr>
  </thead>

  <tbody>

<tr><th><b>Perfil</b></th><td></td><td></td><td></td><td></td><td></td></tr>

<tr>
<td>Overview</td>
<td>Plataforma inteligente con IoT para automatizar inventarios en restaurantes.</td>
<td>Suite empresarial POS + operaciones.</td>
<td>Gestión integral de restaurantes.</td>
<td>Sistema administrativo tradicional.</td>
<td>Gestión de inventario y reposiciones en tiempo real.</td>
</tr>

<tr>
<td>Ventaja competitiva</td>
<td>Automatización física + digital del inventario.</td>
<td>Escalabilidad global.</td>
<td>Modularidad adaptable.</td>
<td>Experiencia en LATAM.</td>
<td>Control centralizado y visualización avanzada.</td>
</tr>

<tr><th><b>Perfil de Marketing</b></th><td></td><td></td><td></td><td></td><td></td></tr>

<tr>
<td>Estrategias</td>
<td>Eficiencia operativa y reducción de errores.</td>
<td>Escalabilidad y confiabilidad.</td>
<td>Crecimiento modular.</td>
<td>Presencia regional.</td>
<td>Optimización del inventario.</td>
</tr>

<tr>
<td>Mercado objetivo</td>
<td>Restaurantes con baja digitalización.</td>
<td>Grandes cadenas.</td>
<td>Restaurantes medianos.</td>
<td>Pequeños y medianos.</td>
<td>Negocios con alta rotación de stock (adaptado a restaurantes).</td>
</tr>

<tr><th><b>Perfil de Producto</b></th><td></td><td></td><td></td><td></td><td></td></tr>

<tr>
<td>Productos</td>
<td>IoT + inventario + alertas.</td>
<td>POS, pedidos, analítica.</td>
<td>Pedidos, cocina, inventario.</td>
<td>Ventas, stock, facturación.</td>
<td>Inventario, pedidos, analítica.</td>
</tr>

<tr>
<td>Precios</td>
<td>Suscripción + hardware.</td>
<td>Alto costo enterprise.</td>
<td>Modelo modular.</td>
<td>Bajo a medio costo.</td>
<td>Planes: Grow €65.83 / Advanced €207.50 / Premium €415.83</td>
</tr>

<tr><th><b>Análisis SWOT</b></th><td></td><td></td><td></td><td></td><td></td></tr>

<tr>
<td>Fortalezas</td>
<td>Automatización real.</td>
<td>Infraestructura robusta.</td>
<td>Adaptabilidad.</td>
<td>Experiencia consolidada.</td>
<td>Automatización y control en tiempo real.</td>
</tr>

<tr>
<td>Debilidades</td>
<td>Dependencia tecnológica.</td>
<td>Complejidad.</td>
<td>Curva de aprendizaje.</td>
<td>Tecnología tradicional.</td>
<td>No especializado 100% en restaurantes.</td>
</tr>

<tr>
<td>Oportunidades</td>
<td>Baja digitalización.</td>
<td>Expansión global.</td>
<td>Cloud kitchens.</td>
<td>Mercados emergentes.</td>
<td>Adaptación al sector food service.</td>
</tr>

<tr>
<td>Amenazas</td>
<td>Resistencia al cambio.</td>
<td>Nuevos SaaS.</td>
<td>Competidores simples.</td>
<td>Innovación externa.</td>
<td>Competidores especializados en restaurantes.</td>
</tr>

  </tbody>
</table>

---

### 2.1.2 Estrategias y tácticas frente a competidores

#### Enfoque Estratégico

UI-Topic se posiciona como una solución de automatización inteligente del inventario en restaurantes, integrando software con sensores IoT para eliminar procesos manuales y mejorar la precisión operativa.

---

#### 1. Frente a Oracle Simphony

- Enfoque en PYMEs
- Implementación rápida
- Menor costo
- UX simple

---

#### 2. Frente a RestroWorks

- Especialización en inventarios
- Eliminación de procesos manuales
- Menor complejidad

---

#### 3. Frente a SoftRestaurant

- Migración a cloud
- UX moderna
- Automatización IoT

---

#### 4. Frente a Stockagile

- Especialización en restaurantes
- Integración con sensores físicos
- Automatización más profunda del inventario

### 2.1.1. Análisis competitivo

### 2.1.2. Estrategias y tácticas frente a competidores

## 2.2. Entrevistas

En esta sección se presenta la investigación realizada a partir de la recolección de información mediante entrevistas a representantes de los segmentos objetivo, con el fin de comprender sus necesidades, características y problemáticas relacionadas con la gestión de inventario y la discrepancia entre el stock físico y el stock registrado en la plataforma.

### 2.2.1. Diseño de entrevistas

#### **Segmento 1: Dueños o administradores de restaurantes**

##### **Preguntas principales:**

1. ¿Cuál es su nombre?
2. ¿Podría indicarnos su edad, estado civil y distrito de residencia actual?
3. ¿Cuál es su cargo dentro del negocio?
4. ¿Cuánto tiempo lleva desempeñando funciones relacionadas con la gestión de inventario?
5. ¿Cómo describiría su trayectoria profesional hasta llegar a su puesto actual?
6. ¿Qué tipo de insumos (perecibles y no perecibles) gestiona con mayor frecuencia en su restaurante?
7. ¿Cómo afecta la rotación de ingredientes y la preparación de recetas al control de inventario?
8. ¿Cuáles son los principales desafíos que enfrenta en el control de insumos frescos o productos no empaquetados?
9. ¿Cómo realiza actualmente el registro y control de stock en cocina o almacén?
10. ¿Qué tipo de errores, pérdidas (por vencimiento, merma o uso en cocina) o discrepancias entre el stock físico y el registrado son más frecuentes?
11. ¿Qué tan importante considera contar con información en tiempo real para evitar quiebres de insumos durante la operación diaria?

##### **Preguntas complementarias:**

1. ¿Qué dispositivos tecnológicos utiliza con mayor frecuencia en su trabajo diario?
2. ¿Qué sistemas o herramientas utiliza para la gestión de pedidos, recetas o inventario?
3. ¿Cómo coordina el inventario entre cocina, almacén y área de compras?
4. ¿Cómo suele recibir alertas sobre faltantes de insumos o productos críticos?
5. ¿Qué canales digitales usa para comunicarse con su equipo de cocina o proveedores?
6. ¿Qué características valoraría más en una solución tecnológica para mejorar la gestión de insumos?
7. ¿Qué dificultades ha tenido al intentar digitalizar procesos dentro del restaurante?
8. ¿Estaría dispuesto(a) a probar una solución que monitoree automáticamente el consumo de insumos mediante sensores?

#### **Segmento 2: Dueños o administradores del sector Retail de consumo masivo**

##### **Preguntas principales:**

1. ¿Cuál es su nombre?
2. ¿Podría indicarnos su edad, estado civil y distrito de residencia actual?
3. ¿Cuál es su cargo dentro del negocio?
4. ¿Cuánto tiempo lleva desempeñando funciones relacionadas con la gestión de inventario?
5. ¿Cómo describiría su trayectoria profesional hasta llegar a su puesto actual?
6. ¿Qué tipo de productos (alta rotación, perecibles o empaquetados) gestiona con mayor frecuencia en su negocio?
7. ¿Cómo gestiona actualmente la rotación de productos en góndolas o almacén?
8. ¿Cuáles son los principales desafíos relacionados con productos próximos a vencer o con baja rotación?
9. ¿Cómo realiza actualmente el registro y control de stock en tienda o almacén?
10. ¿Qué tipo de errores, pérdidas (por vencimiento, devoluciones o mala rotación) o discrepancias entre el stock físico y el registrado son más frecuentes?
11. ¿Qué tan importante considera contar con información en tiempo real para optimizar la reposición de productos?

##### **Preguntas complementarias:**

1. ¿Qué dispositivos tecnológicos utiliza con mayor frecuencia en su trabajo diario?
2. ¿Qué sistemas o herramientas utiliza para la gestión de inventario y ventas?
3. ¿Cómo gestiona la reposición de productos en tienda (manual, por demanda, por sistema)?
4. ¿Cómo suele recibir alertas sobre productos con bajo stock o exceso de inventario?
5. ¿Qué canales digitales usa para comunicarse con proveedores o personal de tienda?
6. ¿Qué características valoraría más en una solución tecnológica para mejorar la reposición y control de stock?
7. ¿Qué dificultades ha tenido al intentar digitalizar sus procesos de inventario?
8. ¿Estaría dispuesto(a) a probar una solución que permita monitorear automáticamente el stock en estanterías o almacén?

### 2.2.2. Registro de entrevistas

#### Segmento 1: Dueños o administradores de Restaurantes

##### Entrevista 1:

**Nombre:** Alex Guardia
**Edad:** 38 años
**Distrito:** Chorrillos
**Timing:** (00:08 - 04:39 min)

<img src="assets/images/chapter2/needfinding-interviews/entrevista1.png" height="500"> 

Ver entrevista (00:08 - 04:39 min): https://bit.ly/41kf54H

**Resumen:**

Alex Guardia tiene 38 años, es casado y vive en el distrito de Chorrillos, Lima. Es una persona analítica, comprometida y orientada a la mejora continua. Cuenta con 5 a 6 años de experiencia como gerente de restaurantes.

Su principal dolor radica en la gestión del inventario: realiza controles físicos diarios de forma manual y verificaciones electrónicas semanales usando hojas de cálculo en Excel, lo que le genera frecuentes discrepancias entre el stock físico real y los datos registrados. Este desajuste le impide tomar decisiones de reposición con seguridad y le consume tiempo operativo valioso. Aunque utiliza software de gestión gastronómica, siente que ninguna solución del mercado se adapta a sus procesos específicos y que el soporte postventa es deficiente, por lo que no logra cubrir del todo su necesidad de control preciso del inventario.

Utiliza un celular Android y una laptop con Windows; su navegador habitual es Google Chrome. Se comunica principalmente por WhatsApp y consume contenido de referencia en YouTube. Se inspira en figuras del rubro como Gastón Acurio y realiza compras en Makro y PlazaVea. Estaría dispuesto a invertir entre 500 y 800 dólares en una solución tecnológica integral que incluya implementación, capacitación y soporte continuo, siempre que se adapte a sus procesos y mejore la eficiencia del negocio.

##### Entrevista 2:

**Nombre:** Lincoln Chauca Rubio
**Edad:** 36 años
**Distrito:** Breña
**Timing:** (04:40 - 08:24 min)

<img src="assets/images/chapter2/needfinding-interviews/entrevista2.png" height="500">  

Ver entrevista (04:40 - 08:24 min): https://bit.ly/41kf54H

**Resumen:**

Lincoln Chauca Rubio tiene 36 años, es casado y vive en el distrito de Breña, Lima. Se describe como una persona disciplinada, responsable y dedicada. Es propietario del “Amazonas Restaurant” y lo administra desde hace 5 años, con una participación directa en la gestión operativa del negocio.

Enfrenta dos dolores principales. El primero es la rotación constante de personal: al no contar con un equipo estable, debe contratar y capacitar empleados con frecuencia, lo que genera errores en los registros de inventario y afecta la eficiencia del servicio. El segundo es la inconsistencia en el control de stock: el inventario real no siempre coincide con lo registrado en su software actual, Vidal, un sistema que permite a los mozos tomar pedidos desde tablets o celulares y mantener una base de datos de clientes. Si bien Vidal le facilita la operación general del restaurante y siente que cubre parcialmente sus necesidades, reconoce que el módulo de inventario aún presenta fallas y oportunidades de mejora claras, especialmente en el registro preciso de insumos.

Utiliza un celular Android y una laptop con Windows; navega con Google Chrome. Se comunica con su equipo y proveedores principalmente por WhatsApp y llamadas telefónicas. Se inspira en restaurantes reconocidos de cocina regional y realiza compras en Makro. Actualmente invierte alrededor de 300 soles mensuales en herramientas tecnológicas, pero está dispuesto a aumentar esa inversión hasta 500 soles si la solución mejora sustancialmente la gestión del negocio.

##### Entrevista 3:

**Nombre:** Amparo Soledad Robles Vásquez
**Edad:** 56 años
**Distrito:** Bellavista
**Timing:** (08:25 - 13:07 min)

<img src="assets/images/chapter2/needfinding-interviews/entrevista3.png" height="500"> 

Ver entrevista (08:25 - 13:07 min): https://bit.ly/41kf54H

**Resumen:**

Amparo Soledad Robles Vásquez tiene 56 años, vive en el distrito de Bellavista y es propietaria del restaurante y cevichería “El 1er Puerto”, el cual gestiona desde hace 20 años. Se describe como una persona perseverante, responsable y amable.

Su dolor más crítico es la gestión manual del inventario: actualmente registra sus insumos en cuadernos y hojas escritas a mano, sin ningún sistema digital de apoyo. Esto le demanda un esfuerzo diario considerable, le genera pérdidas por productos vencidos o agotados sin previo aviso, y le impide tener visibilidad clara sobre qué necesita reponer y cuándo. No logra controlar su stock con precisión, lo que impacta directamente en la calidad del servicio y en los costos del restaurante. A esto se suma la dificultad para encontrar personal adecuado y su limitado conocimiento en marketing digital, que restringe la promoción del negocio.

Reconoce que adaptarse a la tecnología es un reto personal, pero también una necesidad. Usa un celular Android y una laptop con Windows, y navega con Google Chrome. Se informa principalmente por WhatsApp y YouTube, y tiene afinidad con marcas como Makro y referentes del sector como Gastón Acurio. Está dispuesta a invertir en un software que automatice los procesos de su negocio, siempre que sea simple, confiable y se adapte a su nivel de manejo tecnológico.

---

#### Segmento 2: Dueños o administradores de negocios del sector retail de consumo masivo

##### Entrevista 4:

**Nombre:** Brayner Coronel
**Edad:** 28 años
**Distrito:** Villa El Salvador
**Timing:** (13:08 - 16:08 min)

<img src="assets/images/chapter2/needfinding-interviews/entrevista4.png" height="500" width="650">

Ver entrevista (13:08 - 16:08 min): https://bit.ly/41kf54H

**Resumen:**

Brayner Coronel es un emprendedor de 28 años y uno de los propietarios de una tienda retail llamada “Donde Siempre”. Se caracteriza por ser una persona disciplinada y, sobre todo, perseverante. Actualmente, cuenta con cinco años de experiencia en el rubro y gestiona dos sucursales de alta rotación.

Su principal dolor es la falta de control preciso del stock en tiempo real: antes del cierre de cada jornada, debe contabilizar manualmente cada artículo disponible en tienda para identificar faltantes y cantidades a reponer. Este proceso, que realiza producto por producto, se ha vuelto insostenible con el crecimiento del negocio a dos sucursales, generando errores de reposición y tiempo operativo desperdiciado. Para mitigar esto, utiliza dos herramientas en paralelo: Vandastic para registrar entradas y salidas de productos en tienda, y Excel para el control de sus almacenes externos. Sin embargo, esta combinación no le ofrece una vista unificada del inventario total, por lo que no logra tener visibilidad completa de su stock sin intervención manual. Considera necesario migrar a una solución más especializada con funciones avanzadas de gestión de inventarios que elimine esta doble carga operativa.

Por otro lado, considera que la tecnología es una aliada clave para la eficiencia operativa y el crecimiento sostenible de su emprendimiento. En la actualidad, utiliza navegadores como Google Chrome y Microsoft Edge, además de un celular Android y una computadora con sistema operativo Windows. Asimismo, para la comunicación con su equipo y proveedores, emplea principalmente WhatsApp, lo que le permite una coordinación más ágil. De igual manera, se inspira en referentes del sector retail como la familia Lindley y realiza sus compras a través de aplicaciones como BEES, AC Digital, Merkao y Pepsi Chat. Finalmente, utiliza un software de gestión de inventarios denominado “Vandastic”, el cual le permite registrar de forma detallada cada producto que ingresa y sale; adicionalmente, complementa este control con Excel para el registro de sus almacenes externos. Sin embargo, considera invertir en un software más especializado, con funciones avanzadas que le permitan optimizar la gestión de inventarios y mejorar la eficiencia operativa.


##### Entrevista 5:

**Nombre:** Erick Coronel
**Edad:** 51 años
**Distrito:** Villa María del Triunfo
**Timing:** (16:09 - 19:15 min)

<img src="assets/images/chapter2/needfinding-interviews/entrevista5.png" height="500" width="700">

Ver entrevista (16:09 - 19:15 min): https://bit.ly/41kf54H

**Resumen:**

Erick Coronel, de 51 años, es uno de los propietarios de la tienda retail “Donde Siempre”. Decidió dedicarse a este rubro tras haber trabajado en el sector de la construcción durante la pandemia, lo que representó un cambio significativo en su trayectoria profesional. Desde entonces, ha venido adaptando sus procesos con el objetivo de responder mejor a las exigencias del comercio moderno.


Su dolor principal tiene dos frentes. El primero es la alta rotación de personal: su sistema actual no le permite gestionar adecuadamente a los empleados ni asignar responsabilidades claras, lo que genera inconsistencias directas en el registro del inventario durante la operación diaria. El segundo es la limitación de su sistema de gestión actual, Vandastic: aunque lo utiliza para el control de inventarios y ventas diarias, el sistema no le indica automáticamente qué productos tienen mayor rotación ni cuándo es momento de reponer, obligándolo a revisar manualmente los registros para identificar esa información. En consecuencia, no logra anticiparse al desabastecimiento, lo que en ocasiones resulta en pérdida de ventas. Considera necesario migrar a una solución más especializada que le notifique oportunamente cuándo reponer productos, le brinde recomendaciones de almacenamiento y reduzca la dependencia del criterio manual de su personal.

Por otro lado, considera que la tecnología es un elemento clave para la gestión y crecimiento de su negocio. En la actualidad, utiliza únicamente el navegador Google Chrome, junto con un celular Android y una computadora con sistema operativo Windows. Asimismo, emplea WhatsApp y YouTube como medios de comunicación y apoyo operativo, lo que le permite mantenerse conectado con su equipo y acceder a información de utilidad. Para la gestión de su negocio realiza compras a través de plataformas como BEES, Merkao y tiendas Makro, y se inspira en referentes del sector retail como la familia Lindley. Para el control de inventarios y ventas diarias, emplea el sistema Vandastic; sin embargo, considera que este resulta limitado para sus necesidades actuales, especialmente porque le demanda revisar manualmente qué productos tienen mayor rotación. En este sentido, considera necesario migrar hacia una solución más especializada que le permita optimizar la gestión del inventario, mejorar la eficiencia operativa y, además, le notifique oportunamente cuándo es necesario reponer productos y le brinde recomendaciones sobre su almacenamiento.

##### Entrevista 6:

**Nombre:** Luis Alfonso Jimenez
**Edad:** 55 años
**Distrito:** San Martín de Porres
**Timing:** (19:16 - 29:49 min)

<img src="assets/images/chapter2/needfinding-interviews/entrevista6.png" height="500"> 

Ver entrevista (19:16 - 29:49 min): https://bit.ly/41kf54H

**Resumen:**

Luis Alfonso Jiménez, de 55 años, es administrador de una tienda del sector retail. Se caracteriza por ser una persona honesta, responsable y trabajadora, comprometida con el correcto funcionamiento de su negocio, aunque reconoce que los métodos actuales ya no responden a las exigencias del mercado.

Su dolor principal es el manejo ineficiente de productos próximos a vencer: al no contar con un sistema que le alerte sobre fechas de vencimiento, recurre a una práctica manual de rotación física, reubicando los productos más antiguos en zonas más visibles y accesibles para el cliente, y colocando los más recientes al fondo. Este proceso frecuente genera daños en empaques y productos, pérdidas económicas evitables y un desgaste operativo constante. Para el control de inventarios, compras y ventas utiliza Excel, lo que le consume tiempo significativo, propensa a errores de digitación y no le permite identificar oportunamente qué productos necesitan reposición, obligándolo en ocasiones a verificar físicamente el almacén para confirmar existencias. En síntesis, no logra controlar su inventario de forma preventiva: siempre actúa sobre el problema una vez que ya ocurrió, no antes.

Por otro lado, en la actualidad utiliza Google Chrome y Safari como navegadores, junto con un celular iPhone y una laptop con sistema operativo macOS. Asimismo, emplea WhatsApp como medio de comunicación con su equipo y proveedores, lo que facilita la coordinación diaria. Su principal referente en el sector retail es Carlos Rodríguez-Pastor, a quien valora por la organización y eficiencia de sus modelos de gestión. De igual manera, continúa utilizando Excel para el control de inventarios, compras y ventas, aunque reconoce que este método le consume tiempo, puede generar errores y dificulta la identificación oportuna de productos para reposición, lo que en ocasiones lo obliga a verificar físicamente el almacén para confirmar existencias. En este contexto, considera que la tecnología es fundamental para optimizar sus operaciones y está dispuesto a invertir lo que sea necesario en un sistema que le permita mejorar la gestión del negocio.

### 2.2.3. Análisis de entrevistas

#### Segmento 1: Dueños o administradores de Restaurantes

Se analizaron **3 entrevistas** a administradores con amplia experiencia en el manejo de restaurantes. La información obtenida permitió identificar características objetivas y subjetivas clave para construir al arquetipo de dueño de restaurantes.

##### Características

| Característica                                    | Mención  | %     | Evidencia                                                                                     |
| ------------------------------------------------- | -------- | ----- | --------------------------------------------------------------------------------------------- |
| Más de 5 años de experiencia en gestión           | 3/3      | 100%  | Todos los entrevistados mencionan su trayectoria (“5 a 6 años”, “5 años”, “20 años”)          |
| Utilizan software para facturación o pedidos      | 3/3      | 100%  | Uso de software como Dibal, sistemas de caja, o intención de implementarlo pronto             |
| Gestión de inventario parcial o manual            | 2/3      | 66.7% | Uso mixto entre registros físicos y digitales; uno usa solo gestión manual                    |
| Han cambiado de software por deficiencias         | 2/3      | 66.7% | Señalan haber probado varias herramientas antes de una funcional                              |
| Dispuestos a invertir en tecnología               | 3/3      | 100%  | Declaran presupuestos o escalas de disposición al 10                                          |
| Reconocen que la tecnología mejora la eficiencia  | 3/3      | 100%  | Vinculan tecnología con mejora de control, marketing y atención                               |
| Dificultades por complejidad o soporte deficiente | 2/3      | 66.7% | Señalan postventa lenta y sistemas poco intuitivos                                            |
| Necesidad de personalización                      | 3/3      | 100%  | Indican que los sistemas son genéricos y complicados de adaptar                               |
| Valor por facilidad de uso y adaptabilidad        | 3/3      | 100%  | Expresan deseo de una solución autogestionable                                                |
| Canales usados                                    | 3/3      | 100%  | Usan Whatsapp, youtube, facebook                                                              |
| Tecnología usada                                  | 3/3      | 100%  | Utilizan Android y Windows                                                                    |

##### Insights

**1. Alta disposición hacia la digitalización, pero con obstáculos prácticos**
Existe interés por parte de todos los entrevistados en incorporar tecnología para mejorar su gestión. Sin embargo, su adopción ha sido limitada por barreras como sistemas complejos o falta de capacitación. Sugiere que la plataforma debería ser intuitiva y estar diseñada pensando en la realidad operativa del usuario.

**2. Necesidad crítica de herramientas flexibles y adaptables**
La estandarización de los sistemas actuales no responde a las particularidades de cada restaurante. Mencionan la dificultad de modificar configuraciones o adaptarse a actualizaciones frecuentes. Un sistema que permita editar menús, precios o funcionalidades sin asistencia externa sería lo ideal.

**3. El soporte técnico deficiente afecta la confianza y el uso**
Los usuarios se sienten desatendidos cuando enfrentan incidencias en momentos críticos. El soporte técnico lento o ineficaz reduce la confianza en el sistema. Una solución que ofrezca soporte ágil y confiable podría diferenciarse en el mercado.

**4. Inversión justificable si existe retorno tangible**
Todos los entrevistados señalan estar dispuestos a invertir en tecnología si esta genera beneficios claros como control, personalización, eficiencia o mejora de ingresos. Esto valida la viabilidad comercial de una solución enfocada.

#### Segmento 2: Dueños o administradores de Tiendas Retail

Se analizaron **3 entrevistas** a administradores o dueños con amplios conocimientos en el manejo de tiendas retail. La información obtenida permitió identificar características objetivas y subjetivas clave para construir al arquetipo de administrador de tiendas retail.

##### Características

| Característica                                    | Mención  | %     | Evidencia                                                                                                                                                   |
| ------------------------------------------------- | -------- | ----- | ----------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Más de 5 años de experiencia en gestión           | 3/3      | 100%  | Todos los entrevistados mencionan su trayectoria                                                                                                            |
| Uso de software para gestión de inventarios       | 2/3      | 66.7% | Uso de software como Vandastic, un tercero menciona el uso de Excel para las labores                                                                        |
| Gestión de inventario parcial o manual            | 2/3      | 66.7% | Dos usan un software especializado, aunque también manifiestan la contabilización manual de productos, el tercero usa herramientas tradicionales como Excel |
| Dispuestos a invertir en tecnología               | 3/3      | 100%  | Los tres declaran de gran importancia la inclusión de la tecnología para solucionar sus problemas                                                           |
| Reconocen que la tecnología mejora la eficiencia  | 3/3      | 100%  | Vinculan tecnología con mejora de control, marketing y atención                                                                                             |
| Dificultades en el negocio                        | 3/3      | 100%  | Señalan problemas mayores en la gestión interna del negocio como la contabilizacion y la reposición                                                         |
| Necesidad de precisión en el stock                | 3/3      | 100%  | Indican que es un problema en común de diversas fuentes (rotación de personal, reposición de productos próximos a vencer, contabilización de stock)         |
| Valor por facilidad de uso y adaptabilidad        | 3/3      | 100%  | Expresan deseo de una solución que automatice y simplifique sus labores                                                                                     |
| Canales usados                                    | 3/3      | 100%  | Mencion al uso de Whatsapp, pero también se hace una pequeña mención al uso de YouTube                                                                      |
| Tecnología usada                                  | 2/3      | 66.7% | Utilizan Android y Windows, un tercero menciona el uso de iOS y macOS                                                                                       |

##### Insights

**1. Problemas actuales con los programas usados**
Los entrevistados perciben que el programa actual que utilizan para sus operaciones no es suficiente para satisfacer por completo las necesidades de su tienda. Además, limita mucho su crecimiento y complica la optimización de sus procesos clave.  

**2. Contar con herramientas que sean precisas respecto del control de inventarios**
Aunque algunos entrevistados no consideran un problema grave las posibles pérdidas de productos, sí manifiestan un gran interés en contar con una aplicación mucho más precisa con respecto a las actividades de gestión de inventarios. Además, consideran que una herramienta de este tipo les brindaría mayor seguridad, eficiencia operativa y les permitiría tomar mejores decisiones para evitar pérdidas económicas innecesarias.  

**3. Simplificación y automatización de tareas recurrentes**
Los entrevistados requieren una aplicación que les permita llevar un control eficiente del stock de sus productos. Además, les debe ofrecer una variedad de herramientas de gestión que faciliten y hasta automaticen sus tareas diarias de inventariado. Finalmente, esta solución debe estar orientada a facilitar la toma de decisiones, optimizar recursos y fomentar el crecimiento sostenible de sus tiendas.

## 2.3. Needfinding

En esta sección se presentan los artefactos resultantes del proceso de Needfinding, elaborados a partir del análisis de la información recolectada sobre la problemática de la gestión de inventarios en PyMEs de los sectores gastronómico y retail de consumo masivo. Se incluyen herramientas como User Personas, User Task Matrix, User Journey Mapping, Empathy Mapping, Big Picture EventStorming y Ubiquitous Language, las cuales permiten comprender en profundidad las necesidades, motivaciones, frustraciones y comportamientos de los usuarios objetivo.

A través de estos artefactos, se busca representar de manera clara cómo los dueños y administradores de restaurantes y negocios retail gestionan actualmente sus inventarios, evidenciando el uso de procesos manuales, la falta de visibilidad en tiempo real y los errores asociados al control de stock.

### 2.3.1. User Personas

En esta sección se presentan dos User Personas que representan los segmentos clave del proyecto: los dueños o administradores de restaurantes y los dueños o administradores de negocios del sector retail de consumo masivo. Estos perfiles permiten comprender en profundidad las necesidades, motivaciones, frustraciones y comportamientos de los usuarios potenciales del sistema, el cual busca mejorar la gestión de inventarios mediante la digitalización, el monitoreo en tiempo real y la automatización de procesos operativos.

El User Persona **Carolina Rivas** representa a las administradoras y propietarias de restaurantes con experiencia en la gestión de negocios gastronómicos, principalmente ubicados en zonas urbanas. Carolina cuenta con trayectoria en la operación de su restaurante y, aunque ha utilizado herramientas como cuadernos o hojas de cálculo para el control de inventario, estos métodos le han generado errores, pérdidas de insumos y dificultades para planificar la reposición. Su principal motivación es lograr un control preciso del inventario en tiempo real, reducir el desperdicio y optimizar la gestión de sus insumos. Busca una solución tecnológica accesible, intuitiva y fácil de implementar, que le permita digitalizar sus procesos, mejorar la toma de decisiones y aumentar la eficiencia operativa sin afectar la atención al cliente.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/4UKJRpL.png" alt="user-persona-1">
</div>

La información mostrada del User Persona **Carolina Rivas** se observa que valora herramientas simples, visuales y fáciles de implementar, ya que busca optimizar sus procesos sin afectar la atención al cliente ni depender de sistemas complejos. En ese sentido, este perfil sintetiza claramente la oportunidad de diseñar una solución tecnológica orientada a digitalizar la gestión de inventarios, mejorar la eficiencia operativa y apoyar una toma de decisiones más informada dentro del restaurante.


Por otro lado, el User Persona **Jorge Torres** representa a los dueños o administradores de negocios del sector retail de consumo masivo, como minimarkets o tiendas de conveniencia. Con varios años de experiencia en la gestión de su negocio, Jorge maneja una alta rotación de productos, lo que hace que el control del inventario sea una tarea crítica en su operación diaria. Actualmente, utiliza métodos manuales apoyados por herramientas como WhatsApp y Excel para registrar el stock, coordinar pedidos y llevar el control de ventas, lo que le genera desorden, errores y falta de visibilidad en tiempo real.

<div style="display: flex; align-items: center;">
  <img src="https://imgur.com/GS5ViIz.png" alt="user-persona-2">
</div>

La información mostrada del User Persona Jorge Torres permite identificar a un administrador de negocio retail de consumo masivo que enfrenta dificultades en el control de inventario debido a la alta rotación de productos y al uso de métodos manuales. Su perfil evidencia problemas de desorden, falta de precisión en el stock y ausencia de visibilidad en tiempo real, lo que afecta directamente la reposición, la organización del almacén y la rentabilidad del negocio.

Asimismo, se observa que valora soluciones prácticas, visuales y fáciles de usar, siempre que le ayuden a reducir errores y ahorrar tiempo en sus tareas operativas. En ese sentido, este perfil refleja la necesidad de implementar una solución tecnológica que permita controlar el inventario en tiempo real, optimizar la reposición y mejorar la toma de decisiones dentro del negocio retail.

### 2.3.2. User Task Matrix

Se presenta el User Task Matrix, que reúne las tareas que ambos User Persona, administradores de restaurantes y administradores del sector Retail de consumo masivo, realizan para lograr sus objetivos. Estas tareas comprenden funciones específicas, son actividades que los usuarios llevan a cabo en su día a día, independientemente de la existencia de una solución tecnológica.

Los segmentos considerados para este análisis son:

- Dueños o administradores de Restaurantes
- Dueños o administradores del sector Retail de consumo masivo

##### Task Matrix

| Tarea                                                      | Carolina Rivas |             | Jorge Torres |             |
| ---------------------------------------------------------- | -------------- | ----------- | ------------ | ----------- |
|                                                            | Frecuencia     | Importancia | Frecuencia   | Importancia |
| Supervisar y controlar el inventario disponible            | often          | high        | often        | high        |
| Monitorear condiciones de almacenamiento                   | often          | medium      | sometimes    | medium      |
| Gestionar mermas, productos vencidos o dañados             | often          | high        | often        | high        |
| Registrar ingresos de mercadería y salidas de stock        | sometimes      | medium      | often        | high        |
| Evaluar precios, rentabilidad y condiciones de venta       | sometimes      | high        | sometimes    | medium      |
| Planificar el reabastecimiento de insumos/productos        | often          | high        | often        | high        |
| Gestionar incidencias e imprevistos                        | sometimes      | medium      | sometimes    | medium      |
| Preparar, despachar o recibir productos del día           | sometimes      | high        | often        | high        |
| Buscar herramientas para mejorar la gestión/organización | rarely         | medium      | rarely       | medium      |

**Análisis:**

- Ambos segmentos comparten varias tareas operativas esenciales, como la supervisión de inventario, la planificación del reabastecimiento y la gestión de mermas o productos dañados. Estas actividades son frecuentes y de alta importancia en ambos casos, aunque con enfoques distintos: la administradora de restaurante busca garantizar la frescura de sus insumos perecederos, mientras que el administrador de retail se centra en mantener el flujo de stock ante una alta rotación de productos.
- Otras tareas como la evaluación de precios y rentabilidad o la búsqueda de herramientas de mejora son menos frecuentes, pero igualmente presentes en ambos perfiles. Esto evidencia un interés común por digitalizar sus procesos para reducir errores manuales y optimizar el control financiero de sus respectivos negocios.
- Por otro lado, tareas como el monitoreo estricto de condiciones de almacenamiento y la gestión de mermas son mucho más críticas para el sector gastronómico debido a la naturaleza de sus productos, mientras que para el sector retail el registro constante de ingresos y salidas tiene un mayor impacto operativo. Esta diferencia permite identificar funcionalidades que deben ser priorizadas según el perfil del usuario dentro de la plataforma Restock.

### 2.3.3. User Journey Mapping

En esta sección se presentan los User Journey Maps (As-Is) de los segmentos representados, correspondientes a sus respectivas User Personas. Se ilustra el recorrido actual de los usuarios sin la intervención de la solución UI-Topic, con el fin de identificar sus necesidades, puntos de fricción y oportunidades de mejora. Cada mapa refleja las etapas clave de interacción, acciones realizadas, puntos de contacto, experiencias emocionales, dificultades enfrentadas y posibles mejoras.

#### Carolina Rivas

A continuación se presenta el User Journey Map de Carolina Rivas.

![user journey mapping carolina rivas](assets/images/chapter2/empathy-maps/customer-journey-map-restaurant-managers.png)

Uno de los problemas más críticos se encuentra en la toma y transmisión de pedidos. Al no existir un sistema estructurado, es común que ocurran errores en la anotación, interpretación o comunicación de los pedidos hacia la cocina. Esto puede generar confusiones, retrasos e incluso la entrega incorrecta de platos a los clientes.

La experiencia del usuario presenta modificaciones importantes, especialmente en las etapas de registro del pedido y preparación, donde se concentran los mayores niveles de incertidumbre y errores. La falta de claridad en el estado del pedido genera descoordinación entre el personal y aumenta la probabilidad de fallas en el servicio.

En conclusión, el proceso del restaurante requiere la implementación de un sistema que permita estructurar la toma de pedidos, mejorar la comunicación entre áreas y automatizar el control de inventario. Esto contribuiría a reducir errores, optimizar tiempos de atención y mejorar significativamente la experiencia tanto del cliente como del personal.

#### Jorge Torres

A continuación se presenta el User Journey Map de Jorge Torres.

![user journey mapping jorge torres](assets/images/chapter2/empathy-maps/customer-journey-mapping-retail-managers.png)

Uno de los principales problemas identificados es la falta de control en tiempo real del stock. Al no existir un sistema automatizado, los productos no se actualizan correctamente después de cada venta o reposición, lo que puede generar tanto quiebres de stock como sobreabastecimiento. Esta falta de visibilidad impacta directamente en la toma de decisiones del negocio.

En cuanto a la experiencia del usuario, se identifican puntos de frustración relacionados con la desorganización, el registro manual y la dificultad para acceder a información relevante como productos de alta rotación o niveles críticos de stock. La curva emocional muestra una caída en etapas clave del proceso.

Finalmente, el análisis permite concluir que el proceso de retail requiere una digitalización que permita automatizar el control de inventario, mejorar la precisión en el registro de ventas y proporcionar herramientas de análisis. Esto no solo optimizaría la operación, sino que también permitiría una mejor toma de decisiones estratégicas.

### 2.3.4. Empathy Mapping
En esta sección, el equipo resume el proceso de elaboración y presenta los Empathy Maps realizados para cada User Persona. El proceso implicó centrar cada User Persona y plasmar las observaciones del equipo, respondiendo a preguntas clave sobre qué piensan, sienten, ven, oyen, dicen y hacen. Finalmente, se identificaron los “Pains” y “Gains” con el objetivo de comprender mejor sus preocupaciones, necesidades y las soluciones que podrían generar mayor valor para ellos.

#### Carolina Rivas

Esta sección presenta el Empathy Map elaborado para Carolina Rivas, nuestra User Persona clave que representa a la propietaria y administradora de un restaurante en Lima. Este mapa permite visualizar de manera integral sus pensamientos, emociones, necesidades y desafíos dentro del contexto de la gestión diaria de su negocio.

<div style="display: flex; align-items: center;">
  <img src="https://i.imgur.com/eXhDJxU.png" alt="carolina-rivas-em">
</div>

A partir de este análisis, se evidencia que Carolina enfrenta dificultades principalmente relacionadas con la falta de control del inventario, el uso de procesos manuales y la ausencia de herramientas tecnológicas simples que se adapten a su operación. Estas limitaciones generan errores, pérdidas de insumos y dificultan la toma de decisiones informadas.

Mediante este enfoque empático, se identificaron sus principales frustraciones (Pains), como la falta de visibilidad en tiempo real del stock y la dependencia de registros manuales, así como sus oportunidades de valor (Gains), entre las que destacan la automatización de procesos, la reducción de errores y una mejor eficiencia operativa. Esto permite orientar la solución hacia una herramienta intuitiva, accesible y enfocada en mejorar el control del negocio sin aumentar su complejidad.

#### Jorge Torres

Por otro lado, esta sección presenta el Empathy Map elaborado para Jorge Torres, nuestro User Persona clave que representa a un administrador de un negocio retail de consumo masivo en Lima, Perú. Este mapa permite comprender de manera integral sus pensamientos, emociones, necesidades y desafíos en la gestión y optimización de su operación comercial.

<div style="display: flex; align-items: center;">
  <img src="https://i.imgur.com/WHCj5lx.png" alt="jorge-torres-em">
</div>

El análisis muestra que Jorge enfrenta problemas relacionados con inventarios desactualizados, uso excesivo de herramientas manuales como Excel y falta de visibilidad en tiempo real, lo que impacta directamente en la rentabilidad de su negocio. Además, presenta la necesidad de optimizar la reposición de productos y mejorar la organización del almacén.

A través de este ejercicio empático, se identificaron sus principales frustraciones (Pains), como las pérdidas por productos vencidos, errores en el registro de stock y la falta de alertas automáticas. Asimismo, se definieron sus oportunidades de valor (Gains), que incluyen una mejor planificación, control eficiente del inventario y toma de decisiones más rápida y precisa.

Este entendimiento permite diseñar una solución enfocada en brindar mayor control, automatización y simplicidad, alineada con su necesidad de optimizar procesos sin incrementar la complejidad operativa.

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

| **Term (EN)**                                             | **Definición (ES)**                                                                                                                    |
| --------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------- |
| **Branch** *(Sucursal)*                                   | Local físico del negocio donde se gestionan insumos, productos, ventas e inventario.                                                   |
| **Manager** *(Administrador)*                             | Usuario responsable de supervisar la operación de una sucursal, revisar el inventario y tomar decisiones de reposición o ajuste.       |
| **Restaurant manager** *(Administrador de restaurante)*   | Administrador encargado de supervisar la operación, inventario, recetas y ventas de una sucursal gastronómica.                         |
| **Retail manager** *(Administrador retail)*               | Administrador encargado de supervisar la operación, inventario, kits y ventas de una tienda retail.                                    |
| **Storage cabin** *(Cabina de almacenamiento)*            | Espacio físico donde se coloca un insumo para controlar su disponibilidad dentro de una sucursal.                                      |
| **Supplies Keeper** *(Supplies Keeper)*                   | Equipo usado por el negocio para controlar la disponibilidad de insumos dentro de una cabina de almacenamiento.                        |
| **Custom supply** *(Insumo personalizado)*                | Insumo definido por el negocio según sus propias necesidades operativas. Puede formar parte de una receta o de un kit.                 |
| **Supplier** *(Proveedor)*                                | Persona o empresa externa que abastece insumos al negocio.                                                                             |
| **Stock** *(Stock)*                                       | Cantidad disponible de un insumo en una sucursal.                                                                                      |
| **Stock threshold** *(Umbral de stock)*                   | Límite definido por el negocio para saber cuándo un insumo está en nivel bajo, normal o excedido.                                      |
| **Stock discrepancy** *(Diferencia de stock)*             | Diferencia entre la cantidad real de un insumo y la cantidad registrada en el sistema.                                                 |
| **Stock adjustment** *(Ajuste de stock)*                  | Corrección realizada cuando el administrador confirma que el stock registrado no coincide con el stock real.                           |
| **Physical count** *(Conteo físico)*                      | Revisión manual del inventario realizada por el administrador para confirmar la cantidad real de insumos.                              |
| **Inventory conciliation** *(Conciliación de inventario)* | Proceso mediante el cual el administrador revisa y corrige diferencias entre el stock real y el stock registrado.                      |
| **Replenishment** *(Reposición)*                          | Acción de reabastecer un insumo cuando su stock es insuficiente para la operación del negocio.                                         |
| **Pre-alert** *(Prealerta)*                               | Aviso preventivo que informa al administrador que un insumo está cerca de requerir reposición o revisión.                              |
| **Incident** *(Incidencia)*                               | Caso de seguimiento abierto cuando existe una diferencia de stock, una falla operativa o una situación que requiere atención.          |
| **Operational failure** *(Falla operativa)*               | Problema que afecta el control normal del inventario o impide conocer correctamente la disponibilidad de un insumo.                    |
| **Recipe** *(Receta)*                                     | Conjunto de insumos personalizados necesarios para preparar un producto gastronómico.                                                  |
| **Kit** *(Kit)*                                           | Conjunto de insumos personalizados agrupados para venderse, prepararse o gestionarse como una unidad.                                  |
| **Sale** *(Venta)*                                        | Registro de una receta o kit vendido por el negocio.                                                                                   |
| **Recipe sale** *(Venta de receta)*                       | Venta de una receta que reduce el stock de los insumos personalizados que la componen.                                                 |
| **Kit sale** *(Venta de kit)*                             | Venta de un kit que reduce el stock de los insumos personalizados incluidos en él.                                                     |
| **Supply history** *(Historial de insumos)*               | Registro de movimientos de un insumo, como ingresos, consumos, reposiciones, ajustes y ventas asociadas.                               |
| **Inventory report** *(Reporte de inventario)*            | Resumen que permite al administrador revisar el estado del stock, las reposiciones, las diferencias y las incidencias de una sucursal. |
| **Point of sale** *(Punto de venta)*                      | Canal donde se registran las ventas del negocio y desde donde puede reflejarse el consumo de recetas o kits.                           |

