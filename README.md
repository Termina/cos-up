
COS upload
----

> dirty script providing a server.

Format for `secrets.cirru`:

```cirru
{}
  :bucket |TODO
  :app-id |TODO
  :secret |TODO
  :user |TODO
  :pass-md5 |TODO
```

Dev request:

```bash
curl -X POST http://localhost:4000/token -d "{} (:user |me) (:pass |aaaa) (:file-key |demo)"
```

### Workflow

https://github.com/calcit-lang/calcit-workflow

### License

MIT
