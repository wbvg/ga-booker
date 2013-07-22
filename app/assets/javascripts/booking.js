$(document).ready(function (){

  var display_booking = function (booking) {
    var $li = $('<li/>');
    var $span1 = $('<span/>').addClass('color_box');
    var $span2 = $('<span/>').addClass('name');
    var $span3 = $('<span/>').addClass('value invisible');
    var $span4 = $('<span/>').addClass('id invisible');

    $span1.css('background-color', priority.color);
    $span2.text(priority.name);
    $span3.text(priority.value);
    $span4.text(priority.id);

    $li.append([$span1, $span2, $span3, $span4]);
    $('#priorities').append($li);

    toggle_form();
  };

  var create_booking = function() {
    var color = $('input.minicolors').minicolors('value');
    var name = $('#name').val();
    var value = $('#value').val();
    var priority_id = $('#priority_id').val();
    var token = $('input[name="authenticity_token"]').val();

    $.ajax({
      dataType: 'json',
      type: 'POST',
      url: '/bookings',
      data: {'authenticity_token': token, 'id': booking_id, 'name': name, 'value': value}
    }).done(display_booking).error(function (message) {
    });

   return false;
  };
$('#create').on('click', 'create_booking', edit_booking);


  var edit_booking = function () {
    var color = $(this).css('background-color');
    color = rgb2hex(color);
    var name = $(this).siblings('.name').text();
    var value = $(this).siblings('.value').text();
    var id = $(this).siblings('.id').text();

    $('input.minicolors').minicolors('value', color);
    $('#name').val(name);
    $('#value').val(value);
    $('#priority_id').val(id);

    if ($('.form').is(':hidden'))
      toggle_form();
  };



  $('#bookings').on('click', '.color_box', edit_booking);

  var toggle_form = function () {
    $('#new_booking').toggle();
    $('.form').toggleClass('invisible');
    return false;
  };

  $('#new_booking, #cancel_booking').click(toggle_form);
  $('#create_booking').click(create_booking);

