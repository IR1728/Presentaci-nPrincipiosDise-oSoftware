#import <Foundation/Foundation.h>


@protocol Operacion <NSObject>
- (int)ejecutar:(int)a con:(int)b;
@end


@interface Suma : NSObject <Operacion> @end
@implementation Suma
- (int)ejecutar:(int)a con:(int)b { return a + b; }
@end

@interface Resta : NSObject <Operacion> @end
@implementation Resta
- (int)ejecutar:(int)a con:(int)b { return a - b; }
@end


@interface Calculadora : NSObject
@property (nonatomic, strong) id<Operacion> estrategia;
- (int)calcular:(int)a con:(int)b;
@end

@implementation Calculadora
- (int)calcular:(int)a con:(int)b {
    return [self.estrategia ejecutar:a con:b];
}
@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Calculadora *calc = [Calculadora new];
        
        calc.estrategia = [Suma new];
        NSLog(@"Suma (5+3) = %d", [calc calcular:5 con:3]);
        
        calc.estrategia = [Resta new];
        NSLog(@"Resta (5-3) = %d", [calc calcular:5 con:3]);
    }
    return 0;
}
