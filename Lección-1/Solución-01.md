## Lección 1

Creacción de Assertions y declarar una Variable.

### Descripción general (variables & felt)

A continuación, necesitaremos aprender cómo declarar una variable. El tipo de datos primario de Cairo es un elemento de campo `felt`, es un tipo de dato primitivo en Cairo el cual es un entero de 252 bits. 
  
Existen diferentes formas de declarar una variable en cairo, pero en esta leccion se usa `let`.  
Los `assert` se usan para comparación de valores en Cairo.  

```bash
let x : felt = 5;
```

`x` Es el nombre de la variable y es el tipo de datos. Si no indica un tipo, la variable se establecerá de forma predeterminada en un `felt`, por lo que esta sintaxis es equivalente a la declaración anterior:

```bash
let x = 5; 
```

### Descripción general (assertions)

Las aserciones son operaciones que hacen una de dos cosas.

Aquí hay un ejemplo de una declaración de afirmación:

```bash
assert num_pyramid_sides = 3; 
```

* Esta declaración establecerá la celda de memoria en 3 si aún no se ha establecido `num_pyramid_sides`
* Si `num_pyramid_sides` ya se ha escrito en la dirección de memoria, esta declaración verificará que los dos valores son iguales. El programa terminará con un mensaje de error si los dos valores no son iguales.

La memoria es inmutable (no se puede cambiar) en El Cairo, así que recuerde que una vez que establece un valor en una dirección de memoria, no puede cambiarlo... ¡pero siempre puede escribir en una nueva dirección de memoria!

## Solución

Todas las pirámides de las momias de El Cairo se construyen de manera óptima con 4 lados, pero también es aceptable usar 3 lados. Modifique el código agregando una afirmación `triangle_base_sides` para asegurarse de que sea igual a 3 e instanciar una variable `square_base_sides` correctamente.

```bash
//Construct your main function below this line
func main() {
    let triangle_base_sides : felt = 3;
    //Assert triangle_base_sides does indeed equal 3 and instantiate a felt named square_base_sides to pass the tests
    //do not modify code on this line or above
    assert triangle_base_sides = 3;
    let square_base_sides : felt = 4;
    //do not modify code on this line or below
    assert square_base_sides = 4;
    return();
}
```

### Referencias

Para documentos oficiales sobre felt: $  https://www.cairo-lang.org/docs/how_cairo_works/cairo_intro.html#field-elements $ ﻿

Para documentos oficiales sobre afirmaciones: $  https://www.cairo-lang.org/docs/how_cairo_works/consts.html#assert-statement $  & $  https://www.cairo-lang.org/docs/hello_cairo/intro.html $ 