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

    expect(@second_circle.circumference).to eq 62.83185307179586

    expect(@third_circle.circumference).to eq 43.982297150257104
  end
end
