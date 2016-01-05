# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
$('.modal-button').click ->
  document.querySelector('h1').innerHTML= 'Register'
  document.getElementById('modalBodyContentLogIn').style.display = 'none'
  document.getElementById('modalBodyRegister').style.display = 'inline'
  return
