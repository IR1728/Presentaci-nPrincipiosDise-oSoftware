# Presentación de patrones de diseño

Este proyecto implementa diversos patrones de diseño utilizando **Objective-C** sobre el ecosistema **GNUstep**

## Patrones Implementados

El proyecto demuestra la aplicación práctica de los siguientes patrones de diseño:

*   **Patrones Creacionales:**
    *   `Singleton`: Garantiza una instancia única de una clase.
    *   `Prototype`: Permite la clonación de objetos existentes.
*   **Patrón de Comportamiento:**
    *   `Strategy`: Facilita el intercambio de algoritmos en tiempo de ejecución.

---

## Problema que resuelve cada ejemplo

### Singleton — Inventario de pizzería
Una pizzería necesita un único registro de inventario compartido entre todos los módulos del sistema (proveedores, cocina, ventas). Sin Singleton, cada parte del código crearía su propio `Inventario`, resultando en datos inconsistentes. La clase `Inventario` expone el método de clase `+getInstancia` que siempre devuelve la misma instancia, garantizando coherencia en todo el programa.

### Prototype — Gestor de pedidos
Crear un pedido de pizza desde cero implica configurar múltiples atributos. El patrón Prototype permite clonar un pedido base ya configurado en lugar de construir cada nuevo pedido de cero. `PedidoPizza` implementa el protocolo `PrototipoPizza` con el método `-clonar`, produciendo copias listas para usar sin repetir la inicialización.

### Strategy — Calculadora intercambiable
Una calculadora necesita poder cambiar de operación (suma, resta, etc.) en tiempo de ejecución sin modificar su código. El patrón Strategy define el protocolo `Operacion`, y `Calculadora` delega el cálculo a la estrategia asignada, permitiendo intercambiarla dinámicamente sin alterar la clase principal.

---

## Entorno de Desarrollo y Ejecución

*   **Sistema Operativo:** Windows 10/11.
*   **Lenguaje:** Objective-C 2.0.
*   **Compilador:** Clang (vía MSYS2 MinGW-w64).
*   **Framework:** GNUstep Foundation.

---

## Instalación de Dependencias

**1.** Instalar [MSYS2](https://www.msys2.org/) y abrirlo desde el acceso directo **MSYS2 MinGW x64**.

**2.** Actualizar el sistema e instalar Clang y GNUstep:

```bash
pacman -Syu
pacman -S mingw-w64-x86_64-clang mingw-w64-x86_64-gnustep-base
