$(document).ready ->
  $('select[id*="birthday"]').wrapAll('<div class="birthday-block">')

  $('#user_phone').inputmask("+7-(999)-999-99-99", {clearMaskOnLostFocus: false})