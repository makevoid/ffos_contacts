main = ->
  log "hello world"
  console.log navigator.mozContacts.Contact

  person = new Contact()
  person.givenName = "Mario"
  person.familyName = "Rossi"
  person.nickName = "maarioo"


  saving = navigator.mozContacts.save person

  saving.onsuccess = ->
    log "contact saved"
    person = saving.result

  saving.onerror = (err) ->
    log err

log = (string) ->
  body = document.getElementsByTagName("body")[0]
  body.innerHTML = body.innerHTML + string + "<br>"

document.addEventListener "DOMContentLoaded", main, false



# allContacts = navigator.mozContacts.getAll(
#   sortBy: "familyName"
#   sortOrder: "descending"
# )

# allContacts.onsuccess = (event) ->
#   cursor = event.target.result
#   if cursor.result
#     console.log "Found: " + cursor.result.givenName[0] + " " + cursor.result.familyName[0]
#     cursor.continue()
#   else
#     console.log "No more contacts"

# allContacts.onerror = ->
#   console.warn "Something went terribly wrong! :("