require 'spec_helper'
require_relative '../lib/rectangle.rb'

describe Rectangle do
  it 'has a length and a width' do
    first_rectangle = Rectangle.new(length: 10, width: 5)
    second_rectangle = Rectangle.new(length: 14, width: 23)

    expect(first_rectangle.length).to eq 10
    expect(first_rectangle.width).to eq 5
    expect(second_rectangle.length).to eq 14
    expect(second_rectangle.width).to eq 23
  end
end
