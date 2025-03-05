import Data.Array (listArray)



-- Function con guardas recibe lista de tipo number
-- y devuelve PROMEDIO BAJO si el promedio es menor a 100
-- PROMEDIO NORMAL si el promedio es menor a 500
-- PROMEDIO ALTO si el promedio es mayor o igual a 500
promedio :: (Real a, Foldable t) => t a -> String
promedio xs
    | length xs == 0 = "LISTA VACIA"
    | prom < 100 = "PROMEDIO:" ++ show prom ++ " BAJO"
    | prom < 500 = "PROMEDIO:" ++ show prom ++ " NORMAL"
    | otherwise = "PROMEDIO:" ++ show prom ++ " ALTO"
    where prom = realToFrac (sum xs) / realToFrac (length xs)