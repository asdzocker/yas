# File _languages/FSML/Python/FsmlConstraints.py_
**[GitHub](https://github.com/softlang/yas/blob/master/languages/FSML/Python/FsmlConstraints.py)**
```
# BEGIN ...
from FsmlExceptions import *
# END ...
def ok(fsm):
    for fun in [
            distinctStateIds,
            singleInitialState,
...
```