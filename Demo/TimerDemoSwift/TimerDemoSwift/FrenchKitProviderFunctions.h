//
//  FrenchKitProviderFunctions.h
//  TimerDemoSwift
//
//  Created by Frank on 19/09/16.
//  Copyright © 2016 Frank Lefebvre. All rights reserved.
//

#ifndef FrenchKitProviderFunctions_h
#define FrenchKitProviderFunctions_h

#import <Foundation/Foundation.h>

#include "FrenchKitProvider.h"

static inline void FrenchKitUpdateCounter(NSInteger value) {
    FRENCHKIT_UPDATE_COUNTER(value);
}

#endif /* FrenchKitProviderFunctions_h */
