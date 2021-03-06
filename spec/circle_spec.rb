require 'spec_helper'
require_relative '../lib/circle.rb'

describe Circle do
  before do
    @circle = Circle.new(radius: 5)
    @second_circle = Circle.new(radius: 10)
    @third_circle = Circle.new(radius: 7)
  end
  it 'creates a new circle with radius' do
    expect(@circle.radius).to eq 5

    expect(@second_circle.radius).to eq 10

    expect(@third_circle.radius).to eq 7
  end

  it 'finds the circumference from radius' do
    expect(@circle.circumference).to eq 31.41592653589793
    #expect(@circle.circumference).to be_within(0.01).of(31.42)

    expect(@second_circle.circumference).to eq 62.83185307179586
    #expect(@second_circle.circumference).to be_within(0.01).of(62.83)

    expect(@third_circle.circumference).to eq 43.982297150257104
    #expect(@third_circle.circumference).to be_within(0.01).of(43.98)
  end

  it 'finds the area of a circle' do
    expect(@circle.area).to eq 78.53981633974483

    expect(@second_circle.area).to eq 314.1592653589793

    expect(@third_circle.area).to eq 153.93804002589985
  end
end
