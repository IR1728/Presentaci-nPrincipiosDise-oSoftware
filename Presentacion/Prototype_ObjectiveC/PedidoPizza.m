#import "PedidoPizza.h"

@implementation PedidoPizza

- (id)initWithNombre:(NSString *)nuevoNombre {
    self = [super init];

    if (self) {
        nombre = nuevoNombre;
    }

    return self;
}

- (id)initWithPrototype:(PedidoPizza *)otro {
    self = [super init];

    if (self) {
        nombre = otro->nombre;
    }

    return self;
}

- (id)clonar {
    return [[PedidoPizza alloc] initWithPrototype:self];
}

- (void)mostrarPizza {
    NSLog(@"La pizza es: %@", nombre);
}

@end