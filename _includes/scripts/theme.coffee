# Set stored mode
theme = storage.get 'storage.theme'
$('html').addClass "theme-#{theme}"
$('#theme-toggle').val theme

# Toggle
$("#theme-toggle").on 'change', ->
  new_theme = $(@).val()
  $('html').removeClass("theme-#{storage.get 'storage.theme'}")
  $('html').addClass("theme-#{new_theme}")
  storage.set 'storage.theme', new_theme
  return