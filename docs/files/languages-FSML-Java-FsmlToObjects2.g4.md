# File _languages/FSML/Java/FsmlToObjects2.g4_
**[GitHub](https://github.com/softlang/yas/blob/master/languages/FSML/Java/FsmlToObjects2.g4)**
```
grammar FsmlToObjects2;
@header {package org.softlang.fsml;}

fsm returns [Fsm result] :
  { $result = new Fsm(); } 
  state[$result]+ 
  EOF
...
```