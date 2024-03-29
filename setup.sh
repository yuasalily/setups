# 全環境共通のセットアップと各環境への分岐をする。

mkdir -p .devcontainer

if [ $1 = "rust" ]; then
    curl -L -o .devcontainer/devcontainer.json https://raw.githubusercontent.com/yuasalily/setups/main/rust.json
fi

if [ $1 = "rustwasm" ]; then
    curl -L -o .devcontainer/devcontainer.json https://raw.githubusercontent.com/yuasalily/setups/main/rustwasm.json
fi

if [ $1 = "go" ]; then
    curl -L -o .devcontainer/devcontainer.json https://raw.githubusercontent.com/yuasalily/setups/main/go.json
fi

if [ $1 = "astro" ]; then
    curl -L -o .devcontainer/devcontainer.json https://raw.githubusercontent.com/yuasalily/setups/main/astro.json
fi