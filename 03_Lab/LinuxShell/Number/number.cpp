#include "number.h"

Number::Number(double number) : value(number)
{
}

double Number::Add(double number2)
{
    value += number2;
    return value;
}

double Number::Subtract(double number2)
{
    value -= number2;
    return value;
}

double Number::Multiply(double number2)
{
    value *= number2;
    return value;
}

double Number::Divide(double number2)
{
    value /= number2;
    return value;
}

Number createNumber(double value1)
{
    Number number(value1);
    return number;
}

Number numberZero(0);
Number numberOn(1);
