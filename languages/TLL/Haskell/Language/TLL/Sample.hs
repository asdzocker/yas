-- BEGIN ...
module Language.TLL.Sample where
import Language.TLL.Syntax
-- END ...
add = Fix (Lambda "f" (FunType NatType (FunType NatType NatType))
          (Lambda "n" NatType
          (Lambda "m" NatType
            (If (IsZero (Var "n"))
               (Var "m")
               (Succ (Apply (Apply (Var "f") (Pred (Var "n"))) (Var "m"))))))) 
