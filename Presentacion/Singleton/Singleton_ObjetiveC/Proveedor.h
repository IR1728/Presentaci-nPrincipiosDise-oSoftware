#import <Foundation/Foundation.h>

@interface Proveedor : NSObject {
    NSString *_nombre;
    NSString *_telefono;
}

@property (nonatomic, retain) NSString *nombre;
@property (nonatomic, retain) NSString *telefono;

- (void)abastecerPina:(float)pina tomate:(float)tomate queso:(float)queso;

@end