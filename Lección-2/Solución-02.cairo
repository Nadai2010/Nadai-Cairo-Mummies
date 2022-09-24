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