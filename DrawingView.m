//
//  DrawingView.m
//  FingerPaintApp
//
//  Created by Susan Justice on 2016-05-14.
//  Copyright © 2016 Amer Justice. All rights reserved.
//

#import "DrawingView.h"

@interface DrawingView ()

@property (nonatomic, strong) NSMutableArray * points;




@end

@implementation DrawingView

- (NSMutableArray *)points
{
    if (!_points)
    {
        _points = [[NSMutableArray alloc] init];
    }
    
    return _points;
}


 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    [[UIColor blackColor] setStroke];
    
    for(int )
        
        
        UIBezierPath *path = [UIBezierPath bezierPath];
    
//    [path moveToPoint: self.p1];
//    [path addLineToPoint:self.p2];
    
    [path moveToPoint: [[self.points firstObject] CGPointValue]];
    for (int i = 1; i < self.points.count; ++i) {
        [path addLineToPoint:[[self.points objectAtIndex:i] CGPointValue]];{
            
        }

        
    }
    
    path.lineWidth = 6;
    [path stroke];
    
        [path closePath];

}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    
    [self.points removeAllObjects];
    UITouch *initialTouch = [touches anyObject];
    CGPoint firstPoint = [initialTouch locationInView:self];
    
    
   // self.p1 = firstPoint;
    
    [self.points addObject: [NSValue valueWithCGPoint:firstPoint]];
    
  

}

-(void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    
    UITouch *touchMoved = [touches anyObject];
    CGPoint middlePoint = [touchMoved locationInView:self];
    
    
    // self.p1 = firstPoint;
    
    [self.points addObject: [NSValue valueWithCGPoint:middlePoint]];
    
    [self setNeedsDisplay];



    
    
}

-(void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    
    
    
    UITouch *endTouch = [touches anyObject];
    CGPoint endPoint = [endTouch locationInView:self];
    
    
    
    [self.points addObject:[NSValue valueWithCGPoint:endPoint]];
    
    [self setNeedsDisplay];
}

@end
