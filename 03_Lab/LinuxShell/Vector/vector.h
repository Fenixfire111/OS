#pragma once

#include "../Number/number.h"


class Vector1
{
public:
    Vector1() = default;
    Vector1(Number x, Number y);

    Number PolarRadius();

    Number PolarAngle();

    Vector1 VectorAddition(Vector1 vector2);

    Number x_;
    Number y_;

private:

};
