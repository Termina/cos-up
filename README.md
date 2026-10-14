
COS upload
----

> dirty script providing a server.

### 使用者影响与开发

使用正式 Calcit/procs 0.29.3、Skir 0.0.29、Node 24 和 Yarn 4.18.0。
应用版本保持 0.0.9，不额外发模块 release。移除未被源码使用的 Lilac 依赖和 entry，
不混用旧 alpha、main/hash 依赖。应用继续接收 Skir 的真实 Request。

配置和 `/token` 请求体要求 Tag → String 的 Cirru EDN Map，包括额外字段；
非字符串字段、非 Map 或无效 Cirru 请求返回 400，坏配置仍由服务端报错。
已有缺失字段的空字符串默认值、认证比较、403/404/OPTIONS、PUT 签名、
区域和 `cos-up/` key 前缀保留；这不是认证策略重设计。
请求体复用共享 UTF-8 接口和 Result decoder；错误 SDK URL 形状返回 500，
不让新的类型检查异常逃出异步回调。日志仅保留方法/路径，不再打印请求对象、
密码请求体或含临时凭据的签名 URL。

```bash
caps --strict --ci
yarn install --immutable
caps verify --toolchain
calcit calcit.cirru --check-only
calcit calcit.cirru analyze weak-types --only dynamic-method --summary-only --format json | jq -e '.data.summary.findings == 0'
calcit calcit.cirru --check-only --ns app.main --ns app.http
calcit calcit.cirru analyze weak-types --only deprecated-call --summary-only
calcit calcit.cirru analyze quality --baseline config/calcit-quality.cirru
```

Skir 的旧 after-start 类型阻塞已通过正式 0.0.29 解决，使用当前配套正式依赖图。
原质量预算保持不变；仍有两个 partial 定义和一个 SDK 构造器宿主强转，
不宣称零类型债务。无新增测试/验证脚本或编译器改写规则，生成的 JS 不提交。

这是后端签名服务，不添加前端 COS/CDN 上传。原有服务器部署路径
`/servers/cos-up/` 保持不变。原 Actions 只 rsync 文件，不会远程安装依赖；
部署前须确认该目录使用 Node 24，并安装本次 lock 中的配套 runtime
（`corepack yarn install --immutable`）。构建成功不代表生产进程依赖已更新。

本地以明确假配置实际验证路由、拒绝认证、非法请求 Result、仅本地 URL 签名和
异常 SDK URL，禁止 SDK 出站请求、未上传文件、未打印签名值；临时配置/服务器
已清理。未读取生产凭据，也未验收生产进程或全量旧版行为等价。

Format for `secrets.cirru`:

```cirru
{} (:bucket |TODO) (:app-id |TODO) (:secret |TODO) (:user |TODO) (:pass-md5 |TODO)
```

Dev request:

```bash
curl -X POST http://localhost:4000/token -d "{} (:user |me) (:pass |aaaa) (:file-key |demo)"
```

### Workflow

https://github.com/calcit-lang/calcit-workflow

### License

MIT
