# Aplicaciones con Flutter

Esto es una recopilacion de aplicaciones de prueba que voy haciendo a medida que aprendo a codear aplicaciones en Flutter. Cada carpeta es un proyecto diferente. Debería colocar una descripción de que hace cada una, pero el primer push a este repositorio trajo ya cinco proyectos diferentes y recién estoy creando este readme. Asi que es lo que es :sleeping:.

---

## Info util

- [Flutter Documentation](https://docs.flutter.dev/)
- [Flutter Packages](https://pub.dev/packages?q=sdk%3Aflutter)
- [Como ser un Ninja en Flutter :ninja:](https://www.youtube.com/playlist?list=PL4cUxeGkcC9jLYyp2Aoh6hcWuxFDX6PBJ)
- [Info veloz de Flutter](https://www.youtube.com/watch?v=WOvj84xq_fc)

---

## IDE

Todos los proyectos de este repositorio fueron hechos en VS code con la extension de Flutter. Supongo que tambien andan en Android Studio, pero no lo probe.

---

## To Do

- [ ] Probar las apps en android y en iOS.
- [ ] Hacer mokup de las pantallas de la app definitiva (o su primera version). Con IA? Seguro.
- [ ] Analizar de donde se van a sacar las recetas.

---

## LOG
2026-04-15 - belladona_app_v01
: Agregue la app de la tienda de belladona. Le falta la parte del carrito porque se me rompio :(.

2026-04-04 - misviandas_app_v01
: Agregue el listado de ingredientes en la lista de compras. Y tambien agregue dos recetas en la pantalla de recetas.

2026-03-29 - misviandas_app_v01
: Actulice la app. Varias modificaciones, pero me da fiaca listarlas a todas ahora aca :(

2026-03-21 - misviandas_app_v01
: Agregue las imagenes a la app.

2026-03-19 - misviandas_app_v01
: Agregue la NavigationBar que es la barra que esta en la parte inferior de la pantalla, con los iconos para cabiar de pantalla. Tambien arme las otras pantallas para ver que la navegacion funcione bien. Las pantallas solo tienen un color distitivo y nada mas.

2026-03-16 - misviandas_app_v01
: Tratando de que se parezca a lo que hizo la IA. De a poco.

2026-03-12 - misviandas_app_v01
: Arme una appnueva intentando recrear la imagen de referencia que hice con Steve. Esta muuuy verde todavia.

2026-03-07 - flutter_app_04_multipage
: Varias cosa
 - Agregue la animacion en la pantalla loading. No se rompio :)
 - Cambie el nombre de la variable WorlTime a WorldTime.
 - Termie el curso, pero la app no me imprime la hora cuando selecciona la ciudad. Voy a tener que resolver eso.

2026-03-05 - flutter_app_04_multipage
: Rehaciendo lo que funciono antes del incidente :sweat_smile:. Se resolvio el error de la funcion que pasa datos entre pantallas usando una variable tipo __Object?__. En la pantalla loading se obtiene la hora actual y se la pasa a la pantalla home en esta variable Object?, en la pantalla home se castea a una variable tipo Map. Subo hasta aca porque esto seguro funciona (por ahora).

2026-03-02 - flutter_app_04_multipage
: Varias cosas
 - Manejo de errores. try {} catch {}. Cunado no se obtiene la hora del servidor imprime 'no data'
 - Pasando los datos a la pantalla /home, pero me tira error en la funcion __data = ModalRoute.of(context).settings.arguments;__ del archivo __home.dart__ :( . Ya es tarde y me voy a dormir :sleeping:.

2026-02-25 - flutter_app_04_multipage
: Nueva clase WorlTime, muestra la hora en la pantalla loading

2026-02-24 - flutter_app_04_multipage
: Tomando la hora de worldtimeapi




