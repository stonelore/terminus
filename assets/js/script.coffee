---
---
{% include scripts/storage.coffee %}
{% include scripts/theme.coffee %}

# Prevent default events
$('a.prevent-default').on 'click', (e) -> e.preventDefault()
$('form.prevent-default').on 'submit', (e) -> e.preventDefault()

# Select arrow
$('select').each ->
  $(@).on 'change', ->
    $(@).find('option span.option-arrow').remove()
    $(@).find('option:selected').append $('<span/>',{ class: 'option-arrow', text: ' ▼'})
    return
  $(@).trigger 'change'
  return
