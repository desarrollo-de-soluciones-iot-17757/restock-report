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
