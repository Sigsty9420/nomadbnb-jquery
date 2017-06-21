$(function(){
  $("a.load_reviews").on("click", function(e){
    $.ajax({
      debugger;
      method: "GET",
      URL: this.href
    }).success( function(response) {
      $("div.comments").html(response)
    }).error(function(){
      alert("Error loading reviews")
    });

    e.preventDefault();
  })
})
