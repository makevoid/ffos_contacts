(function() {
  var button, install;

  install = function(ev) {
    var manifest_url, myapp;

    ev.preventDefault();
    manifest_url = "http://my.webapp.com/manifest.webapp";
    myapp = navigator.mozApps.install(manifest_url);
    myapp.onsuccess = function(data) {
      return this.parentNode.removeChild(this);
    };
    return myapp.onerror = function() {};
  };

  button = document.getElementById("install");

  button.addEventListener("click", install, false);

}).call(this);
