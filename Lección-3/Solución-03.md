## Lección 3

Funciones Logicas y Condicionales.  

### Descripción General

Una instruccion condicional comienza con la palabra `if` seguido de parentesis `()` y la comparacion dentro de los parentesis ej. `(1 > 9)`,  el resultado  de la evaluación regresa un `true` o un `false`, si el resultado es `true` entonces se ejecuta el codigo que esta dentro del cuerpo de la condición, si es `false` entonces se salta ese codigo  y no  se ejecuta.

Echemos un vistazo a un condicional simple que compara dos números. Devolveremos 1 si los dos parámetros de entrada son iguales y 0 si no lo son. Observe que usamos para verificar la igualdad `==`, cada declaración if termina con `{` y la condición está contenida entre la declaración `if` y `}`.

```bash
func is_equal(x : felt, y : felt) -> (z : felt) {
    if (x == y) {
        return (z=1);
    }
    return(z=0);
}
```

## Solución

Las momias son muy particulares sobre el área de la base de sus pirámides. Te piden que te asegures de poder verificar que la base tiene el área ideal. Modifique el código agregando una función `is_ideal_base_area` que tomará parámetros `num_pyramid_sides` y `base_area` que devolverá 1 si el área base es ideal o 0 si no lo es.

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



func get_ideal_base_area(num_pyramid_sides : felt) -> (ideal_base_area : felt) {
    let res = 100 * num_pyramid_sides;
    return(ideal_base_area=res);
}
//Write the appropriate function below to ensure the assertions pass
//do not modify code on this line or above

func is_ideal_base_area(num_pyramid_sides: felt, base_area: felt) -> (result: felt){
    let x: felt = num_pyramid_sides * 100;
    if (x == base_area) {
        return (result=1);
     }
    return (result=0);
 } 
 ```
 
### Referencias

Para documentos oficiales sobre cómo escribir una función con condicionales: $  https://www.cairo-lang.org/docs/hello_cairo/intro.html $ 