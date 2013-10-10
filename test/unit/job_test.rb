require 'test_helper'

class JobTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "job attributes should not be empty" do
    job = Job.new
    assert job.invalid?
    assert job.errors[:title].any?
    assert job.errors[:description].any?
  end

  # This test would have been possible if we added
  # a possible value validation in the model. I did
  # not write the positive validation because many
  # job descriptions have DOE as salary
  
  #test "salary must be positive" do
  #  job = Job.new(:title => "My Book Title" ,
  #                :description => "yyy" ,
  #                :company_name => "BCG" ,
  #                :location => "Boston" )
  #  job.salary = -1
  #  assert job.invalid?
  #  assert_equal "must be greater than or equal to 0" ,
  #  job.errors[:salary].join('; ' )
  #  job.price = 1
  #  assert job.valid?

 #end

end
