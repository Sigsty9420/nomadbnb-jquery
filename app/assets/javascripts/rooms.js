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
      $("div.reviews ol").html("") // empties the ol

      $("div.reviews").html(response)
    })

    e.preventDefault();
  })
})
