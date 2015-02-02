class @NewsPopupController
  constructor: ->
    $('#popup-shadow').click @hide_popup
    $('.popup').click @hide_popup
    $('.popup-link').click @show_popup
    $('form').bind 'ajax:success', @form_success
    $('form').bind 'ajax:error', @form_error
    return

  show_popup: (e) ->
    e.preventDefault()
    $('#popup-shadow').fadeIn('slow')
    name = $(this).attr('id')
    $('#' + name + '-popup').fadeIn('slow')

  hide_popup: (e) ->
    if $(e.target).is('.btn-close')
      e.preventDefault()
    if $(e.target).is('.popup, #popup-shadow, .btn-close')
      $('#popup-shadow').hide()
      $('.popup').hide()

  form_success: ->
    $('.popup').hide()
    $('#popup-shadow').fadeIn('slow')
    $('#success-popup').fadeIn('slow')
    return false

  form_error: ->
    return false
