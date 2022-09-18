class SpecialtiesController < ApplicationController
  
  def edit
    @specialties = Specialty.all
    @specialtySubjects = SpecialtySubject.all
    @selectedSpecialties = SelectedSpecialty.all
    @user_id = 1

    respond_to do |format|
      format.html
      format.json { render json: [@specialties, @specialtySubjects, @selectedSpecialties] }
    end
  end

  def update
    @selectedSpecialties = params[:specialty]
    render json: params
  end

  def create
    array = []

    specialtyArray = ["Радиотехника", "Программная инженерия", "Инфокоммуникационные технологии и системы связи", "Радиоэлектронные системы и комплексы", "Экология и природопользование", "Конструирование и технология электронных средств", "Фотоника и оптоинформатика", "Техносферная безопасность", "Техническая эксплуатация транспортного радиооборудования", "Информатика и вычислительная техника"]
    SelectedSpecialty.where(user_id: 1).destroy_all
    params[:specialty].each do |f|
      array.push(f[1])
      selectedSpecialties = SelectedSpecialty.new do |s|
        s.user_id = 1
        s.specialty_id = specialtyArray.index(array[0][:specialty]) + 1
      end
      selectedSpecialties.save
      array = []
    end

    flash[:success] = "Успешно"
    redirect_to edit_specialty_path(1)
  end
end
