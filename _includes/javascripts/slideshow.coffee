# $('.slideshow').each ->
#   $me = $ @
#   $slidesContainer = $me.find('.slides')
#   $slides = $slidesContainer.find('.slide')
#   $slidesContainer.width $slides.width() * $slides.size()
#   active = ''
#   resizeTimeout = null
#
#   hide = ->
#     $('body').removeClass 'disable-scroll'
#     $me.removeClass 'show'
#     setTimeout =>
#       $me.addClass 'hide'
#     , 300
#
#   setActive = (name) ->
#     $('body').addClass 'disable-scroll'
#     $me.removeClass 'hide'
#     $me.addClass 'show'
#     active = name
#     $me.find('[data-slide-link]').removeClass 'active'
#     $me.find('[data-slide-link="'+name+'"]').addClass 'active'
#     $slides.each (i) ->
#       if $(@).data('slide-name') == name
#         dynamics.animate($slidesContainer[0], {
#           translateX: (i * $slides.width() * -1)
#         }, {
#           type: dynamics.spring,
#           frequency: 150,
#           friction: 400,
#           duration: 1700
#         })
#
#   $me.find('[data-slide-link]').each ->
#     console.log 'omg?', @
#     $(@).on 'click', (e) ->
#       console.log 'SLICKAAA'
#       e.preventDefault()
#       setActive $(@).data('slide-link')
#
#   $(window).resize ->
#     clearTimeout resizeTimeout
#     resizeTimeout = setTimeout ->
#       setActive active
#     , 100
#   $me.find('[data-slide-hide-cover="true"]').on 'click', ->
#     $me.find('.slide-cover').addClass 'hide'
#     setTimeout ->
#       $me.removeClass 'show-cover'
#     , 300
