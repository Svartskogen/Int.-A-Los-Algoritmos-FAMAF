---1) (dada una terna, devuelva true si y solo si estan en orden ascendente o descendente)
algunOrden :: (Int,Int,Int) -> Bool
algunOrden (x,y,z) = ( ((x>=y)&&(y>=z)) || ((x<=y)&&(y<=z)) )

---2)
----a) (dada una lista de numeros, construya otra con los valores absolutos de la primera)
absoluto :: [Int] -> [Int]
absoluto [] = []
absoluto (x:xs) | (x>=0) = x:absoluto xs
                | otherwise = (-x):absoluto xs

---3)
----a) (definir la funcion recursiva superaNota que dado un numero n y una lista de numeros, xs, devuelve cuantos
----elementos de xs son mayores o iguales a n)
superaNota :: Int -> [Int] -> Int
superaNota x [] = 0
superaNota x (y:ys) | y>=x = 1+superaNota x ys
                    | otherwise = superaNota x ys

----b) (usar la funcion anterior para determinar la funcion regulares)
---- (que dada una lista xs de notas de alumnos, devuelva la cantidad
---- de alumnos que regularizaron pero no promocionaron, es decir las notas n
---- en xs que cumplan 4 <= n < 6)
regulares :: [Int] -> Int
regulares n = ((superaNota 4 n) - (superaNota 6 n))