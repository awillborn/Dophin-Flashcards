$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()
  Dophin.addGuessListener()
  Dophin.addDeckListener()


});


var Dophin = {

  addGuessListener: function(){
    $(document).on("submit","form",function(event){
      event.preventDefault();
      Dophin.cardGuess(this);
    });
  },

  addDeckListener: function(){
    $(".choose-deck").on("click",function(event){
      event.preventDefault();
      console.log(this)
      Dophin.deckChoice(this);
    })
  },

  deckChoice: function(){
    $.ajax({
      type: "GET",
      url: this.deckChoice.arguments[0].attributes.href.nodeValue,
      success: function(response){
        $('.container').html(response)
      }
    })
  },

  cardGuess: function(){
    // debugger
    $.ajax({
      type: "POST",
      url: this.cardGuess.arguments[0].attributes.action.nodeValue,
      data: $('form').serialize(),
      success: function(response){
        $('.container').html(response)
      }
    })
  }
}