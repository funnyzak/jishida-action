# 即时达 ACTION

![License][license-image]
![Issues][issues-image]

[即时达](http://push.ijingniu.cn)基于微信模板的一对多消息送达服务。

## 参数

- `key` 即时达创建通道后会给每条通道分配一个key。
- `head` 消息头，长度1000以内。
- `body` 消息体内容，长度1M以内,如果数据太长请用POST方式,切记body尽UrlEncode、支持markdown格式。


## 使用

```bash
steps:
  - name: JISHIDA Push.
    uses: funnyzak/jishida-action@master
    with:
      key: ${{ secrets.JISHIDA_PUSH_KEY }}
      head: hello
      body: world
```


## Author

| [![twitter/funnyzak](https://s.gravatar.com/avatar/c2437e240644b1317a4a356c6d6253ee?s=70)](https://twitter.com/funnyzak 'Follow @funnyzak on Twitter') |
| ------------------------------------------------------------------------------------------------------------------------------------------------------ |
| [funnyzak](https://yycc.me/)                                                                                                                           |

## License

MIT License © 2021 [funnyzak](https://github.com/funnyzak)


[license-image]: https://img.shields.io/static/v1?label=licence&message=MIT&color=Green
[issues-image]: https://img.shields.io/github/issues/funnyzak/jishida-action
