require "test_driven_development""

RSpec.describe "Test Driven Development" do
    describe "my_uniq" do
        it "should return an array" do
        expect(my_uniq([1, 2, 1, 3, 3])).to be_an(Array)
        end
    
        it "should return an array with no duplicates" do
        expect(my_uniq([1, 2, 1, 3, 3])).to eq([1, 2, 3])
        end
    end
    
    describe "Array#two_sum" do
        it "should return an array" do
        expect([1, 2, 1, 3, 3].two_sum).to be_an(Array)
        end
    
        it "should return an array with no duplicates" do
        expect([1, 2, 1, 3, 3].two_sum).to eq([[0, 2], [1, 3], [1, 4]])
        end

    end
    
    # Path: practice-for-ch-ruby-first-tdd-long-practice-main/spec/test_driven_development_spec.rb
    # Compare this snippet from Gemfile:
    # # frozen_string_literal: true
    # 
    # source "https://rubygems.org"
    # 
    # gem "RSpec", "~> 3.9"
    # gem 'pry'
    # gem 'pry-byebug'
    # gem 'byebug'
    # 
    # 
    # # gem "rails"
    # 
    require