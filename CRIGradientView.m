//
//  CKGradientView.m
//
//  Created by Waqar Malik on 1/16/11.
//  Copyright 2011 Crimson Research, Inc. All rights reserved.
//

#if !__has_feature(objc_arc)
#  error Please compile this class with ARC (-fobjc-arc).
#endif

#import <QuartzCore/QuartzCore.h>
#import "CRIGradientView.h"

@implementation CRIGradientView
@dynamic colors;
@dynamic locations;
@dynamic startPoint;
@dynamic endPoint;
@dynamic type;

+ (Class)layerClass
{
	return [CAGradientLayer class];
}

- (NSArray *)colors
{
    CAGradientLayer *layer = (CAGradientLayer *)self.layer;
    NSArray *cgColors = layer.colors;
    NSMutableArray *colors = [NSMutableArray arrayWithCapacity:cgColors.count];

    for(id cgColor in cgColors)
    {
        [colors addObject:[UIColor colorWithCGColor:(__bridge CGColorRef)cgColor]];
    }
    
    return colors;
}

- (void)setColors:(NSArray *)colors
{
    CAGradientLayer *layer = (CAGradientLayer *)self.layer;
    NSMutableArray *cgColors = [NSMutableArray arrayWithCapacity:colors.count];
    for(UIColor *color in colors)
    {
        [cgColors addObject:(id)color.CGColor];
    }
    
    layer.colors = cgColors;
}

- (NSArray *)locations
{
    CAGradientLayer *layer = (CAGradientLayer *)self.layer;
    return layer.locations;
}

- (void)setLocations:(NSArray *)locations
{
    CAGradientLayer *layer = (CAGradientLayer *)self.layer;
    layer.locations = locations;
}

- (CGPoint)startPoint
{
    CAGradientLayer *layer = (CAGradientLayer *)self.layer;
    return layer.startPoint;
}

- (void)setStartPoint:(CGPoint)startPoint
{
    CAGradientLayer *layer = (CAGradientLayer *)self.layer;
    layer.startPoint = startPoint;
}

- (CGPoint)endPoint
{
    CAGradientLayer *layer = (CAGradientLayer *)self.layer;
    return layer.endPoint;
}

- (void)setEndPoint:(CGPoint)endPoint
{
    CAGradientLayer *layer = (CAGradientLayer *)self.layer;
    layer.endPoint = endPoint;
}

- (NSString *)type
{
    CAGradientLayer *layer = (CAGradientLayer *)self.layer;
    return layer.type;
}

- (void)setType:(NSString *)type
{
    CAGradientLayer *layer = (CAGradientLayer *)self.layer;
    layer.type = type;
}
@end
