# Ruby実習マニュアル

http://tutorial.jp/prog/ruby/rubyman.pdf http://tutorial.jp/prog/ruby/rubyman.pdf

Ruby実習マニュアルの教科書を読みながら写経や理解の為のテストを書いたやつ。
RSpecのspecdocからREADMEにビルド出力して成果物にする

# 環境

vim-quickrunからRSpecのテスト実行できるように設定した

[Vim-users.jp - Hack #172: RSpecをquickrunする (1/2):](http://vim-users.jp/2010/09/hack172/ "")

[vim-quickrunで実行したRSpecの結果にレッドバー/グリーンバーを表示する #Rspec #Vim - Qiita](http://qiita.com/items/24a2b86348c4deec69fd "vim-quickrunで実行したRSpecの結果にレッドバー/グリーンバーを表示する #Rspec #Vim - Qiita")
[Ruby の範囲指定の正体 #Ruby - Qiita](http://qiita.com/items/ce227a548fdc0befb089)

# 第 1 章 オブジェクト指向プログラミングの基礎
  シェルコマンド
hellon
    成功の真偽値が返ってくる
  オブジェクト
    リテラル文字列はStringオブジェクトのインスタンスである
    クラスのクラスはクラス
    スーパークラス探訪
  メソッド
    文字列にする
8730nakano
    表示するだけなので値はかえらない
  プログラム
みなさん、こんにちは
    外部スクリプトを読み込む

# 第 2 章 式
  式展開
    インラインで計算結果
  範囲演算
    Rangeオブジェクト
    終端含む
    終端含まない #TODO 9 にならないの？
  メソッド
    呼び出し
  クラス継承
    Object拡張
  レシーバーの文脈
String 自身のsizeを勝手に呼ぶ
    あと122文字つぶやける(白目)

Finished in 0.36896 seconds
14 examples, 0 failures
