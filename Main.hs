import Text.JSON.String (readJSTopType, runGetJSON)
import Text.PrettyPrint.HughesPJ (render)
import Text.JSON.Pretty (pp_value)

main = do
  s <- getContents
  case runGetJSON readJSTopType s of
    Left  e -> error e
    Right j -> putStrLn . render $ pp_value j
