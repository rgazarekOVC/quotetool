# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$('.your_selector').change ->
  product_id = $(this).data('product_id')
  $.ajax(type: 'POST'
  url: "/product_price_finder"
  product_id: product_id
  success: ( data, status, xhr ) ->
  )