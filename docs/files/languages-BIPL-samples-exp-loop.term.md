# File _languages/BIPL/samples/exp-loop.term_
**[GitHub](https://github.com/softlang/yas/blob/master/languages/BIPL/samples/exp-loop.term)**
```
seq(assign(r,intconst(1)),while(binary(geq,var(n),intconst(1)),seq(assign(r,binary(mul,var(r),var(x))),assign(n,binary(sub,var(n),intconst(1)))))).
```