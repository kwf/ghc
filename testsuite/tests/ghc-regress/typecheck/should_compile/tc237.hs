{-# LANGUAGE RankNTypes, MultiParamTypeClasses, FunctionalDependencies #-}

module ShouldCompile where

newtype M s a = M a       

class Modular s a | s -> a

wim ::  forall a w. Integral a 
                      => a -> (forall s. Modular s a => M s w) -> w
wim i k = error "urk"

test4'  ::  (Modular s a, Integral a) => M s a
test4'  =   error "urk"
		       
test4   =   wim 4 test4'
