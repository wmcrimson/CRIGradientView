//
//  CRIGradientView.h
//
//  Created by Waqar Malik on 1/16/11.
//  Copyright 2011 Crimson Research, Inc. All rights reserved.
//

#import <UIKit/UIView.h>

@interface CRIGradientView : UIView
@property (nonatomic, retain) NSArray *colors;
@property (nonatomic, retain) NSArray *locations;
@property (nonatomic, assign) CGPoint startPoint;
@property (nonatomic, assign) CGPoint endPoint;
@property (nonatomic, retain) NSString *type;
@end
