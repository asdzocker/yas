-- BEGIN ...
module Language.BTL.Sample where

import Language.BTL.Syntax
-- END ...
sampleExpr :: Expr
sampleExpr = Pred (If (IsZero Zero) (Succ Zero) Zero)
-- BEGIN ...
illtypedSampleExpr :: Expr
illtypedSampleExpr = Succ TRUE
-- END ...
