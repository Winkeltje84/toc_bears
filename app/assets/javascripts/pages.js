function ready(){(function(){
  $('#workshop-carousel').carousel({ interval: 2000 });
}());

(function(){
  $('.carousel-showthreemoveone .item').each(function(){
    var itemToClone = $(this);
    for (var i=1;i<3;i++) {
      itemToClone = itemToClone.next();
      if (!itemToClone.length) {
        itemToClone = $(this).siblings(':first');
      }
      itemToClone.children(':first-child').clone()
        .addClass("cloneditem-"+(i))
        .appendTo($(this));
    }
  });
}());
}
$(document).ready(ready);
$(document).on('page:load', ready);
