merge() {
    # commonとそれぞれの言語用設定ファイルを上書きor結合
    for f in $(ls common); do
        cat common/$f $1/$f | jq -s add > tmp_$f
    done

    # vscodeを生成
    cat tmp_extensions.json tmp_settings.json | jq -s '{vscode:{extensions: .[0], settings: .[1]}}' > tmp_vscode.json
    rm -f tmp_extensions.json tmp_settings.json

    # customizationsを生成
    cat tmp_vscode.json | jq -s '{customizations:.[0]}' > tmp_customizations.json
    rm -f tmp_vscode.json

    # devcontainerの設定ファイル生成
    cat tmp_* | jq -s add > $1.json

}

# todo: common以外のfolderをforで回すようにする
merge go
merge rust
merge astro

rm -f tmp_*