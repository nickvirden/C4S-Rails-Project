// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

$(document).ready(function() {
    /*Smooth Scroll Repo: https://github.com/kswedberg/jquery-smooth-scroll*/
    // Designates the <a class="btn-floating"> of the fixed button
    // as the element that actives the upward scroll
    $('a.btn-floating').smoothScroll({
        // Designates the speed of the scroll in milliseconds
        speed: 2000
    });

  // If you have a list of buttons, such as navigation bar elements, that reference different sections,
  // this is a generalized function that will send it to a given section up clicking
    $('ul.right li a').click(function(event) {
        // Prevents the default scroll action, which is to scroll to the top of the page
        event.preventDefault();
        
        var link = this;
        
        $.smoothScroll({
            scrollTarget: link.hash,
            speed: 2000
        });
    });

    $('#textarea1').val('');
    $('#textarea1').trigger('autoresize');

    // jQuery Form Field Vaildation
    $('#formValidate').validate({
        //debug: true,

        // Rules for each field
        rules: {
            name: {
                required: true,
                minlength: 2
            },
            email: {
                required: true,
                email: true
            },
            tel: {
                required: true,
                telVal: true
            },
            textarea1: {
                required: true
            },
            textarea2: {
                maxlength: 0
            },
        },

        // Custom error messages for each field
        messages: {
            name: {
                required: "Even Tinder would tell me your first name!",
                minlength: "Are you sure your name is that short?"
            },
            email: {
                required: "Your email is WHAT?",
                email: "You're getting there..."
            },
            tel: {
                required: "Uhh..."
            },
            textarea1: {
                required: "Aren't you gonna say something?"
            },
            textarea2: {
                maxlength: "Uhh... no."
            }
        },

        errorElement : 'div',
        errorPlacement: function(error, element) {
            var placement = $(element).data('error');
            if (placement) {
                $(placement).append(error)
            } else {
                error.insertAfter(element);
            }
        },

    });
    
    jQuery.validator.addMethod("telVal", function(value, element) {
        return this.optional(element) || /(\+[\d]{0,1}\d\s){0,1}[1-9][\d]{2}\-[\d]{3}\-[\d]{4}/.test(value);
        }, "But the instructions, though. :O");

});

