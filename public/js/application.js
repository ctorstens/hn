$(document).ready(function() {

 $('.up_vote').on("click","a,img", function (e) {
  e.preventDefault();
  alert('Up Vote!');
});

  $('.down_vote').on("click","a,img", function (e) {
  e.preventDefault();
  alert('Down Vote!');
});

});
