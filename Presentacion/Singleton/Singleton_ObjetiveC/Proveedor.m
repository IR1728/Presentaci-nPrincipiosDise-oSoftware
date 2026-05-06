#import "Proveedor.h"
#import "Inventario.h"

@implementation Proveedor

@synthesize nombre = _nombre;
@synthesize telefono = _telefono;

- (instancetype)init {
    self = [super init];
    if (self) {
        _nombre = @"Proveedor de ingredientes";
        _telefono = @"2281920121";
    }
    return self;
}

- (void)abastecerPina:(float)pina tomate:(float)tomate queso:(float)queso {
    Inventario *inventario2 = [Inventario getInstancia];
    [inventario2 agregarPina:pina];
    [inventario2 agregarQueso:queso];
    [inventario2 agregarTomate:tomate];
}

@end