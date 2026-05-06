#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    // Creamos el "pool" de memoria manualmente
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    
    NSLog(@"¡Victoria! Objective-C corriendo en Fedora 43 con sintaxis clásica.");
    
    NSString *mensaje = @"Neovim está listo.";
    printf("%s\n", [mensaje UTF8String]);

    // Liberamos la memoria al terminar
    [pool drain];
    return 0;
}
