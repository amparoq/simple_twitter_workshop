# Apuntes:
1. Creamos aplicación: "rails new simple_twitter --database postgresql -j esbuild --css bootstrap"
2. Subimos a git
3. Vemos si bootstrap está funcionando bien (ha generado problemas antes):

Para ello, creamos primero una ruta (root), luego el controlador (static_pages_controller) y finalmente la vista.(home.html.erb en carpeta static_pages)

Las views son necesarias para diseñar lo que ver el usuario

Crearemos un nav_bar simple, sacado de bootstrap, lo pondrmeos en application.html.erb, pero lo definiremos en una vista partial (pedazo de una vista, que luego "pegamos" en otra vista)
Los partials siempre parten con _
