#import <Foundation/Foundation.h>

@interface PIzzaHawaiana : NSObject {
    float _cantidadTomate;
    float _cantidadQueso;
    float _cantidadPina;
}

@property (nonatomic, assign) float cantidadTomate;
@property (nonatomic, assign) float cantidadQueso;
@property (nonatomic, assign) float cantidadPina;

- (void)vender;

@end