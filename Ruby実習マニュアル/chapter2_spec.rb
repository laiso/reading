# -*- encoding: utf-8 -*-

require 'rspec'

describe "# 第 2 章 式" do

  describe "式展開" do
    it "インラインで計算結果" do
      expect("1 + 1 = #{1 + 1}").to eq "1 + 1 = 2"
    end
  end

  describe "範囲演算" do
    "[Ruby の範囲指定の正体 #Ruby - Qiita](http://qiita.com/items/ce227a548fdc0befb089)\n".display

    it "Rangeオブジェクト" do
      expect((1..10).class).to eq Range
    end
    it "終端含む" do 
      expect((1..10).last).to eq 10
    end
    it "終端含まない #TODO 9 にならないの？" do 
      expect((1...10).last).to eq 10
    end
  end

  describe "メソッド" do

    def hello(name)
      "Hello, #{name}"
    end

    it "呼び出し" do
      expect(hello "おまえ").to eq "Hello, おまえ"
    end
  end

  describe "クラス継承" do
    class Object 
      def hey
        "上から目線です"
      end
    end

    it "Object拡張" do
      expect("私は一般人です".hey).to eq "上から目線です"
    end
  end

  describe "レシーバーの文脈" do
    class String
      def tweet_leftover_num
        "String 自身のsizeを勝手に呼ぶ\n".display
        140-size
      end
    end

    it "あと122文字つぶやける(白目)" do
      expect("今日はいい天気です。だが人間が死んだ".tweet_leftover_num).to eq 122
    end
  end

end
