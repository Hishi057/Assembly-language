# アセンブリ言語

東京科学大学2025年度 情報工学系選択必修科目"アセンブリ言語" のためのレポジトリ

電卓を作ることを目標に頑張る。

[講義資料](https://gondow.github.io/linux-x86-64-programming/1-pre.html)

## コマンド

`gcc -S hoge.c` c言語のファイルを、アセンブリ言語へ変換

`gcc -c hoge.s` アセンブリ言語のファイルを、o形式に変換

`gcc -g hoge.s` a.outに出力。関数名をmainにするのを忘れないこと

## lldb(デバッグ)コマンド

`lldb ./a.out` デバッグモードでファイルを実行
`b main` main関数が開始したところにbreakpointを設置
`si` 次の行を実行する
`reg read <レジスタ>` レジスタの値を読み取る
