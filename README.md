# setups
似たような環境を用意することが多くなったので、devcontainerのテンプレートを作る。

## 使い方
rust用のdevcontainerを用意する場合
```
bash -c "$(curl -L https://raw.githubusercontent.com/yuasalily/setup/main/setup.sh)" -- rust
```

rust + wasm-pack用のdevcontainerを用意する場合
```
bash -c "$(curl -L https://raw.githubusercontent.com/yuasalily/setups/main/setup.sh)" -- rustwasm
```

## おまけ
### devcontainer.jsonを新しく作る場合
vscode左下の><みたいなマーク -> Add Dev Container Configuration File...