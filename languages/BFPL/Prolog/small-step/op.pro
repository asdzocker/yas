% BEGIN ...
% The union of BFPL and BIPL operators are covered here.
% END ...
opConst(add, intconst(I1), intconst(I2), intconst(I0)) :- I0 is I1 + I2.
opConst(sub, intconst(I1), intconst(I2), intconst(I0)) :- I0 is I1 - I2.
% BEGIN ...
% ...
opConst(mul, intconst(I1), intconst(I2), intconst(I0)) :- I0 is I1 * I2.
opConst(eq, intconst(I1), intconst(I2), boolconst(true)) :- I1 == I2.
opConst(eq, intconst(I1), intconst(I2), boolconst(false)) :- I1 \= I2.
opConst(geq, intconst(I1), intconst(I2), boolconst(true)) :- I1 >= I2.
opConst(geq, intconst(I1), intconst(I2), boolconst(false)) :- I1 < I2.
% END ...
