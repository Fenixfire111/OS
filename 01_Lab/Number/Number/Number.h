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

const Number numberZero(0);
const Number numberOne(1);

Number createNumber(double value1);
