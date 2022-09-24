## Lección 0

Escribir tu función principal. La función main es el punto inicial para los programas de Cairo. 

### Descripción general

Bienvenido a escribir su primer programa de El Cairo. No nos sumergiremos en la redacción de contratos de Starknet hasta módulos posteriores, sino que nos centraremos en los fundamentos de El Cairo por ahora.

La función principal es el punto de partida de todos los programas de El Cairo. Por lo tanto, nuestro primer ejercicio comienza con la función main(). Hagamos eso ahora.

### Sobre las funciones

* La palabra clave se utiliza para definir una función `func`
* Cada firma de función debe terminar con un `{` 
* Cada función debe tener una declaración `return`
* Toda función debe terminar con un `}`
* Al igual que Solidity, las declaraciones y expresiones terminan en (punto y coma) `;`

Aquí hay una muestra de una función llamada triality sin parámetros ni valores de retorno.

```bash
func triality() {

    return();

}
```

## Solución

Modifique el código para escribir una función llamada main que no tenga parámetros ni valores de retorno.

```bash
    func main() {
      return();
    } 
  ```

### Referencias:

Para documentos oficiales sobre la función principal: $  https://www.cairo-lang.org/docs/hello_cairo/intro.html 