## Lección Module Final

Resolver el módulo sin ayuda

### Descripción General

¡Así que ha decidido asumir el desafío de saltarse las lecciones paso a paso y construir la base de las pirámides de El Cairo en un solo guión! Siempre puede seguir las lecciones paso a paso si encuentra algún problema.

Asumiremos que tiene los fundamentos de El Cairo cubiertos en este módulo, por lo que abordaremos el problema directamente.

## Solución

Hemos creado una función principal con varias aserciones y algunas llamadas a funciones que aún no existen. Su objetivo es hacer que el script se compile y se ejecute correctamente. Asegúrese de leer los comentarios porque cierto código no se puede modificar. Las tareas:

* A  las momias les encanta que el área de la base de la pirámide sea 100 veces mayor que el número de lados de la pirámide. Modifique el código agregando una función `get_ideal_base_area` que tomará un parámetro de entrada `num_pyramid_sides` y devolverá el área ideal de la base de la pirámide, que debe ser 100 veces el número de lados. Devuelve el área ideal en la variable `ideal_base_area`.

* Las momias son muy particulares sobre el área de la base de sus pirámides. Te piden que te asegures de poder verificar que la base tiene el área ideal. Modifique el código agregando una función `is_ideal_base_area` que tomará parámetros `num_pyramid_sides` y `base_area` que devolverá 1 si el área base es ideal o 0 si no lo es.

```bash
//Construct your main function below this line
func main() {
    let triangle_base_sides : felt = 3;
    let square_base_sides : felt = 4;
    assert triangle_base_sides = 3;
    assert square_base_sides = 4;
    let (triangle_base_area : felt) = get_ideal_base_area(triangle_base_sides);
    assert triangle_base_area = 300;
    let (square_base_area : felt) = get_ideal_base_area(square_base_sides);
    assert square_base_area = 400;
    let (comp_square_area : felt) = is_ideal_base_area(square_base_sides,square_base_area);
    assert comp_square_area = 1;
    let square_base_area_mod = 401;
    let (comp_square_area_mod : felt) = is_ideal_base_area(square_base_sides,square_base_area_mod);
    assert comp_square_area_mod = 0;
    return();
}


//Write the appropriate functions below to ensure the assertions pass
//do not modify code on this line or above

func get_ideal_base_area(value: felt)-> (result: felt){
    let res : felt = value * 100;
    return(result = res);
}

func is_ideal_base_area(num_pyramid_sides: felt, base_area: felt) -> (result: felt){
    let x: felt = num_pyramid_sides * 100;
    if (x == base_area) {
        return (result=1);
     }
    return (result=0);
 } 
 ```

 ## FELICIDADES, Un pasito más en Cairo.


Referencias:

Para documentos oficiales sobre cómo escribir una función con condicionales: $  https://www.cairo-lang.org/docs/hello_cairo/intro.html $ ﻿


