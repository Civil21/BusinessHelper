// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

import "bootstrap"
import "stylesheets/application"

import toastr from "toastr";
toastr.options = {
  "closeButton": false,
  "debug": false,
  "positionClass": "toast-top-center",
  "onclick": null,
  "showDuration": "300",
  "hideDuration": "1000",
  "timeOut": "5000",
  "extendedTimeOut": "1000",
  "showEasing": "swing",
  "hideEasing": "linear",
  "showMethod": "fadeIn",
  "hideMethod": "fadeOut"
}
window.toastr = toastr


// $(document).ready(function(){
//    $('[data-toggle="offcanvas"]').click(function(){
//        $("#navigation").toggleClass("hidden-xs");
//    });
// });
