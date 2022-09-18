module UserHelper
  # Изменение имени полей в ошибках
  def inputName(attr)
    {
      "user_residence.country" => "Страна",
      "user_residence.region" => "Регион",
      "user_residence.city" => "Город",
      "firstname" => "Имя",
      "lastname" => "Фамилия",
      "patronymic" => "Отчество",
      "email" => "Почта",
      "phone" => "Номер телефона",
      "birthday" => "Дата рождения",
      "gender" => "Пол",
      "agreement" => "Пользовательское соглашение",
      "user_photo.avatar_content_type" => "Фото",
      "user_photo.avatar" => "Фото"
    }[attr.to_s]
  end
end
