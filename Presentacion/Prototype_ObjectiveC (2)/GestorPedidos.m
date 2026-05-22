#import "GestorPedidos.h"
#import "PedidoPizza.h"

@implementation GestorPedidos

- (void)hacerPedido {

    PedidoPizza *pizza =
    [[PedidoPizza alloc] initWithNombre:@"Muzzarella"
                               tipoMasa:@"Delgada"
                               tamanio:@"Grande"
                                precio:150
                           extraQueso:NO];

    PedidoPizza *pizza1 = [pizza clonar];
    PedidoPizza *pizza2 = [pizza clonar];

    [pizza1 setExtraQueso:YES];
    [pizza2 setTamanio:@"Mediana"];

    [pizza mostrarPizza];
    [pizza1 mostrarPizza];
    [pizza2 mostrarPizza];
}

@end