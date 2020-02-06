# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

document.addEventListener 'DOMContentLoaded', (->
  $('#add_comment').on 'click', (e) ->
  	console.log "skjdhfkshdf"
  	e.preventDefault()
  	$('#create_comment').slideDown()
  	$('#add_comment').hide()
), false