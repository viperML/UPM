#!/bin/bash
echo "f(x,y) =
si x < y            0                   si x < -2
                    sqrt(x^2 + y^2)     si -2 <= x < 2
                    x/2y                si 2 <= x <= 4
                    7x^(4/3)            si x > 4

si  x > y, y>-7     y - x               si x < -2
                    x/y                 si 2 > x >= -2, y != 0
                    0                   si 2 > x >= -2, y = 0

resto de casos      7x^3 + 2x^2 - x + 5"