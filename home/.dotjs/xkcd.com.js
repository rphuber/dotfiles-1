var comic = $('#middleContent .s img[title]');
$('<p></p>').text(comic.attr('title')).insertAfter(comic).css({
  'background-color': '#ffc',
  'border': '1px solid yellow',
  'margin': '10px 0 0',
  'padding': '1em'});