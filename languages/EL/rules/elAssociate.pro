:- module(elAssociate, []).
binary(add, binary(add, X, Y), Z) ~> binary(add, X, binary(add, Y, Z)).
binary(mul, binary(mul, X, Y), Z) ~> binary(mul, X, binary(mul, Y, Z)).
