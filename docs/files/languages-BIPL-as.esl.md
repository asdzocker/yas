# File _languages/BIPL/as.esl_
**[GitHub](https://github.com/softlang/yas/blob/master/languages/BIPL/as.esl)**
```
// Statements
symbol skip : -> stmt ;
symbol assign : string # expr -> stmt ;
symbol seq : stmt # stmt -> stmt ;
symbol if : expr # stmt # stmt -> stmt ;
symbol while : expr # stmt -> stmt ;

...
```