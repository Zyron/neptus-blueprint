class LsCollegeRequirement < ActiveRecord::Base
  belongs_to :course
  attr_accessible :arts_and_literature, :biological_science, :course_id, :foreign_language_breadth, :historical_studies, :international_studies, :philosophy_and_values, :physical_science, :quantitative_reasoning, :reading_and_composition, :social_and_behavioral_sciences

  # This method takes a hash and a user object 
  # And it will set the requirements based on the user object
  def self.set_requirements(output_requirements, input_requirements) 
  	output_requirements[:arts_and_literature] =            input_requirements[:arts_and_literature]
  	output_requirements[:biological_science] =             input_requirements[:biological_science];
  	output_requirements[:foreign_language_breadth] =       input_requirements[:foreign_language_breadth]
  	output_requirements[:historical_studies] =             input_requirements[:historical_studies]
  	output_requirements[:international_studies] =          input_requirements[:international_studies]
  	output_requirements[:philosophy_and_values] =          input_requirements[:philosophy_and_values]
  	output_requirements[:physical_science] =               input_requirements[:physical_science]
  	output_requirements[:quantitative_reasoning] =         input_requirements[:quantitative_reasoning]
  	output_requirements[:reading_and_composition] =        input_requirements[:reading_and_composition]
  	output_requirements[:social_and_behavioral_sciences] = input_requirements[:social_and_behavioral_sciences]
  end 

  def self.progress(user)
    finished_rate = 0

    finished_rate += 10 if user[:arts_and_literature] == true
    finished_rate += 10 if user[:biological_science]  == true
    finished_rate += 10 if user[:foreign_language_breadth] == true
    finished_rate += 10 if user[:historical_studies] == true
    finished_rate += 10 if user[:international_studies] == true
    finished_rate += 10 if user[:philosophy_and_values] == true
    finished_rate += 10 if user[:physical_science] == true
    finished_rate += 10 if user[:quantitative_reasoning] == true
    finished_rate += 10 if user[:reading_and_composition] == true
    finished_rate += 10 if user[:social_and_behavioral_sciences] == true

    return finished_rate
  end 

end
