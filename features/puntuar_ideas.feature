# language: es
@javascript
Característica: Puntuar ideas
  Como usuario
  Quiero puntuar las ideas que se me ocurren
  Para saber cuales son las mejores

  Escenario: Modificar la puntuación de una idea
    Dado que he creado 2 ideas
    Cuando visito la página de edición de la primera idea
    Y elijo ponerle 3 estrellas
    Y visito el listado principal
    Entonces debería ver 3 estrellas para la primera idea
