$(function(){
  $("a.load_reviews").on("click", function(e){
//    $.ajax({
//      debugger;
//      method: "GET",
//      URL: this.href
//    }).success( function(response) {
//      $("div.comments").html(response)
//    }).error(function(){
//      alert("Error loading reviews")
//    });

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
