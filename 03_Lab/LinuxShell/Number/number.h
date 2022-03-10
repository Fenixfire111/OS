#pragma once

class Number
{

public:
    double value;
    explicit Number(double number = 0);

    double Add(double number2);

    double Subtract(double number2);

    double Multiply(double number2);

    double Divide(double number2);
};

extern Number numberZero;
extern Number numberOn;

Number createNumber(double value1);

