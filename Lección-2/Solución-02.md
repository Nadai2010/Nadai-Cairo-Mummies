## Lección 2

Una función puede recibir parametros y retornar valores.  
Para esta lección crearemos una función con nombre `get_ideal_base_area` que recibira un parametro de tipo `felt` y retornara el resultado de multiplicar el parametro de entrada por 100.  

### Descripción General

La firma de una función define los parámetros (y sus tipos) y los valores devueltos (y sus tipos) de la función. La función principal escrita en la sección uno es un ejemplo de una firma de función sin parámetros y sin valores de retorno.

Aquí hay una muestra de una función llamada triality que tiene dos parámetros, `x` y `y` ambos del tipo `felt`, y un valor de retorno `z` del tipo `felt`.

```bash
func add(x : felt, y : felt) -> (z : felt) {

    let res : felt = x + y;

    return(z=res);

}
```

Como se vio en la primera lección, cada función necesita una declaración `return`. Además de eso, cada instrucción `return` debe devolver los tipos especificados en la firma de la función. Debe establecer el nombre de la variable de salida = el resultado que está devolviendo como se ve en la línea `return(z=res);` donde `z` es el nombre de la variable de salida de la firma de la función y el resultado que se devuelve.

Además, tenga en cuenta que al declarar una variable que ha sido devuelta por una función, debe 'descomprimirla'. Así que en lugar de decir:

```bash
let x = func_name(y); 
```

* Usted debe decir:

```bash
let (x) = func_name(y); 
```

Esto se debe a que cada función devuelve su resultado como una tupla. Entonces, al declarar  `let (x)`, estamos descomprimiendo la tupla devuelta por la función y configurando el elemento 0 de la tupla devuelta en la variable `x`.

## Solución

A las momias les encanta que el área de la base de la pirámide sea 100 veces mayor que el número de lados de la pirámide. Modifique el código agregando una función `get_ideal_base_area` que tomará un parámetro de entrada `num_pyramid_sides` y devolverá el área ideal de la base de la pirámide, que debe ser 100 veces el número de lados. Devuelve el área ideal en la variable `ideal_base_area`.

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
    return();
}

//Write the appropriate function below to ensure the assertions pass
//do not modify code on this line or above
func get_ideal_base_area(value: felt)-> (result: felt){
    let res : felt = value * 100;
    return(result = res);
}
```

### Referencias

Para documentos oficiales sobre funciones: $ https://www.cairo-lang.org/docs/how_cairo_works/functions.html$ 