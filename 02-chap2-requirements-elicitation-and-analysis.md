# Capítulo II: Requirements Elicitation & Analysis

## 2.1 Competidores

- **Oracle Simphony** (competidor directo): Plataforma empresarial desarrollada por Oracle Corporation que permite la gestión integral de restaurantes mediante POS, inventario, analítica y operaciones en la nube. Está orientado a grandes cadenas y corporaciones del sector hospitality, con fuerte presencia en Norteamérica y Europa. Su principal fortaleza es la integración completa del ecosistema, aunque presenta altos costos y complejidad de implementación.

- **RestroWorks** (competidor directo): Solución SaaS enfocada en la gestión operativa de restaurantes, incluyendo inventario, pedidos, cocina y reportes. Se orienta a negocios medianos y cadenas en crecimiento, con presencia en Latinoamérica y Asia. Destaca por su modularidad, aunque puede volverse costoso y complejo dependiendo de los módulos implementados.

- **SoftRestaurant** (competidor directo): Software administrativo con más de 20 años en el mercado latinoamericano. Permite gestionar inventarios, ventas, personal y facturación. Está enfocado en restaurantes pequeños y medianos. Su principal ventaja es la experiencia regional, pero su arquitectura es tradicional y menos flexible frente a soluciones cloud-native.

- **MarketMan** (competidor indirecto): Plataforma especializada en gestión de inventarios y compras para restaurantes. Permite automatizar pedidos, controlar costos y optimizar abastecimiento. Tiene presencia global, principalmente en Estados Unidos y Europa. Su enfoque es altamente especializado, pero depende de inputs manuales y no integra sensores físicos.

---

### 2.1.1 Análisis Competitivo

**¿Por qué llevar a cabo este análisis?**

> El objetivo de este análisis es identificar las brechas existentes en las soluciones actuales de gestión de inventarios, especialmente en sectores con baja digitalización como restaurantes y retail de alimentos.  
> A partir de este análisis, se busca diseñar una propuesta de valor diferenciada basada en automatización inteligente, integración con IoT y simplicidad operativa, alineada con las necesidades reales del usuario.

<table>
  <thead>
    <tr>
      <th></th>
      <th><b>UI-Topic (Nuestro producto)</b></th>
      <th><b>Oracle Simphony</b></th>
      <th><b>RestroWorks</b></th>
      <th><b>SoftRestaurant</b></th>
      <th><b>MarketMan</b></th>
    </tr>
  </thead>
  <tbody>

<tr><th><b>Perfil</b></th><td></td><td></td><td></td><td></td><td></td></tr>

<tr>
<td>Overview</td>
<td>Plataforma inteligente de inventarios con sensores IoT y automatización en tiempo real.</td>
<td>Suite empresarial POS + operaciones.</td>
<td>Gestión integral de restaurantes.</td>
<td>Sistema administrativo tradicional.</td>
<td>Software especializado en inventario y compras.</td>
</tr>

<tr>
<td>Ventaja competitiva</td>
<td>Automatización física + digital del inventario.</td>
<td>Escalabilidad global y analítica avanzada.</td>
<td>Plataforma modular adaptable.</td>
<td>Experiencia en LATAM.</td>
<td>Especialización en costos e inventario.</td>
</tr>

<tr><th><b>Perfil de Marketing</b></th><td></td><td></td><td></td><td></td><td></td></tr>

<tr>
<td>Estrategias</td>
<td>Eficiencia operativa y reducción de errores.</td>
<td>Escalabilidad y confiabilidad.</td>
<td>Casos de éxito y crecimiento.</td>
<td>Experiencia y presencia regional.</td>
<td>Optimización de rentabilidad.</td>
</tr>

<tr>
<td>Mercado objetivo</td>
<td>Restaurantes y retail con baja digitalización.</td>
<td>Grandes cadenas.</td>
<td>Restaurantes medianos.</td>
<td>Pequeños y medianos.</td>
<td>Restaurantes enfocados en costos.</td>
</tr>

<tr><th><b>Perfil de Producto</b></th><td></td><td></td><td></td><td></td><td></td></tr>

<tr>
<td>Productos</td>
<td>IoT + inventario + alertas + analítica.</td>
<td>POS, pedidos, analítica.</td>
<td>Pedidos, cocina, inventario.</td>
<td>Ventas, stock, facturación.</td>
<td>Inventario, compras, reportes.</td>
</tr>

<tr>
<td>Precios</td>
<td>Suscripción escalable + hardware.</td>
<td>Alto costo enterprise.</td>
<td>Modelo modular.</td>
<td>Bajo a medio costo.</td>
<td>Suscripción SaaS.</td>
</tr>

<tr><th><b>Análisis SWOT</b></th><td></td><td></td><td></td><td></td><td></td></tr>

<tr>
<td>Fortalezas</td>
<td>Automatización real y diferenciación.</td>
<td>Infraestructura robusta.</td>
<td>Adaptabilidad.</td>
<td>Experiencia consolidada.</td>
<td>Especialización.</td>
</tr>

<tr>
<td>Debilidades</td>
<td>Dependencia de adopción tecnológica.</td>
<td>Complejidad y costo.</td>
<td>Curva de aprendizaje.</td>
<td>Tecnología obsoleta.</td>
<td>No cubre operación completa.</td>
</tr>

<tr>
<td>Oportunidades</td>
<td>Baja digitalización del mercado.</td>
<td>Expansión global.</td>
<td>Cloud kitchens.</td>
<td>Mercados emergentes.</td>
<td>Optimización financiera.</td>
</tr>

<tr>
<td>Amenazas</td>
<td>Resistencia al cambio.</td>
<td>Nuevos SaaS económicos.</td>
<td>Competidores simples.</td>
<td>Innovación externa.</td>
<td>Integraciones más completas.</td>
</tr>

  </tbody>
</table>

---

### 2.1.2 Estrategias y tácticas frente a competidores

#### Enfoque Estratégico de UI-Topic

UI-Topic se posiciona como una solución de automatización inteligente del inventario, combinando software con sensores IoT para eliminar la dependencia de registros manuales. Su propuesta de valor se centra en la precisión en tiempo real, reducción de errores humanos y optimización del espacio de almacenamiento.

---

#### 1. Frente a Oracle Simphony

- **Estrategia:** Enfoque en PYMEs con menor capacidad de inversión.
- **Tácticas:**
  - Implementación rápida y sencilla.
  - Interfaz intuitiva sin necesidad de capacitación avanzada.
  - Costos accesibles.
  - Soporte localizado.

---

#### 2. Frente a RestroWorks

- **Estrategia:** Especialización en inventarios.
- **Tácticas:**
  - Eliminación de procesos manuales mediante sensores.
  - Menor complejidad operativa.
  - Plataforma enfocada en eficiencia, no en amplitud funcional.

---

#### 3. Frente a SoftRestaurant

- **Estrategia:** Migración hacia tecnología moderna.
- **Tácticas:**
  - Arquitectura cloud-native.
  - Integración con hardware IoT.
  - Experiencia de usuario moderna y simplificada.

---

#### 4. Frente a MarketMan

- **Estrategia:** Diferenciación por automatización física.
- **Tácticas:**
  - Eliminación del input manual.
  - Inventario autónomo en tiempo real.
  - Alertas basadas en estado físico del stock.

---


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
