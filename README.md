
COS upload
----

> dirty script providing a server.

### Calcit 迁移候选

工具链和 `@calcit/procs` 使用正式版 0.28.0，运行目标为 Node。应用直接访问
Skir 的类型化 Request，不再将它强转为 Map；Option 构造使用当前写法。
请求入口日志仅记录方法与路径，不再打印请求对象或包含密码的请求体。

```bash
caps --strict --ci
yarn install --immutable
caps verify --toolchain
calcit calcit.cirru --check-only --strict-types --warn-dyn-method
calcit calcit.cirru analyze check-public --ns app.main --ns app.http
calcit calcit.cirru analyze deprecated --summary-only
calcit calcit.cirru analyze quality --baseline config/calcit-quality.cirru
```

目前完整升级仍被正式 Skir 0.0.28 的两条 `create-server!` 返回类型警告阻塞，
跟踪于 [Skir #31](https://github.com/calcit-lang/skir/issues/31)。应用公开定义检查
为 8 项中 7 项通过，质量预算未扩大；不能将局部 JS 生成通过视为完整升级通过。
所有安装模块均使用已发布正式 tag，但传递依赖尚不是各模块的最新版本。
恢复发布升级前，需要消费修复后的正式 Skir 并重新通过全部门禁。

这是后端签名服务，不添加前端 COS/CDN 上传。原有服务器部署路径
`/servers/cos-up/` 保持不变。本次局部验证只覆盖 OPTIONS、GET 和非 `/token`
的 POST 分支，不启动监听、不读取真实凭据、不执行签名或上传。

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
