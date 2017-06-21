$(function(){
  $("a.load_reviews").on("click", function(e){
    $.ajax({
      debugger;
      method: "GET",
      URL: this.href.json
    }).done( function(response) {
      $("div.comments").html(response)
    });

    e.preventDefault();
  })
})
