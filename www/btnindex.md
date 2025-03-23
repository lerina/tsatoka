---
title: htmx - handlebar - alpineJs
header-includes:
  <link rel="icon" href="./static/favicon.svg">
  <script src="./static/js/handlebars.min-v4.7.8.js"></script>
  <script src="./static/js/htmx/htmx.js"></script>
---

<main>
<!--script src="https://unpkg.com/htmx.org@2.0.4/dist/" integrity="sha384-oeUn82QNXPuVkGCkcrInrS1twIxKhkZiFfr2TdiuObZ3n3yIeMiqcRzkIcguaof1" crossorigin="anonymous"></script-->


  <!-- have a button POST a click via AJAX -->
<button hx-post='template({ doesWhat: "hehehe" }' hx-swap="outerHTML">
  Click Me
</button>

<!-- Include Handlebars from a CDN -->

<script>
  // compile the template
  var template = Handlebars.compile("Handlebars <b>{{doesWhat}}</b>");
  // execute the compiled template and print the output to the console
  console.log(template({ doesWhat: "rocks!" }));

</script>

</main>
