
--------------------Guía 1

--multiplica por 2
por2 :: Num a => a -> a
por2 x = 2 * x

--define el signo de un número
signo :: Int -> Int
signo x |x > 0 = 1
 |x == 0 = 0
 |x < 0 = (-1)

--calcula el promedio entre dos números
promedio :: Fractional a => a -> a -> a 
promedio x y = (x + y)/2

--devuelve True si está entre 0 y 9
entre0y9 :: Int -> Bool
entre0y9 x |x >= 0 && x <= 9 = True
 |otherwise = False

--devuelve si el precio de una computadora te conviene
rangoPrecio :: Int -> String
rangoPrecio x |x < 2000 && x >= 0 = "Muy Barato"
 |x > 5000 = "Demasiado Caro"
 |x > 2000 && x < 5000 = "Hay que verlo bien"
 |x < 0 = "Esto no puede ser!"

--devuelve su valor absoluto
absoluto :: Int -> Int
absoluto x |x >= 0 = x
 |x < 0 = (-x)

--devuelve True si es múltiplo de 2
esMultiplo2 :: Int -> Bool
esMultiplo2 x |mod x 2 == 0 = True
 |otherwise = False

--devuelve True si el primer argumento es divisible por el segundo
esMultiploDe :: Int -> Int -> Bool
esMultiploDe x y |mod x y == 0 = True
 |otherwise = False

--devuelve si un año es bisiesto
esBisiesto :: Int -> Bool
esBisiesto x |(mod x 4 == 0 && mod x 100 /= 0) || mod x 400 == 0 = True
 |otherwise = False

--(COROLARIO) Definimos max y min para que tomen tres argumentos

max3 :: Ord a => a -> a -> a -> a
max3 a b c = max (max a b) c

min3 :: Ord a => a -> a -> a -> a
min3 a b c = min (min a b) c

--devuelve devuelve la diferencia entre el valor máximo y mínimo de tres argumentos
dispersion :: Double -> Double -> Double -> Double
dispersion a b c = (max3 a b c) - (min3 a b c)

--pasa de Celsius a Fahrenheit
celsiusToFahr :: Double -> Double
celsiusToFahr x = x * 1.8 + 32

--pasa de Fahrenheit a Celsius
fahrToCelsius :: Double -> Double
fahrToCelsius x = (x - 32) / 1.8

--recibe Fahrenheit y dice si hace frío
haceFrioF :: Double -> Bool
haceFrioF x |fahrToCelsius x < 8 = True
 |otherwise = False

--dada una terna de expresiones devuelve su segundo elemento
segundo3 :: (a, b, c) -> b
segundo3 (x, y, z) = y

--ordena de menor a mayor dos enteros
ordena :: Ord a => (a, a) -> (a, a)
ordena (x, y) = ((max x y), (min x y))

--dado el precio y un rango de precios esperables, te dice si te conviene
rangoPrecioParametrizado :: Double -> (Double, Double) -> String
rangoPrecioParametrizado x (a, b) |x < 0 = "esto no puede ser"
 |x < a = "muy barato" 
 |x <= b = "hay que verlo bien"
 |x > b = "demasiado caro"

--dada una terna indica si cada uno es mayor a 3
mayor3 :: (Double, Double, Double) -> (Bool, Bool, Bool)
mayor3 (a, b, c) = (a > 3, b > 3, c > 3)

--devuelve True si todos los elementos de una terna son iguales
todosIguales :: (Double, Double, Double) -> Bool
todosIguales (x, y, z) = x == y && x == z




--------------------Guía 2




--suma elementos de una lista
sumar :: [Int] -> Int
sumar [] = 0
sumar (x:xs) = x + sumar xs

--devuelve una lista con los pares de una lista ingresada
soloPares :: [Int] -> [Int]
soloPares [] = [] --caso base
soloPares (x:xs) |mod x 2 == 0 = x : soloPares xs --caso inductivo
 |otherwise = soloPares xs

--devuelve una lista con los valores mayores a 10 de una lista ingresada
mayoresQue10 :: [Int] -> [Int]
mayoresQue10 [] = [] --caso base
mayoresQue10 (x:xs) |x > 10 = x : mayoresQue10 xs --caso inductivo
 |otherwise = mayoresQue10 xs

----devuelve una lista con los valores mayores a n de una lista ingresada
mayoresQue :: Int -> [Int] -> [Int]
mayoresQue n [] = []
mayoresQue n (x:xs) |x > n = x : mayoresQue n xs
 |otherwise = mayoresQue n xs

--le suma 1 a cada elemento de una lista ingresada
sumar1 :: [Int] -> [Int]
sumar1 [] = []
sumar1 (x:xs) = (x+1) : sumar1 xs

--duplica cada elemento de una lista ingresada
duplica :: [Int] -> [Int]
duplica [] = []
duplica (x:xs) = 2 * x : duplica xs

--multiplica por n cada elemento de una lista ingresada
multiplica :: Int -> [Int] -> [Int]
multiplica n [] = []
multiplica n (x:xs) = n * x : multiplica n xs

--devuelve True si todos los elementos son menores que 10
todosMenores10 :: [Int] -> Bool
todosMenores10 [] = True
todosMenores10 (x:xs) |x < 10 = todosMenores10 xs
 |x >= 10 = False

--devuelve True si una lista ingresada tiene un 0



















































