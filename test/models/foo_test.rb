require 'test_helper'

class FooTest < ActiveSupport::TestCase
  test "reset_column_informatin do not break attribute methods" do
    foo = Foo.create!
    refute foo.id_changed?
    Foo.reset_column_information
    refute foo.id_changed?
  end
end
