$(document).ready ->
  # Добавление нового поля exam
  $('#addMore').click ->
    $("#dynamic-inputs").append($(".exam-form-block").html())
    $("#dynamic-inputs > .exam-form:last-child .btn-block")
      .append($("<div><button class='btn secondary-btn deleteAddForm'>Удалить</button></div>").html())

  # Отправка формы
  $('#submitForm').click ->
    data = []
    $(".exam-form").each((i, item) -> 
      data.push(
        'subject': $(".exam-form [name='exam[subject]']")[i].value
        'points': $(".exam-form [name='exam[points]']")[i].value
      )
    )

    if data.every((item) -> ((0 <= (+item.points) <= 100) && item.points && item.subject))
      $.ajax(
        url: '/exams/'
        data: {
          'exam': data
        }
        type: 'POST'
        success: (data) -> 
          location.reload()
        error: (data) -> 
          location.reload()
      )
    else 
      $("#flashBlock").html("<div class='alert alert-danger'>Ошибка в заполнении формы</div>")
      setTimeout ->
        $("#flashBlock .alert").delay(3000).hide(500)
      , 1000

  # Удаление существующей формы
  $('.deleteForm').click ->
    current_item = $(this).parents('.current-exam-block')[0]
    $.ajax(
      url: '/exams/' + $(current_item).attr('data-item_id')
      type: 'POST'
      data: {_method: "DELETE"}
      success: (result) ->
        $(current_item).fadeOut(200, () -> $(this).remove());
    )

  # Удаление созданной формы
  $("#dynamic-inputs").on('click', '.deleteAddForm', () -> 
    $(this).parents('.exam-form')[0].remove()
  )