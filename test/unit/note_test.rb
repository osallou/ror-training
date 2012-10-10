require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "find notes" do
    found = Note.where(:title => 'test').all.count
    assert found>0
  end

  test "search notes" do
    notes = Note.search('ll')
    puts notes.inspect
    assert notes.count > 0
    assert Note.search('LL').count > 0
  end
end
