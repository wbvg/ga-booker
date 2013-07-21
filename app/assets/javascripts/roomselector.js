$(document).ready(function () {


$( ".draggable" ).draggable({
      revert: 'invalid'
    });

    $( "#droppable" ).droppable({
      accept: function( event, ui) {

        // Reject drops if room is booked.
        return ! $(this).is('.booked');
      },
      activeClass: "ui-state-hover",
      hoverClass: "ui-state-active",
      revert: true,
      drop: function( event, ui ) {
            $( this ).addClass( "booked" );
      }

    });


       $( "#droppable2" ).droppable({
      accept: function( event, ui) {

        // Reject drops if room is booked.
        return ! $(this).is('.booked');
      },
      activeClass: "ui-state-hover",
      hoverClass: "ui-state-active",
      revert: true,
      drop: function( event, ui ) {
            $( this ).addClass( "booked" );
      }
    });

       $( "#droppable3" ).droppable({
      accept: function( event, ui) {

        // Reject drops if room is booked.
        return ! $(this).is('.booked');
      },
      activeClass: "ui-state-hover",
      hoverClass: "ui-state-active",
      revert: true,
      drop: function( event, ui ) {
            $( this ).addClass( "booked" );
      }
    });

       $( "#droppable-pres" ).droppable({
      accept: function( event, ui) {

        // Reject drops if room is booked.
        return ! $(this).is('.booked');
      },
      activeClass: "ui-state-hover",
      hoverClass: "ui-state-active",
      revert: true,
      drop: function( event, ui ) {
            $( this ).addClass( "booked" );
      }
    });

          $( "#droppable-kitchen" ).droppable({
      accept: function( event, ui) {

        // Reject drops if room is booked.
        return ! $(this).is('.booked');
      },
      activeClass: "ui-state-hover",
      hoverClass: "ui-state-active",
      revert: true,
      drop: function( event, ui ) {
            $( this ).addClass( "booked" );
      }
    });


  });
