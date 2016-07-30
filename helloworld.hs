
revcmd:: String -> String
revcmd x = unwords $ map Prelude.reverse $ words x

main = do
 putStrLn "What are your commands?"
 command <- getLine
 if null command
     then do
         putStrLn "Empty Line. Done."
         return ()
     else 
         do
             let rline = revcmd command 
             putStrLn ("Yo, " ++ rline) 
             main

