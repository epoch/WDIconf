var Speaker = Backbone.Model.extend({
  urlRoot: 'http://localhost:3000/api/speakers',

  timePlusMinutes: function(startTime, minutesToAdd){
    minutesToAdd = minutesToAdd || 0;
    var array = startTime.split(':');
    var hours = parseInt(array[0]);
    var minutes = parseInt(array[1]);
    var date = new Date();
    date.setHours(hours);
    date.setMinutes(minutes);
    date.setMinutes(date.getMinutes() + minutesToAdd);
    if (date.getMinutes() === 0){
      return date.getHours() + ":00";
    } else {
      return date.getHours() + ":" + date.getMinutes();
    }
  },

  badgeUrl: function(badge){
    switch(badge) {
      case "FE":
        return 'img/badge_fed.svg';
        break;
      case "BE":
        return 'img/badge_bed.svg';
        break;
      case "Tech":
        return 'img/badge_tech.svg';
        break;
    };
  },

  badgeClassName: function(badge){
    switch(badge) {
      case "FE":
        return "cat-frontend";
        break;
      case "BE":
        return "cat-backend";
        break;
      case "Tech":
        return "cat-tech";
        break;
    };
  }

});