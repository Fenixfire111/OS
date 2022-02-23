#include <iostream>
#include <Vector1.h>

int main()
{
    Vector1 vector1(Number(0), Number(-10));
    Vector1 vector2(Number(-10), Number(10));

    std::cout << vector1.PolarRadius().value << std::endl;

    std::cout << vector1.PolarAngle().value << std::endl;

    vector1.VectorAddition(vector2);

    std::cout << vector1.x_.value<< std::endl;
    std::cout << vector1.y_.value << std::endl;

    Number number(23);

    number.Add(10);

    std::cout << "a + b = " <<
        number.value << std::endl;

    std::cout << " a - b = " <<
        number.Subtract(5) << std::endl;

    std::cout << "a*b = " <<
        number.Multiply(10) << std::endl;

    std::cout << "a/b = " <<
        number.Divide(10) << std::endl;

    number = createNumber(10);

    std::cout << "Create Number (10) = " <<
        number.value << std::endl;

}
