# Objective-C Design Patterns (Fedora 43)

Este proyecto implementa diversos patrones de diseño utilizando **Objective-C** sobre el ecosistema **GNUstep**, optimizado para el entorno Fedora.

##  Patrones Implementados

El proyecto demuestra la aplicación práctica de los siguientes patrones de diseño:

*   **Patrones Creacionales:**
    *   `Singleton`: Garantiza una instancia única de una clase.
    *   `Prototype`: Permite la clonación de objetos existentes.
*   **Patrón de Comportamiento:**
    *   `Strategy`: Facilita el intercambio de algoritmos en tiempo de ejecución.

---

##  Entorno de Desarrollo

La ejecución y desarrollo están validados para el siguiente entorno técnico:

*   **Sistema Operativo:** Fedora 43 con gestor de ventanas **LXQt**.
*   **Lenguaje:** Objective-C 2.0.
*   **Compiladores:** Clang 21.1+ y GCC 15.2.
*   **Framework:** GNUstep Foundation.

---

##  Instalación de Dependencias

Para preparar el sistema, es necesario instalar el toolchain de Clang y las librerías de desarrollo de GNUstep mediante el siguiente comando:
```bash
sudo dnf install clang clang-tools-extra gcc-objc gnustep-make gnustep-base-devel libobjc
