// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .

var MovieListFilter = {
  filter_adult: function () {
    //console.log ($(this).attr('id'))
    // 'this' is *unwrapped* element that received event (checkbox)
    if ($(this).is(':checked')) {
      $('tr.G').show();
      $('tr.PG').hide();
      $('tr.PG-13').hide();
      $('tr.R').hide();
      $('tr.NC-17').hide();
    } else {
      $('tr.G').hide();
      $('tr.PG').show();
      $('tr.PG-13').show();
      $('tr.R').show();
      $('tr.NC-17').show();
    };
  },
  filter_PG: function () {
    console.log ($(this).attr('id'))
    // 'this' is *unwrapped* element that received event (checkbox)
    if ($(this).is(':checked')) {
      $('tr.PG').show();
      $('tr.G').hide();
      $('tr.PG-13').hide();
      $('tr.R').hide();
      $('tr.NC-17').hide();
    } else {
      $('tr.PG').hide();
      $('tr.G').show();
      $('tr.PG-13').show();
      $('tr.R').show();
      $('tr.NC-17').show();
    };
  },
  filter_PG13: function () {
    console.log ($(this).attr('id'))
    // 'this' is *unwrapped* element that received event (checkbox)
    if ($(this).is(':checked')) {
      $('tr.PG-13').show();
      $('tr.G').hide();
      $('tr.PG').hide();
      $('tr.R').hide();
      $('tr.NC-17').hide();
    } else {
      $('tr.PG-13').hide();
      $('tr.G').show();
      $('tr.PG').show();
      $('tr.R').show();
      $('tr.NC-17').show();
    };
  },
  filter_R: function () {
    console.log ($(this).attr('id'))
    // 'this' is *unwrapped* element that received event (checkbox)
    if ($(this).is(':checked')) {
      $('tr.R').show();
      $('tr.G').hide();
      $('tr.PG').hide();
      $('tr.PG-13').hide();
      $('tr.NC-17').hide();
    } else {
      $('tr.R').hide();
      $('tr.G').show();
      $('tr.PG').show();
      $('tr.PG-13').show();
      $('tr.NC-17').show();
    };
  },
  filter_NC17: function () {
    console.log ($(this).attr('id'))
    // 'this' is *unwrapped* element that received event (checkbox)
    if ($(this).is(':checked')) {
      $('tr.NC-17').show();
      $('tr.G').hide();
      $('tr.PG').hide();
      $('tr.R').hide();
      $('tr.PG-13').hide();
    } else {
      $('tr.NC-17').hide();
      $('tr.G').show();
      $('tr.PG').show();
      $('tr.R').show();
      $('tr.PG-13').show();
    };
  },

  setup: function() {
    // construct checkbox with label
    var labelAndCheckbox =
      $('<label for="G">G</label>' +
        '<input type="checkbox" id="G"/>' );
    labelAndCheckbox.insertBefore('#movies');
    $('#G').change(MovieListFilter.filter_adult);
    var labelAndCheckbox1 =
      $('<label for="PG">PG</label>' +
        '<input type="checkbox" id="PG"/>' );
    labelAndCheckbox1.insertBefore('#movies');
    $('#PG').change(MovieListFilter.filter_PG);
    var labelAndCheckbox2 =
      $('<label for="PG-13">PG-13</label>' +
        '<input type="checkbox" id="PG-13"/>' );
    labelAndCheckbox2.insertBefore('#movies');
    $('#PG-13').change(MovieListFilter.filter_PG13);
    var labelAndCheckbox3 =
      $('<label for="R">R</label>' +
        '<input type="checkbox" id="R"/>' );
    labelAndCheckbox3.insertBefore('#movies');
    $('#R').change(MovieListFilter.filter_R);
    var labelAndCheckbox4 =
      $('<label for="NC-17">NC-17</label>' +
        '<input type="checkbox" id="NC-17" />' );
    labelAndCheckbox4.insertBefore('#movies');
    $('#NC-17').change(MovieListFilter.filter_NC17);
  }
  
}
$(MovieListFilter.setup);

$.rails = rails = {
    // Link elements bound by jquery-ujs
    linkClickSelector: 'a[data-confirm], a[data-method], a[data-remote], a[data-disable-with]',
// line 160:
    handleMethod: function(link) {
        // ...code elided...
        form = $('<form method="post" action="' + href + '"></form>'),
        metadata_input = '<input name="_method" value="' + method + '" type="hidden" />';
      // ...code elided...
      form.hide().append(metadata_input).appendTo('body');
      form.submit();
    }
}