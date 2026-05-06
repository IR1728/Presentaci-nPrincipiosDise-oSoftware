#import <Foundation/Foundation.h>
#import "Proveedor.h"
#import "PIzzaHawaiana.h"
#import "Inventario.h"

int main(int argc, const char * argv[]) {
 
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

    Proveedor *proveedor = [[Proveedor alloc] init];
    PIzzaHawaiana *pizza = [[PIzzaHawaiana alloc] init];

    Inventario *inventario = [Inventario getInstancia];

    [inventario mostrarInventario];

    [proveedor abastecerPina:1.0f tomate:2.0f queso:1.0f];

    [inventario mostrarInventario];

    [pizza vender];
    [pizza vender];

    [inventario mostrarInventario];

    [pool drain];
    return 0;
}