Template.Model.events
    'click .childrenLightbox': (e, t) ->
        e.preventDefault()
        lightbox.open('children', {})
        false
    'click .spaceLightbox': (e, t) ->
        e.preventDefault()
        lightbox.open('children', {})
        false  
    'click .consciousLightbox': (e, t) ->
        e.preventDefault()
        lightbox.open('children', {})
        false  
    'click .cultureLightbox': (e, t) ->
        e.preventDefault()
        lightbox.open('children', {})
        false  
    'click .autarchyLightbox': (e, t) ->
        e.preventDefault()
        lightbox.open('children', {})
        false                           
Template.closeLightbox.events
    'click .closeLightbox': (e, t) ->   
        e.preventDefault()     
        lightbox.close()
        false