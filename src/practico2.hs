---Ejercicio 3 (Funciones Filter)
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

---Ejercicio 4 (Funciones Map)
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
multiplica a (x:xs) = (a*x):multiplica a xs

---Ejercicio 5 (Funciones Fold)
-- a)
todosMenores10 :: [Int] -> Bool
todosMenores10 [] = True
todosMenores10 (x:xs) | x<10 = True && todosMenores10 xs
                      | True = False && todosMenores10 xs

-- b) 
hay0 :: [Int] -> Bool
hay0 [] = False
hay0 (x:xs) | x == 0 = True 
            | x /= 0 = hay0 xs 

-- c)
sumDeLista :: [Int] -> Int
sumDeLista [] = 0
sumDeLista (x:xs) = x + sum xs 

---Ejercicio 6 (Funciones Zip)
repartir ::  [String] -> [String] -> [(String, String)]
repartir xs [] = []
repartir [] xs = []
repartir (x:xs) (y:ys) = (x,y) :(repartir xs ys)

--- Ejercicio 7 (Funciones Unzip)
apellidos :: [(String, String, Int)] -> [String]
apellidos [] = []
apellidos ((x,y,z):xs) = y:apellidos xs

--- Ejercicio 8
cardinal :: [a] -> Int
cardinal [] = 0
cardinal (x:xs) = 1 + cardinal xs

indice :: [a] -> Int -> a
indice (x:xs) 0 = x
indice (x:xs) n = indice xs (n-1)

--pegarFinal :: [a] -> a -> [a] alt
--pegarFinal [] y = [y]
--pegarFinal x y = x++(y:[])

pegarFinal :: [a] -> a -> [a]
pegarFinal [] y = [y]
pegarFinal (x:xs) y = x:(pegarFinal xs y)

tomar :: [a] -> Int -> [a]
tomar [] n = []
tomar xs 0 = []
tomar (x:xs) n = x:tomar xs(n-1)

tirar :: [a] -> Int -> [a]
tirar [] n = []
tirar xs 0 = xs
tirar (x:xs) n = tirar xs (n-1)

concatenar :: [a]->[a]->[a]
concatenar [] ys = ys
concatenar (x:xs) (y:ys) = x:concatenar xs(y:ys)

concatenar2 :: [a]->[a]->[a]
concatenar2 xs [] = xs
concatenar2 (xs) (y:ys) = concatenar2(pegarFinal xs y)  ys


--Ejercicio 9
maximo :: [Int] -> Int
maximo [] = 0
maximo (x:xs) | x > maximo (xs) = x
              | x < maximo (xs) = maximo (xs)

sumaPares :: [(Int,Int)] -> Int
sumaPares [] = 0
sumaPares ((x,y):xs) = (x+y) + sumaPares xs

todos0y1 :: [Int] -> Bool
todos0y1 [] = True
todos0y1 (x:xs) = ((x==1) || (x==0)) && todos0y1 xs

quitar0s :: [Int] -> [Int]
quitar0s [] = []
quitar0s (x:xs) | (x == 0) = quitar0s xs
                | True = x:quitar0s xs 
                --true es similar a usar "otherwise", ya que si no pasa lo primero, lo segundo es siempre falso

ultimo :: [a] -> a
--ultimo [] = --indefinido que devolver en caso de lista vacia
ultimo (x:[]) = x
ultimo (x:xs) = ultimo xs

repetir :: Int -> Int -> [Int]
repetir k 0 = []
repetir k n = k : repetir k (n-1)

concatldl :: [[a]] -> [a]
concatldl [] = []
concatldl (x:xs) = x++(concatldl xs)

rev :: [a] -> [a]
rev [] = []
rev (x:xs) = pegarFinal (rev xs) x


--Ejercicio 21
listasIguales :: Eq a => [a] -> [a] -> Bool
listasIguales [] [] = True
listasIguales (x:xs) (y:ys) = (x==y) && (listasIguales xs ys)

mejorNota :: [(String,Int,Int,Int)] -> [(String,Int)]
mejorNota [] = []
mejorNota ((name,x,y,z):xs) = (name,(max x (max y z))) :mejorNota xs

incPrim :: [(Int,Int)] -> [(Int,Int)]
incPrim [] = []
incPrim ((x,y):xs) = ((x+1),y):(incPrim xs)

expandir :: String -> String
expandir [] = []
expandir (x:xs) = x : " " ++ (expandir xs)
--TODO: sacar espacio del final
