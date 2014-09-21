OR operator
----
- will the fallback is triggered ?

```bash
some_err || fallback
```

- depends on the bash flag: +e or -e
- solution: works only on: +e
