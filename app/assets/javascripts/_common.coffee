$(document).ready ->
  # Удаление уведомлений
  $("#flashBlock, #error-explanation").on('click', '.alert', () ->
    $(this).remove()
  )