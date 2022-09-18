class StatementsController < ApplicationController
  
  def show
    @selectedSpecialty = SelectedSpecialty.all
    @specialtySubject = SpecialtySubject.all
    @exams = Exam.all
    
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "document", template: "statements/show.html.erb"
      end
    end
  end
end
