require 'spec_helper'

describe Phony::NDC::FixedSize do

  attr_reader :splitter
  
  # describe 'size 0' do
  #   before(:each) do
  #     @splitter = Phony::NDC.fixed 0
  #   end
  #   
  #   describe "formatted" do
  #     it "should format correctly" do
  #       # TODO not perfect, but does this case make sense?
  #       splitter.formatted('1234567').should == '123 45 67 '
  #     end
  #   end
  # end
  
  # describe "service numbers" do
  #   before(:each) do
  #     @ndc = Phony::NDC.fixed(1, :local => [2, 2, 2, 2], :service_ndcs => ['8']) # france
  #   end
  #   it "recognizes a number as a service" do
  #     @ndc.service_ndc?('33812345678').should == true
  #   end
  #   it "does recognize a number as a non service" do
  #     @ndc.service_ndc?('33112345678').should == false
  #   end
  # end
  
  describe "size 1" do
    before(:each) do
      @splitter = Phony::NDC.fixed 1
    end

    describe "formatted" do
      it "should format correctly" do
        splitter.formatted('12345678').should == '1 234 56 78'
      end
    end
  end
  describe "size 2" do
    before(:each) do
      @splitter = Phony::NDC.fixed 2
    end

    describe "formatted" do
      it "should format correctly" do
        splitter.formatted('123456789').should == '12 345 67 89'
      end
    end
  end
  describe "size 3" do
    before(:each) do
      @splitter = Phony::NDC.fixed 3
    end

    describe "formatted" do
      it "should format correctly" do
        splitter.formatted('1234567890').should == '123 456 78 90'
      end
    end
  end
  describe "size 4" do
    before(:each) do
      @splitter = Phony::NDC.fixed 4
    end

    describe "formatted" do
      it "should format correctly" do
        splitter.formatted('12345678901').should == '1234 567 89 01'
      end
    end
  end

end