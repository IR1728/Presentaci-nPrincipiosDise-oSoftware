#import "GestorPedidos.h"
#import "PedidoPizza.h"

@implementation GestorPedidos

-(void)hacerPedido {
    PedidoPizza *pizza =
    [[PedidoPizza alloc] initWithNombre:@"Muzzarella"];
    PedidoPizza *pizza1 = [pizza clonar];
    PedidoPizza *pizza2 = [pizza clonar];
    [pizza mostrarPizza];
    [pizza1 mostrarPizza];  
    [pizza2 mostrarPizza];

}

@end