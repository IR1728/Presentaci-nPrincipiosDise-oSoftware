#import "PedidoPizza.h"

@implementation PedidoPizza

- (id)initWithNombre:(NSString *)nuevoNombre
            tipoMasa:(NSString *)masa
            tamanio:(NSString *)size
             precio:(float)costo
        extraQueso:(BOOL)queso {

    self = [super init];

    if (self) {
        nombre = nuevoNombre;
        tipoMasa = masa;
        tamanio = size;
        precio = costo;
        extraQueso = queso;
    }

    return self;
}

- (id)initWithPrototype:(PedidoPizza *)otro {

    self = [super init];

    if (self) {
        nombre = otro->nombre;
        tipoMasa = otro->tipoMasa;
        tamanio = otro->tamanio;
        precio = otro->precio;
        extraQueso = otro->extraQueso;
    }

    return self;
}

- (id)clonar {
    return [[PedidoPizza alloc] initWithPrototype:self];
}

- (void)mostrarPizza {
    NSLog(@"Pizza:");
    NSLog(@"Nombre: %@", nombre);
    NSLog(@"Masa: %@", tipoMasa);
    NSLog(@"Tamaño: %@", tamanio);
    NSLog(@"Precio: %.2f", precio);
    NSLog(@"Extra queso: %@", extraQueso ? @"Si" : @"No");
    NSLog(@"-------------------");
}

- (void)setExtraQueso:(BOOL)queso {
    extraQueso = queso;
}

- (void)setTamanio:(NSString *)nuevoTamanio {
    tamanio = nuevoTamanio;
}


@end