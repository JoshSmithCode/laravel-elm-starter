<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <title>Elmsperiment</title>
        <script src="/build/elmsperiment.js"></script>
    </head>
    <body>
        <div id="elmsperiment"></div>
        <script>
            var app = Elm.Main.embed(document.getElementById('elmsperiment'));
        </script>
    </body>
</html>
