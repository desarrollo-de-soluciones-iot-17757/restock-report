# Conclusiones

## Conclusiones y recomendaciones

### Conclusiones

* **Validación técnica y comercial de la problemática:** El análisis del sector y las entrevistas de *Needfinding* confirmaron que la dependencia de procesos manuales en la gestión de inventarios para PyMEs gastronómicas y de *retail* genera discrepancias críticas, pérdidas económicas y cuellos de botella operativos.
* **Innovación mediante integración físico-digital:** La propuesta de UI-Topic resuelve de forma directa el dolor principal de los usuarios al conectar el mundo físico con el digital. El uso de sensores IoT (balanzas inteligentes) para estimar el *stock* en tiempo real elimina el error humano y diferencia al producto de competidores tradicionales.
* **Arquitectura altamente escalable y desacoplada:** La aplicación rigurosa de *Domain-Driven Design* (DDD) a nivel estratégico y táctico, junto con el modelo C4, resultó en un sistema robusto estructurado en *Bounded Contexts* (como *Asset and Resource*, *Sales*, *Monitoring*, entre otros). Esto garantiza que el sistema pueda crecer y mantenerse sin que los módulos se afecten entre sí.
* **Avance significativo en la implementación y despliegue del producto**: Durante la fase de implementación se desarrolló y desplegó una primera versión funcional de la Landing Page y de la aplicación web principal, permitiendo materializar los diseños y prototipos previamente definidos. Asimismo, la configuración del entorno de desarrollo, la gestión del código fuente, las convenciones de programación y las estrategias de despliegue establecieron una base sólida para asegurar un proceso de desarrollo ordenado y sostenible.
* **Aplicación efectiva de metodologías ágiles durante el desarrollo**: La planificación y ejecución del primer Sprint permitió organizar el trabajo mediante historias de usuario, asignación de responsabilidades y seguimiento de actividades. Las evidencias generadas durante las revisiones, pruebas y despliegues reflejan una adecuada coordinación entre los integrantes del equipo y una correcta adopción de prácticas ágiles para gestionar el avance del proyecto.

### Recomendaciones

* **Ejecución de un piloto controlado (MVP):** Antes de un lanzamiento masivo, se sugiere desplegar el hardware IoT y el *software* en un entorno de pruebas cerrado (1 o 2 sucursales piloto). Esto permitirá calibrar la sensibilidad de los sensores de peso y validar la precisión de la telemetría en escenarios de alto tráfico.
* **Monitoreo estricto de la capa *Edge*:** Dado que la solución depende de la transmisión de datos físicos al servidor, es vital implementar mecanismos de contingencia robustos en la *Restock Local Station Edge Application*. Se debe asegurar que las caídas de red temporales no generen pérdida de datos ni falsas alertas de discrepancia.
* **Iteración continua de la usabilidad:** Aunque el diseño actual contempla a los usuarios objetivo, se recomienda realizar pruebas de usabilidad periódicas con administradores reales de restaurantes y tiendas *retail*. El objetivo debe ser mantener una curva de aprendizaje mínima para combatir la resistencia a la digitalización.
* **Ampliar la cobertura de pruebas durante futuras iteraciones:** Aunque durante el Sprint inicial se desarrollaron evidencias de pruebas funcionales y de ejecución, se recomienda incorporar pruebas automatizadas adicionales, incluyendo pruebas unitarias, de integración y pruebas de rendimiento. Esto permitirá reducir riesgos asociados a cambios futuros y garantizar la estabilidad de la aplicación a medida que aumente su complejidad.
* **Continuar iterando sobre la experiencia de usuario**: Conforme se incorporen nuevas funcionalidades, será importante mantener ciclos continuos de evaluación de la experiencia de usuario mediante pruebas de usabilidad y sesiones de retroalimentación con administradores y colaboradores de negocios reales. El objetivo debe ser conservar interfaces intuitivas y minimizar la curva de aprendizaje para facilitar la adopción tecnológica.


<div style="page-break-after: always;"></div>


## Video About-the-Team

El vídeo acerca del equipo refleja el aporte y colaboración de cada integrante del equipo para lograr los objetivos en común de Restock. 
Además, se hace mención de la forma de colaboración para los entregables y sobre el control de los avances de cada integrante.

**Enlace al video:** [https://acortar.link/G5Dlxq](https://acortar.link/G5Dlxq)

<img src="https://i.imgur.com/giOQoXl.png" alt="imagen de la reunion para grabar el video sobre el equipo" style="width: 100%; height: auto;"/>

<div style="page-break-after: always;"></div>
