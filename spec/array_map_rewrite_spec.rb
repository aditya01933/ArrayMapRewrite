require 'spec_helper'

describe Array do
  let(:number_arr){ [1, 2, 3] }
  let(:string_arr){ ['I', 'AM', 'ADITYA']}

  it "should perform arthemetic operations" do
    expect( number_arr.my_map {|e| e + 2 } ).to eq([3, 4, 5])
    expect( number_arr.my_map {|e| e * e } ).to eq([1, 4, 9])
  end

  it "should perform opertaions on string" do
    expect( string_arr.my_map {|e| e.downcase } ).to eq(['i', 'am', 'aditya'])
    expect( number_arr.my_map(&:to_s) ).to eq(['1', '2', '3'])
  end
end