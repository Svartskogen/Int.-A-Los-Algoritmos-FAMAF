y :: String -> String
y x | x == "eia?" = "e feli o no e feli?"
	|True = ""
	
f :: Num a => a -> a 
f x = x * 5

duplica :: Num a => a -> a   
duplica x = x * 2

multiplicar :: Num a => a -> a -> a
multiplicar x y = x*y

por2 :: Num a => a -> a
por2 x = x + x

promedio :: Float -> Float -> Float
promedio x y = (x+y)/2 

entre0y9 :: Int -> Bool
entre0y9 x | x>=0 && x<=9 = True
           | True = False

rangoPrecio :: Int -> String
rangoPrecio x | x < 2000 = "barato"
			  | x > 5000 = "caro"
	          | True = "fijate que onda"

absoluto :: Int -> Int
absoluto x | x>= 0 = x
	       | True = -x 

esMultiplo2 :: Int -> Bool
esMultiplo2 x | mod x 2 == 0 = True
	          | True = False 


-- Funcion Signo
signo :: Int -> String 
signo x | x>0 = "Positivo"
		| x<0 = "Negativo"
		| x==0 = "Cero"

 
-- ejercicio 17 
esMultiploDe :: Int -> Int -> Bool
esMultiploDe x y | mod x y == 0 = True
				 | mod x y /= 0 = False
				 
-- ejercicio 18 
esBisiesto :: Int -> Bool 
esBisiesto x | (mod x 400 == 0 || (mod x 4 == 0 && mod x 100 /= 0)) = True
             | True = False

-- ejercicio 19 
dispersion :: Int -> Int -> Int -> Int
dispersion x y z = (max x (max y z)) - (min x (min y z))

-- ejercicio 20 
celsiusToFahr :: Float -> Float 
celsiusToFahr x = x * 1.8 + 32

-- ejercicio 21 
fahrToCelsius :: Float -> Float
fahrToCelsius x = (x-32)/1.8

-- ejercicio 22 
haceFrioF :: Float -> String
haceFrioF x | ((x-32)/1.8) < 8 = "Ta frio"
			| True = "Ta arriba de 8 grados celcius"

-- ejercicio 23
segundo3 :: (Int, Int, Int) -> Int
segundo3 (x, y, z) = y 

ordena :: (Int, Int) -> (Int, Int)
ordena (x,y) = (max x y, min x y)

rangoPrecioParametrizado :: Int -> (Int, Int) -> String
rangoPrecioParametrizado x (y,z) | x<0 = "Sos pelotudo"
                                 | x<y = "Muy barato"
								 | x>z = "Muy caro"
								 | x>y && x<z = "De una waso"
								  
mayor3 :: (Int, Int, Int) -> (Bool, Bool,Bool)
mayor3 (x,y,z) = (x>3,y>3,z>3)		

todosIguales :: (Int, Int, Int) -> Bool
todosIguales (x,y,z) = x==z && x==y 

max3 :: (Int,Int,Int) ->
max3 x y z = max x (max y z)