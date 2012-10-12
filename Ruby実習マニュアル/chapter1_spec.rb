# -*- encoding: utf-8 -*-

require 'rspec'

describe "# 第 1 章 オブジェクト指向プログラミングの基礎" do

  describe "シェルコマンド" do
    it "成功の真偽値が返ってくる" do
      expect(system 'echo hello\n').to be_true
    end
  end

  describe "オブジェクト" do
    it "リテラル文字列はStringオブジェクトのインスタンスである" do
      expect("test".class).to eq String
    end
    it "クラスのクラスはクラス" do
      expect(Class.class).to eq Class
    end
    it "スーパークラス探訪" do
      expect(String.superclass).to eq Object
      expect(Class.superclass).to eq Module
      expect(Module.superclass).to eq Object
    end
  end

  describe "メソッド" do
    it "文字列にする" do
      expect(8730.to_s).to eq '8730'
      expect("nakano".to_s).to eq 'nakano'
    end
    it "表示するだけなので値はかえらない" do
      expect(8730.display).to be_nil
      expect("nakano\n".display).to be_nil
    end
  end

  describe "プログラム" do
    it "外部スクリプトを読み込む" do
      expect(load 'chapter1/hello.rb').to be_true
    end
  end

end
