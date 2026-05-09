# Conclusiones

## Conclusiones y recomendaciones

### Conclusiones

* **Validación técnica y comercial de la problemática:** El análisis del sector y las entrevistas de *Needfinding* confirmaron que la dependencia de procesos manuales en la gestión de inventarios para PyMEs gastronómicas y de *retail* genera discrepancias críticas, pérdidas económicas y cuellos de botella operativos.
* **Innovación mediante integración físico-digital:** La propuesta de UI-Topic resuelve de forma directa el dolor principal de los usuarios al conectar el mundo físico con el digital. El uso de sensores IoT (balanzas inteligentes) para estimar el *stock* en tiempo real elimina el error humano y diferencia al producto de competidores tradicionales.
* **Arquitectura altamente escalable y desacoplada:** La aplicación rigurosa de *Domain-Driven Design* (DDD) a nivel estratégico y táctico, junto con el modelo C4, resultó en un sistema robusto estructurado en *Bounded Contexts* (como *Asset and Resource*, *Sales*, *Monitoring*, entre otros). Esto garantiza que el sistema pueda crecer y mantenerse sin que los módulos se afecten entre sí.

### Recomendaciones

* **Ejecución de un piloto controlado (MVP):** Antes de un lanzamiento masivo, se sugiere desplegar el hardware IoT y el *software* en un entorno de pruebas cerrado (1 o 2 sucursales piloto). Esto permitirá calibrar la sensibilidad de los sensores de peso y validar la precisión de la telemetría en escenarios de alto tráfico.
* **Monitoreo estricto de la capa *Edge*:** Dado que la solución depende de la transmisión de datos físicos al servidor, es vital implementar mecanismos de contingencia robustos en la *Restock Local Station Edge Application*. Se debe asegurar que las caídas de red temporales no generen pérdida de datos ni falsas alertas de discrepancia.
* **Iteración continua de la usabilidad:** Aunque el diseño actual contempla a los usuarios objetivo, se recomienda realizar pruebas de usabilidad periódicas con administradores reales de restaurantes y tiendas *retail*. El objetivo debe ser mantener una curva de aprendizaje mínima para combatir la resistencia a la digitalización.

## Video About-the-Team
