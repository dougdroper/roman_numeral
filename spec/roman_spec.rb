require 'spec_helper'

describe "Roman" do

  it "counts to 20" do
    20.times.map {|i| Roman::numeral(i + 1)}.should == %w{I II III IV V VI VII VIII IX X XI XII XIII XIV XV XVI XVII XVIII XIX XX}
  end

  it "counts 20 - 30" do
    (20...30).map {|i| Roman::numeral(i + 1)}.should == %w{XXI XXII XXIII XXIV XXV XXVI XXVII XXVIII XXIX XXX}
  end

  it "counts 30 - 40" do
    (30...40).map {|i| Roman::numeral(i + 1)}.should == ["XXXI", "XXXII", "XXXIII", "XXXIV", "XXXV", "XXXVI", "XXXVII", "XXXVIII", "XXXIX", "XL"]
  end

  it "counts 40 - 50" do
    (40...50).map {|i| Roman::numeral(i + 1)}.should == ["XLI", "XLII", "XLIII", "XLIV", "XLV", "XLVI", "XLVII", "XLVIII", "XLIX", "L"]
  end

  it "counts 50 - 100" do
    (50...100).map {|i| Roman::numeral(i + 1)}.should == ["LI", "LII", "LIII", "LIV", "LV", "LVI", "LVII", "LVIII", "LIX", "LX", "LXI",
      "LXII", "LXIII", "LXIV", "LXV", "LXVI", "LXVII", "LXVIII", "LXIX", "LXX", "LXXI", "LXXII", "LXXIII", "LXXIV", "LXXV", "LXXVI",
      "LXXVII", "LXXVIII", "LXXIX", "LXXX", "LXXXI", "LXXXII", "LXXXIII", "LXXXIV", "LXXXV", "LXXXVI", "LXXXVII", "LXXXVIII", "LXXXIX",
      "XC", "XCI", "XCII", "XCIII", "XCIV", "XCV", "XCVI", "XCVII", "XCVIII", "XCIX", "C"]
  end

  it "knows 501" do
    Roman::numeral(501).should == "DI"
  end

  it "knows 550" do
    Roman::numeral(550).should == "DL"
  end

  it "knows 707" do
    Roman::numeral(707).should == "DCCVII"
  end

  it "knows 890" do
    Roman::numeral(890).should == "DCCCXC"
  end

  it "knows 900" do
    Roman::numeral(900).should == "CM"
  end

  it "knows 1500" do
    Roman::numeral(1500).should == "MD"
  end

  it "knows 1800" do
    Roman::numeral(1800).should == "MDCCC"
  end

  it "knows 3000" do
    Roman::numeral(3000).should == "MMM"
  end

  it "knows 4999" do
    Roman::numeral(4999).should == "MMMMCMXCIX"
  end

end
