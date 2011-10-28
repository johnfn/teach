(function() {
  doctype(5);
  html(function() {
    head(function() {
      title('Intro!');
      return link({
        rel: 'stylesheet',
        href: 'style.css'
      });
    });
    return body(function() {
      return header(function() {
        h1("Ah, beautiful. The blank slate.");
        p("Why don't we start off with Haskell? I'm sure that won't scare you away.");
        h2("Typeclasses");
        return p("Typeclasses are what you should take if you're having trouble using the keyboard.");
      });
    });
  });
}).call(this);
