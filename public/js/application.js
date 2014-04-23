$(document).ready(function() {
  Search.bindEvents()
});

var Search = {
  bindEvents: function() {
    $('#search').on("submit", this.searchCompany)
  },

  searchCompany: function(e) {
    e.preventDefault();
    $('#results').html("<div class='status'>Searching...</div>")
    searchTerm = $(this).serialize();
    $.ajax ({
      type: 'post',
      url: '/search',
      data: searchTerm
    }).done(function(results) {
      $('#results').html(results);
    }).fail(function() {
      $('#results').html("<p id='status'>We're sorry, but an error occurred.</p>");
    })
  }
}