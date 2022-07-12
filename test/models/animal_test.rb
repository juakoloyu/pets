require "test_helper"

class AnimalTest < ActiveSupport::TestCase
  fixtures :animals
  test 'name is required' do
    animal = Animal.new
    assert_not animal.valid?
    assert animal.errors[:name].any?
  end

  test 'name is unique' do
    animal = Animal.new(name: animals(:one).name)
    assert_not animal.valid?
    assert animal.errors[:name].any?
  end

  test 'name is valid' do
    animal = Animal.new(name: 'Dinosaurio')
    assert animal.valid?
  end
end
