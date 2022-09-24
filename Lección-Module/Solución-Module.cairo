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