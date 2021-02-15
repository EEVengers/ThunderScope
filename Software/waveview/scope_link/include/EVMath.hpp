//
//  EVMath.hpp
//  Scope
//
//  Created by Daniel Vasile on 2020-03-13.
//  Copyright © 2020 EEVengers. All rights reserved.
//

#ifndef EVMath_hpp
#define EVMath_hpp

#include <cmath>

/* EVMath Structs and Enums */

struct DataPoint {

    float time;
    float value;

};

/* END OF EVMATH STRUCTS AND ENUMS*/

DataPoint* SincInterpolate(DataPoint* Buff, int buffSize, int* numInterpolatedPoints, int numPointsBetween, int windowSize);

#endif /* EVMath_hpp */
