#import "PIzzaHawaiana.h"
#import "Inventario.h"

@implementation PIzzaHawaiana

@synthesize cantidadPina = _cantidadPina;
@synthesize cantidadQueso = _cantidadQueso;
@synthesize cantidadTomate = _cantidadTomate;

- (instancetype)init {
    self = [super init];
    if (self) {
        _cantidadPina = 0.2f;
        _cantidadQueso = 0.3f;
        _cantidadTomate = 0.5f;
    }
    return self;
}

- (void)vender {
    Inventario *inventario1 = [Inventario getInstancia];
    
    if ([inventario1 usarPina:self.cantidadPina]) {
        if ([inventario1 usarQueso:self.cantidadQueso]) {
            if ([inventario1 usarTomate:self.cantidadTomate]) {
                NSLog(@"Pizza vendida.");
            }
        }
    }
}

@end