[![Build Status](https://travis-ci.org/brownman/idiot2genius.svg?branch=develop)](https://travis-ci.org/brownman/idiot2genius) 
      
          
       
        
Bash Riddles:
===
- useful for interviews
- convert a problem into a riddle ( use the idiot2genius.sh converter )

TODO:
====
- Presentation using travis.


Available bash Riddles:
====
- use alias to lock
- trap or conditional error workflow
- nested redirection of stderr
- why can't I c the calling information when running: ./script.sh which has the command: `caller`
 

Layout:
===
```bash
.
├── BANK
│   ├── ALIAS_LOCK
│   │   ├── easy.yaml
│   │   ├── log.txt
│   │   ├── PLAYGROUND
│   │   │   ├── alias_lock_unlock.cfg
│   │   │   ├── log.txt
│   │   │   └── run.sh
│   │   └── TEST
│   │       └── 1.sh
│   ├── ALIAS_SCOPE
│   │   └── log.txt
│   ├── FUNNY
│   │   ├── chmod.sh
│   │   ├── cow_upside_down.sh
│   │   ├── which.sh
│   │   ├── xcowsay_baby.sh
│   │   └── xcowsay_think_on_other_cow.sh
│   ├── NESTED_REDIRECT_STDERR
│   │   └── 1.sh
│   ├── REDIRECTION_ORDER
│   │   └── std_order.sh
│   ├── SOURCE_THEN_RUN
│   │   ├── 1.cfg
│   │   ├── 1.sh
│   │   └── 2.sh
│   ├── TRAP_OR
│   │   ├── easy.yaml
│   │   ├── PLAYGROUND
│   │   │   ├── list.txt
│   │   │   ├── log.txt
│   │   │   └── trap_err_or_else.sh
│   │   └── TEST
│   │       ├── 1.cfg
│   │       └── 1.sh
│   └── WHO_IS_CALLING
│       ├── evaluate_caller.sh
│       └── README.md
├── layout.sh
└── README.md

```
