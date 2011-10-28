doctype 5
html ->
  head ->
    title 'Programming!'
    link rel: 'stylesheet', href: 'style.css'

  body ->
    header ->
      h1 "Learn how to program."

      a href: "/tutorial", ->
        h2 "I'm new to programming."

      p "No experience required!"
