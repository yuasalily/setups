# 全環境共通のセットアップと各環境への分岐をする。

mkdir -p .devcontainer

if [ $1 = "rust" ]; then
    bash -c "$(curl -L https://raw.githubusercontent.com/yuasalily/setups/main/rust.json)"
fi

if [ $1 = "rustwasm" ]; then
    bash -c "$(curl -L https://raw.githubusercontent.com/yuasalily/setups/main/rustwasm.json)"
fi
