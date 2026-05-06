#import "Inventario.h"

@implementation Inventario

@synthesize kilosPina = _kilosPina;
@synthesize kilosQueso = _kilosQueso;
@synthesize kilosTomate = _kilosTomate;

+ (Inventario *)getInstancia {
    static Inventario *instancia = nil;
    if (instancia == nil) {
        instancia = [[Inventario alloc] init];
    }
    return instancia;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        _kilosPina = 0.0f;
        _kilosQueso = 0.0f;
        _kilosTomate = 0.0f;
        NSLog(@"Inventario instanciado");
    }
    return self;
}

- (void)agregarQueso:(float)cantidad {
    self.kilosQueso += cantidad;
    NSLog(@"Queso agregado al inventario");
}

- (void)agregarTomate:(float)cantidad {
    self.kilosTomate += cantidad;
    NSLog(@"Tomate agregado al inventario");
}

- (void)agregarPina:(float)cantidad {
    self.kilosPina += cantidad;
    NSLog(@"Pina agregada al inventario");
}

- (BOOL)usarQueso:(float)cantidad {
    if (self.kilosQueso >= cantidad) {
        self.kilosQueso -= cantidad;
        NSLog(@"Queso utilizado. Restante: %.2fkg", self.kilosQueso);
        return YES;
    } else {
        NSLog(@"No hay suficiente Queso");
        return NO;
    }
}

- (BOOL)usarTomate:(float)cantidad {
    if (self.kilosTomate >= cantidad) {
        self.kilosTomate -= cantidad;
        NSLog(@"Tomate utilizado. Restante: %.2fkg", self.kilosTomate);
        return YES;
    } else {
        NSLog(@"No hay suficiente Tomate");
        return NO;
    }
}

- (BOOL)usarPina:(float)cantidad {
    if (self.kilosPina >= cantidad) {
        self.kilosPina -= cantidad;
        NSLog(@"Pina utilizada. Restante: %.2fkg", self.kilosPina);
        return YES;
    } else {
        NSLog(@"No hay suficiente Pina");
        return NO;
    }
}

- (void)mostrarInventario {
    NSLog(@"Pina en inventario: %.2fkg", self.kilosPina);
    NSLog(@"Queso en inventario: %.2fkg", self.kilosQueso);
    NSLog(@"Tomate en inventario: %.2fkg", self.kilosTomate);
}

@end