$(function(){
  $("a.load_reviews").on("click", function(e){

    $.get(this.href).success(function(json){
      var $ol = $("div.reviews ol")
      $ol.html("") // empties the ol
      json.forEach(function(review){
        $ol.append("<li>" + review.content + "</li>")
      })

    })

    e.preventDefault();
  })
})
