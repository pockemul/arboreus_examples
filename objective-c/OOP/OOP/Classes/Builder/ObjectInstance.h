//
//  ObjectInstance.h
//  OOP
//
//  Created by Alexandr Kirilov on 2019-06-26.
//  Copyright © 2019 none. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ObjectInstance : NSObject

@property (retain,nonatomic) NSString *pTestString;

-(void) mSetString: (NSString *) inString;
-(NSString *) mGetString;

@end

NS_ASSUME_NONNULL_END
