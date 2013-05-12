# this is an example from mozilla

# more examples: https://github.com/mozilla/openwebapps/tree/develop/examples/demopaid

# web api: https://developer.mozilla.org/en-US/docs/WebAPI

# web activities: https://developer.mozilla.org/en-US/docs/WebAPI/Web_Activities#Firefox_OS_activities

# long list of everything: https://developer.mozilla.org/en-US/docs/WebAPI/Doc_status

# main page: https://developer.mozilla.org/en-US/docs/Web/Apps/Developing

# visibility api:
# https://developer.mozilla.org/en-US/docs/DOM/Using_the_Page_Visibility_API

install = (ev) ->
  ev.preventDefault()

  # define the manifest URL
  manifest_url = "http://my.webapp.com/manifest.webapp"

  # install the app
  myapp = navigator.mozApps.install(manifest_url)
  myapp.onsuccess = (data) ->

    # App is installed, remove button
    @parentNode.removeChild this

  myapp.onerror = ->

# App wasn't installed, info is in
# installapp.error.name

# get a reference to the button and call install() on click
button = document.getElementById("install")
button.addEventListener "click", install, false