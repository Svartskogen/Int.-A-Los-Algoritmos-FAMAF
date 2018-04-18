---1) (dada una terna, devuelva true si y solo si estan en orden ascendente o descendente)
algunOrden :: (Int,Int,Int) -> Bool
algunOrden (x,y,z) = ( ((x>=y)&&(y>=z)) || ((x<=y)&&(y<=z)) )

---2)
----a) (dada una lista de numeros, construya otra con los valores absolutos de la primera)
absoluto :: [Int] -> [Int]
absoluto [] = []
absoluto (x:xs) | (x>=0) = x:absoluto xs
                | otherwise = (-x):absoluto xs

