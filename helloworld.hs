
revcmd:: String -> String
revcmd x = unwords $ map Prelude.reverse $ words x

main = do
 putStrLn "What are your commands"
 command <- getLine
 let rline = revcmd command 
 putStrLn ("Yo, " ++ rline) 
 main

