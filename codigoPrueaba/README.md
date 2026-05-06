Se implementan los patrones singleton y prototype como patrones creacionales y strategy como patrón de comportamiento.
De momento,su ejecución se planea hacer solamente en el SO fedora en su versión 43 con el gestor de ventanas lxqt 
con las dependencias de clang versión 21 mediante el siguiente comando:
sudo dnf install clang clang-tools-extra gcc-objc \ gnustep-make gnustep-base-devel libobjc
cargar las rutas
source /usr/lib64/GNUstep/Makefiles/GNUstep.sh
export RPM_ARCH=x86_6

      make
    El binario se genera dentro de una carpeta llamada `obj/`.
    bash
    
La versión del lenguaje y framework utiizados fueron
Objective-C 2.0 
Clang 21.1+ / GCC 15.2

