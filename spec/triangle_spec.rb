require 'spec_helper'
require_relative '../lib/triangle.rb'

describe Triangle do
  before do
    @triangle = Triangle.new(a: 10, b: 10, c: 10)
    @second_triangle = Triangle.new(a: 7, b: 5, c: 10)
    @third_triangle = Triangle.new(a: 8, b: 7, c: 20)
  end
  it 'calculates the perimeter of the triangle' do
    expect(@triangle.perimeter).to eq 30

    expect(@second_triangle.perimeter).to eq 22
  end

  it 'calculates the area of the triangle' do
    expect(@triangle.area).to be_within(0.01).of (43.30)

    expect(@second_triangle.area).to be_within(0.01).of (16.25)
  end

  it 'checks the triangle for validity' do
    expect(@triangle.valid?).to eq true

    expect(@third_triangle.valid?).to eq false
  end
end
