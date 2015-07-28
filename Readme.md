# Permalab


Project auschecken:

    git clone -b meteor https://github.com/Donzucco/permalab.git

Meteor installieren

    curl https://install.meteor.com/ | sh

Im Projekt Ordner:

    ./xrunner dev


Struktur:

CSS liegt unter client/css/


Templates liegen unter client/templates/

Dein HauptLayout liegt in client/layouts/master_layout.html

Da wo

    {{> Template.dynamic template=main}}

steht, wird jeweils das Layout reingeladen was in both/router.coffee definiert ist.

Du kannst neue Templates ganz einfach anlegen in dem du eine neue .html Datei anlegst oder in bestehende Dateien html markup in einem template tag einbindest. z.B.

    <template name="MyCustomName">
        <h1>Mein html markup</h1>
        <p>Lorem ipsum</p>
    </template>

Wenn du dieses Template nun irgendwo einbinden möchtest, kannst du dies einfach über 

    {{> MyCustomName}}

erreichen.