$(function(){
  $("a.load_reviews").on("click", function(e){
    $.ajax({
      method: "GET",
      URL: this.href
    }).done( function(data) {
      console.log(data)
    });

    e.preventDefault();
  })
})
