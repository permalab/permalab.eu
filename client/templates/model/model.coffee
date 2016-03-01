Template.Model.events
    'click .childrenLightbox': (e, t) ->
        e.preventDefault()
        lightbox.open('children', {})
        false
    'click .spaceLightbox': (e, t) ->
        e.preventDefault()
        lightbox.open('space', {})
        false
Template.closeLightbox.events
    'click .closeLightbox': (e, t) ->   
        e.preventDefault()     
        lightbox.close()
        false