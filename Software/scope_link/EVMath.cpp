//
//  EVMath.cpp
//  Scope
//
//  Created by Daniel Vasile on 2020-03-13.
//  Copyright © 2020 EEVengers. All rights reserved.
//

#include "EVMath.hpp"


//this function currently does not interpolate the last (numPointsBetween + 1) points. It doesn't perticulary matter as those points
//are not shown to the end user anyways as the display 'window' is smaller than the data 'window'
DataPoint* SincInterpolate(DataPoint* buff, int buffSize, int* interpolatedBuffSize, int numPointsBetween, int windowSize) {
    *interpolatedBuffSize = (((buffSize - 1) * numPointsBetween) + buffSize);
    DataPoint* points = (DataPoint*)malloc(sizeof(DataPoint) * (*interpolatedBuffSize));
    float samplingPeriod = buff[1].time - buff[0].time;
    float step = samplingPeriod / (float(numPointsBetween) + 1);
    int pointIdx = 0;

    for(int i = 0; i < buffSize - 1; i++) {
        //interpolate the point and the following 'numPointsBetween' points

        //Set the start of the 'window' which are the N amount of points that will be used to interpolate
        int windowStart = i;

	    //if window start + window size overflows the input data buffer
        if( windowStart + windowSize > buffSize - 1) {
            windowStart = (buffSize - windowSize) - 1;
        }
        //If window start is too close to the start of the array,
        else if( windowStart < windowSize / 2) {
            windowStart = 0;
        } else {
            windowStart -= windowSize / 2;
        }

	    //add the measured point
	    points[pointIdx] = buff[i];
	    pointIdx++;

        for(int q = 1; q < numPointsBetween + 1; q++) {
            float t = (float(q) * step);
            points[pointIdx].time = buff[i].time + t;
            for(int m = windowStart; m < windowStart + windowSize; m++) {
                float num, denum, tByDeltaT;

                tByDeltaT = ( M_PI * ((t / samplingPeriod) - float(m - i)) ) / float(windowSize);
                if(tByDeltaT <= 0.001 && tByDeltaT >= -0.001) {
                    points[pointIdx].value += buff[m].value;
		            continue;
                }

                num = sin(float(windowSize) * tByDeltaT);
		        denum = float(windowSize) * sin(tByDeltaT);

                points[pointIdx].value += buff[m].value * (num / denum);
            }
            pointIdx++;
        }
    }

    return points;
}
