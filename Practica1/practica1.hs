-- Funcion que devuelve los perimetros de triangulos, rectangulos y circulos de acuerdo
-- a 3 parametros de entrada, el primero es el valor maximo que puede medir cada lado
-- el segundo es el perimetro maximo de cada figura y el tercero es el area minima de cada figura
-- Retornar lista de tuplas con todas las posibles combinaciones de figuras que cumplan con las condiciones
-- Para los circulos cada tupla de la lista debe tener el radio , perimetro y area
-- Para el rectangulo cada tupla de la lista debe tener la base, la altura, el perimetro y el area
-- Para el triangulo cada tupla de la lista debe tener la base, la altura, el perimetro y el area

-- La funcion retorana una lista tupla de listas de tuplas
figuras maxL maxP minA = (
        [
            ("CIRCULO", d, p, a) | d <- [1..maxL], let p = 2 * pi * (d/2), let a = pi * (d/2) * (d/2), p <= maxP, a >= minA
        ],
        [
            ("RECTANGULO", b, h, p, a) | b <- [1..maxL], h <- [1..maxL], let p = 2 * b + 2 * h, let a = b * h, p < maxP, a > minA
        ],
        [
            ("TRIANGULO", l1, l2, l3, p, a) | l1 <- [1..maxL], l2 <- [1..maxL], l3 <- [1..maxL], let p = l1 + l2 + l3, let s = p / 2, let a = sqrt(s * (s - l1) * (s - l2) * (s - l3)), p <= maxP, a >= minA
        ]
    )

suma a b c = a + b + c

-- main = do
--     putStrLn "Ingrese los valores maximos de los lados, perimetro y area"
--     maxL <- getLine
--     maxP <- getLine
--     minA <- getLine
--     print(figuras (read maxL) (read maxP) (read minA))