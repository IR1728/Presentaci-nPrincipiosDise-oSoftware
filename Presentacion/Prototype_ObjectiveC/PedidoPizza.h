#import <Foundation/Foundation.h>
#import "PrototipoPizza.h"

@interface PedidoPizza : NSObject<PrototipoPizza> {
    NSString *nombre;
}

- (id)initWithNombre:(NSString *)nombre;
- (id)initWithPrototype:(PedidoPizza *)otro;
- (void)mostrarPizza;

@end