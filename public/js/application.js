$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

  $(".choose-deck").on("click",function(event){
    event.preventDefault();
    var selectedDeck = $(this);
    var deckId = selectedDeck.data('id');
    console.log(deckId);
    $.ajax({
      type: "GET",
      url: "/decks/"+deckId,
      success: function(response){
        $('.container').html(response)
        console.log("win")
      }
    })
  })

    $(document).on("submit","form",function(event){
      event.preventDefault();
      $.ajax({
        type: "POST",
        url: this.attributes.action.nodeValue,
        data: $('form').serialize(),
        success: function(response){
          $('.container').html(response)
          console.log(response)
        }
      })
  });
})

// debugger;
//     event.preventDefault();
//     var selectedDeck = $(this);
//     var deckId = selectedDeck.data('id');
//     console.log(deckId);
//     $.ajax({
//       type: "POST",
//       url: "/decks/1/cards/1",
//       success: function(response){
//         // $('.container').html(response)
//         console.log(response)
//       }
//     })
//   })