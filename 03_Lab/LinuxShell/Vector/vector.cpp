#include "vector.h"
#define _USE_MATH_DEFINES
#include <math.h>

Vector1::Vector1(Number x, Number y) : x_(x), y_(y)
{
}

Number Vector1::PolarRadius()
{
    return Number(sqrt(x_.value*x_.value + y_.value*y_.value));
}

Number Vector1::PolarAngle() {
    if (x_.value == 0) {
        if (y_.value >= 0) {
            return Number(M_PI/2);
        }
        else {
            return Number(-M_PI / 2);
        }

    }
    else if (x_.value < 0) {
        return Number(M_PI + atan((y_.value / x_.value)));
    }
    else {
        return Number(atan((y_.value / x_.value)));
    }

}

Vector1 Vector1::VectorAddition(Vector1 vector2) {
    x_.Add(vector2.x_.value);
    y_.Add(vector2.y_.value);
    return *this;
}