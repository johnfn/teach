(function() {
  doctype(5);
  html(function() {
    head(function() {
      title('Programming!');
      return link({
        rel: 'stylesheet',
        href: 'style.css'
      });
    });
    return body(function() {
      return header(function() {
        h1("Learn how to program.");
        a({
          href: "/tutorial"
        }, function() {
          return h2("I'm new to programming.");
        });
        return p("No experience required!");
      });
    });
  });
}).call(this);
