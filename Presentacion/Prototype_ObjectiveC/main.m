#import <Foundation/Foundation.h>
#import "GestorPedidos.h"

int main(int argc, const char * argv[]) {

    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];

    GestorPedidos *gestor = [[GestorPedidos alloc] init];
    [gestor hacerPedido];

    [pool drain];
    return 0;
}