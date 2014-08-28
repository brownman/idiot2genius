Who is calling me ?
===
* Question: how to get info about the recent debugging trace: [file name ]:[line number] ?
* Answer: 
- 1. sourcing the file will activate the builtin: BASH_SOURCE
- 2. use command: $cmd_caller at the relevant place
- 3. cmd_caller: '$(caller)'

- evaluate this command where you want to get info about the caller


- Q: what if the needed info located on the executable file file: script.sh ?
- A: use  a wrapper script: test.sh: which run script.sh by sourcing it: 
- ( source script.sh )
