class ExamsController < ApplicationController

  def edit
    user = User.find_by(id: 1)
    @exams = user.exams
    @exam = Exam.new

    @collectionSubjects = ["Русский язык", "Математика", "Физика", "Информатика и ИКТ", "Биология", "Химия"]
  end

  def create
    user = User.find_by(id: 1)
    array = []

    params[:exam].each do |f| 
      array.push(f[1])
      exam = user.exams.build do |u|
        u.subject = array[0][:subject]
        u.points = array[0][:points]
      end
      exam.save 
      array = []
    end
    
    flash[:success] = "Успешно"
    redirect_to edit_exam_path(1)
  end

  def destroy
    Exam.find_by(id: params[:id]).destroy
    render json: { success: true }
  end

  def update
    @exam = Exam.find(params[:id])
    @errorRangeFlag = false
    @errorSubjectFlag = false

    examPoints = params[:exam][:points].to_i
    if examPoints <= 100 && examPoints >= 0
      if @exam.update(exam_params)
        respondFlash()
      else
        @errorSubjectFlag = true
        respondFlash()
      end
    else
      @errorRangeFlag = true
      respondFlash()
    end
  end

  private

    def exam_params
      params.require(:exam).permit(:subject, :points)
    end

    def respondFlash
      respond_to do |format|
        format.js { render :action => 'flash' }
      end
    end
end
