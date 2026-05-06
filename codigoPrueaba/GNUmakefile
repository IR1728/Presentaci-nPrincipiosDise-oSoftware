include $(GNUSTEP_MAKEFILES)/common.make

# Forzamos a Clang para evitar los errores de RPM de GCC
export CC = clang
export OBJC = clang

TOOL_NAME = hola
hola_OBJC_FILES = hola.m

# Mantenemos la ruta de los headers de Fedora
ADDITIONAL_OBJCFLAGS = -I/usr/lib/gcc/x86_64-redhat-linux/15/include

include $(GNUSTEP_MAKEFILES)/tool.make
