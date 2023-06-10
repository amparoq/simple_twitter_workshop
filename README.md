# Apuntes:

* Chequear las versiones: ruby debe ser 3.2.0, node debe ser mayor o igual a 18

1. Creamos aplicación: "rails new simple_twitter --database postgresql -j esbuild --css bootstrap"
2. Subimos a git
3. Vemos si bootstrap está funcionando bien (ha generado problemas antes):

Para ello, creamos primero una ruta (root), luego el controlador (static_pages_controller) y finalmente la vista.(home.html.erb en carpeta static_pages)

Las views son necesarias para diseñar lo que ver el usuario

Crearemos un nav_bar simple, sacado de bootstrap, lo pondremos en application.html.erb, pero lo definiremos en una vista partial (pedazo de una vista, que luego "pegamos" en otra vista)
Los partials siempre parten con "_"

Si el dropdown (por ejemplo) del navbar no funcionan, bootstrap no está funcionando
Por lo tanto, usaremos yarn y pondremos: yarn build:css
Luego, para javascript: yarn build

Pasos:
bundle add cssbundling-rails
rails css:install:bootstrap
yarn build:css
yarn add @hotwired/turbo-rails
yarn add @hotwired/stimulus
yarn build

4. Cambiemos un poco el navbar
5. Agregamos devise: "bundle add devise"
6. Luego: "rails g devise:install"





## Historia
Webtech es la esposa
Node es el esposo
Ruby la musa (la she-e-o de Gemfile)
Gemfile la agencia para la que trabaja Ruby
Rails el hijo
Bootstrap el prostituo
Yarn el amante
