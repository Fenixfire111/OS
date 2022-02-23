#pragma once

#include <Number.h>

#ifdef VECTOR_EXPORTS
#define VECTOR_API __declspec(dllexport)
#else
#define VECTOR_API __declspec(dllimport)
#endif  // VECTOR_EXPORTS

class VECTOR_API Vector1
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