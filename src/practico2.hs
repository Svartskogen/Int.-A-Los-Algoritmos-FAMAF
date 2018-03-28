--Ejercicio 3 (Funciones Filter)
-- a)
soloPares :: [Int] -> [Int]
soloPares [] = []
soloPares (x:xs) | (mod x 2 == 0) = x:soloPares xs
                 | (mod x 2 /= 0) = soloPares xs

-- b)
mayoresQue10 :: [Int] -> [Int]
mayoresQue10 [] = []
mayoresQue10 (x:xs) | (x>10) = x:mayoresQue10 xs
                    | (x<10) = mayoresQue10 xs

-- c) 
mayoresQue :: Int -> [Int] -> [Int]
mayoresQue a [] = []
mayoresQue a (x:xs) | (x>a) = x:mayoresQue a xs
                    | True = mayoresQue a xs

--Ejercicio 4 (Funciones Map)
-- a)
sumar1 :: [Int] -> [Int]
sumar1 [] = []
sumar1 (x:xs) = (x+1):sumar1 xs

-- b)
duplica :: [Int] -> [Int]
duplica [] = []
duplica (x:xs) = (x*2):duplica xs

-- c)
multiplica :: Int -> [Int] -> [Int]
multiplica a [] = []
multiplica a (x:xs) = (a*x):multiplica xs
