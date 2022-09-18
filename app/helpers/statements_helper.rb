module StatementsHelper
  # Вывод полного имени в документе
  def fullName
    "#{User.find_by(id:1).lastname} #{User.find_by(id:1).firstname} #{User.find_by(id:1).patronymic}"
  end

  # Вывод месяца
  def rusDate(monthId)
    month = ['Января', 'Февраля', 'Марта', 'Апреля', 'Мая', 'Июня', 'Июля', 'Августа', 'Сентября', 'Ноября', 'Декабря']
    month[monthId-1]
  end

  # Вывод полной даты
  def fullDate 
    "«#{Time.new.day}» #{rusDate(Time.new.month)} #{Time.new.year} г."
  end
end
