class YesNo a where
    judge::a -> Bool

instance YesNo Integer where
    judge 0 = False
    judge _ = True

instance YesNo [a] where
    judge [] = False
    judge _ = True