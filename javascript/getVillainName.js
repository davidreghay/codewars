function getVillainName(birthday){
  var month_name = ['Evil', 'Vile', 'Cruel', 'Trashy', 'Despicable', 'Embarrassing',
                    'Disreputable', 'Atrocious', 'Twirling', 'Orange', 'Terrifying',
                    'Awkward'];
  var date_name = ['Mustache', 'Pickle', 'Hood Ornament', 'Raisin', 'Recycling Bin',
                   'Potato', 'Tomato', 'House Cat', 'Teaspoon', 'Laundry Basket'];

  return 'The ' + month_name[birthday.getMonth()] + ' ' + date_name[birthday.getDate() % 10];
}