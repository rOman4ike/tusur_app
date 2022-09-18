$(document).ready ->
  if(location.pathname.split("/")[1])
    $('nav a[href^="/' + location.pathname.split("/")[1] + '"]').addClass('active')
  else 
    $('.navbar li:first-child a').addClass('active')

  $(".burger").click ->
    $(".dropdown-block").toggleClass("show")
    console.log("test")