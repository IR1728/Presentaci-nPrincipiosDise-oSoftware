#import <Foundation/Foundation.h>

@interface Inventario : NSObject {
    float _kilosQueso;
    float _kilosTomate;
    float _kilosPina;
}

@property (nonatomic, assign) float kilosQueso;
@property (nonatomic, assign) float kilosTomate;
@property (nonatomic, assign) float kilosPina;

+ (Inventario *)getInstancia;

- (void)agregarQueso:(float)cantidad;
- (void)agregarTomate:(float)cantidad;
- (void)agregarPina:(float)cantidad;

- (BOOL)usarQueso:(float)cantidad;
- (BOOL)usarTomate:(float)cantidad;
- (BOOL)usarPina:(float)cantidad;

- (void)mostrarInventario;

@end