(function() {
  var log, main;

  main = function() {
    var person, saving;

    log("hello world");
    console.log(navigator.mozContacts.Contact);
    person = new Contact();
    person.givenName = "Mario";
    person.familyName = "Rossi";
    person.nickName = "maarioo";
    saving = navigator.mozContacts.save(person);
    saving.onsuccess = function() {
      log("contact saved");
      return person = saving.result;
    };
    return saving.onerror = function(err) {
      return log(err);
    };
  };

  log = function(string) {
    var body;

    body = document.getElementsByTagName("body")[0];
    return body.innerHTML = body.innerHTML + string + "<br>";
  };

  document.addEventListener("DOMContentLoaded", main, false);

}).call(this);
