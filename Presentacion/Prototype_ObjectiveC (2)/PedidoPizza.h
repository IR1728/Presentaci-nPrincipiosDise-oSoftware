#import <Foundation/Foundation.h>
#import "PrototipoPizza.h"

@interface PedidoPizza : NSObject <PrototipoPizza> {
    NSString *nombre;
    NSString *tipoMasa;
    NSString *tamanio;
    float precio;
    BOOL extraQueso;
}


- (id)initWithNombre:(NSString *)nuevoNombre
            tipoMasa:(NSString *)masa
            tamanio:(NSString *)size
             precio:(float)costo
        extraQueso:(BOOL)queso;

- (id)initWithPrototype:(PedidoPizza *)otro;

// Métodos
- (void)mostrarPizza;
- (void)setExtraQueso:(BOOL)queso;
- (void)setTamanio:(NSString *)nuevoTamanio;



@end