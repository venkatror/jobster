# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Job.delete_all
Job.create(:title => 'Web Developer',
  :description => "Job Description Goes here",
  :company_name => "XYZ",
  :company_info => "Financial Giant",
  :salary => "DOE",
  :location =>"Norfolk, VA")

Job.create(:title => 'Web Developer I',
  :description => "Job Description Goes here",
  :company_name => "XYZ",
  :company_info => "Financial Giant",
  :salary => "DOE",
  :location =>"Norfolk, VA")

Job.create(:title => 'Web Developer',
  :description => "Job Description Goes here",
  :company_name => "ABC",
  :company_info => "Big consulting firm	",
  :salary => "70000",
  :location =>"New York City, NY")

Job.create(:title => 'Software Architect',
  :description => "Job Description Goes here",
  :company_name => "ABC",
  :company_info => "Big consulting firm	",
  :salary => "85000",
  :location =>"New York City, NY")