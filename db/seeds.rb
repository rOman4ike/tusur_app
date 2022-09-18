User.destroy_all
UserResidence.destroy_all
UserPhoto.destroy_all
Specialty.destroy_all
SpecialtySubject.destroy_all
Exam.destroy_all

User.new(:id => 1).save(validate: false)
UserResidence.new(:user_id => 1).save(validate: false)
UserPhoto.new(:user_id => 1).save(validate: false)

Specialty.create(id: 1, specialty: "Радиотехника", budget: true)
SpecialtySubject.create(specialty_id: "1", subject: "Русский язык", points: "40")
SpecialtySubject.create(specialty_id: "1", subject: "Математика", points: "39")
SpecialtySubject.create(specialty_id: "1", subject: "Физика", points: "39")
SpecialtySubject.create(specialty_id: "1", subject: "Информатика и ИКТ", points: "44")

Specialty.create(id: 2, specialty: "Программная инженерия", budget: false)
SpecialtySubject.create(specialty_id: "2", subject: "Русский язык", points: "40")
SpecialtySubject.create(specialty_id: "2", subject: "Математика", points: "39")
SpecialtySubject.create(specialty_id: "2", subject: "Информатика и ИКТ", points: "44")

Specialty.create(id: 3, specialty: "Инфокоммуникационные технологии и системы связи", budget: true)
SpecialtySubject.create(specialty_id: "3", subject: "Русский язык", points: "40")
SpecialtySubject.create(specialty_id: "3", subject: "Математика", points: "39")
SpecialtySubject.create(specialty_id: "3", subject: "Физика", points: "39")
SpecialtySubject.create(specialty_id: "3", subject: "Информатика и ИКТ", points: "44")

Specialty.create(id: 4, specialty: "Радиоэлектронные системы и комплексы", budget: false)
SpecialtySubject.create(specialty_id: "4", subject: "Русский язык", points: "40")
SpecialtySubject.create(specialty_id: "4", subject: "Математика", points: "39")
SpecialtySubject.create(specialty_id: "4", subject: "Физика", points: "39")
SpecialtySubject.create(specialty_id: "4", subject: "Информатика и ИКТ", points: "44")

Specialty.create(id: 5, specialty: "Экология и природопользование", budget: true)
SpecialtySubject.create(specialty_id: "5", subject: "Русский язык", points: "40")
SpecialtySubject.create(specialty_id: "5", subject: "Математика", points: "40")
SpecialtySubject.create(specialty_id: "5", subject: "Биология", points: "39")
SpecialtySubject.create(specialty_id: "5", subject: "Химия", points: "39")

Specialty.create(id: 6, specialty: "Конструирование и технология электронных средств", budget: false)
SpecialtySubject.create(specialty_id: "6", subject: "Русский язык", points: "40")
SpecialtySubject.create(specialty_id: "6", subject: "Математика", points: "39")
SpecialtySubject.create(specialty_id: "6", subject: "Физика", points: "39")
SpecialtySubject.create(specialty_id: "6", subject: "Информатика и ИКТ", points: "44")

Specialty.create(id: 7, specialty: "Фотоника и оптоинформатика", budget: true)
SpecialtySubject.create(specialty_id: "7", subject: "Русский язык", points: "40")
SpecialtySubject.create(specialty_id: "7", subject: "Математика", points: "39")
SpecialtySubject.create(specialty_id: "7", subject: "Физика", points: "39")
SpecialtySubject.create(specialty_id: "7", subject: "Информатика и ИКТ", points: "44")
SpecialtySubject.create(specialty_id: "7", subject: "Химия", points: "39")

Specialty.create(id: 8, specialty: "Техносферная безопасность", budget: false)
SpecialtySubject.create(specialty_id: "8", subject: "Русский язык", points: "40")
SpecialtySubject.create(specialty_id: "8", subject: "Математика", points: "39")
SpecialtySubject.create(specialty_id: "8", subject: "Физика", points: "39")
SpecialtySubject.create(specialty_id: "8", subject: "Информатика и ИКТ", points: "44")

Specialty.create(id: 9, specialty: "Техническая эксплуатация транспортного радиооборудования", budget: true)
SpecialtySubject.create(specialty_id: "9", subject: "Русский язык", points: "40")
SpecialtySubject.create(specialty_id: "9", subject: "Математика", points: "39")
SpecialtySubject.create(specialty_id: "9", subject: "Физика", points: "39")
SpecialtySubject.create(specialty_id: "9", subject: "Информатика и ИКТ", points: "44")
SpecialtySubject.create(specialty_id: "9", subject: "Химия", points: "39")

Specialty.create(id: 10, specialty: "Информатика и вычислительная техника", budget: false)
SpecialtySubject.create(specialty_id: "10", subject: "Русский язык", points: "40")
SpecialtySubject.create(specialty_id: "10", subject: "Математика", points: "39")
SpecialtySubject.create(specialty_id: "10", subject: "Информатика и ИКТ", points: "44")