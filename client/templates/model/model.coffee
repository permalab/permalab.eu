Template.Model.events
    'click .childrenLightbox': (e, t) ->
        e.preventDefault()
        lightbox.open('children', {})
        false
    'click .spaceLightbox': (e, t) ->
        e.preventDefault()
        lightbox.open('space', {})
        false  
    'click .consciousLightbox': (e, t) ->
        e.preventDefault()
        lightbox.open('conscious', {})
        false  
    'click .permacultureLightbox': (e, t) ->
        e.preventDefault()
        lightbox.open('permaculture', {})
        false  
    'click .autarchyLightbox': (e, t) ->
        e.preventDefault()
        lightbox.open('autarchy', {})
        false 
    'click .energyLightbox': (e, t) ->
        e.preventDefault()
        lightbox.open('energy', {})
        false                                   
Template.closeLightbox.events
    'click .closeLightbox': (e, t) ->   
        e.preventDefault()     
        lightbox.close()
        false