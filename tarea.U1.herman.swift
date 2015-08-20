class menu {
    var idMenu:Int
    var fecha:String
    init(idMenu:Int, fecha:String){
        self.idMenu = idMenu
        self.fecha = fecha
    }
    func getIdMenu()-> Int{
        return idMenu
    }
    func getFecha()-> String{
        return fecha
    }
    func setIdMenu(idMenu:Int){
        self.idMenu=idMenu
    }
    func setFecha(fecha:String){
        self.fecha=fecha
    }    
}
class Ingrediente{
    var idIngrediente:Int
    var nombreIn:String
    var precioIn:Int
    init(idIngrediente:Int, nombreIn:String, precioIn:Int){
        self.idIngrediente = idIngrediente
        self.nombreIn = nombreIn
        self.precioIn = precioIn
    }
}
let pollo = Ingrediente (idIngrediente:1, nombreIn:"Pollo", precioIn:500)
let pimenton = Ingrediente (idIngrediente:2, nombreIn:"Pimenton", precioIn:200)
let tomate= Ingrediente (idIngrediente:3, nombreIn:"Tomate", precioIn:150)


class Plato: menu {
    var idPlato: Int
    var nombrePl:String
    var tipoPlato:String
    var ingrediente: [(ingediente:Ingrediente, cantidad:Int)]
    
    
    init(idPlato:Int, nombrePl:String, tipoPlato:String, ingrediente:Array<(ingrediente:Ingrediente, cantidad:Int)>){
        self.idPlato = idPlato
        self.nombrePl = nombrePl
        self.tipoPlato = tipoPlato
        self.ingrediente = ingrediente
        super.init()
    }
    
    func setIdPlato (idPlato:int){
        self.idPlato = idPlato
    }
    func setNombrePl (nombrePl:String){
        self.nombrePl= nombrePl
    }

    func getNombre() -> String{
        return nombrePl
    }
    func setTipoPlato(tipoPlato:String){
        self.tipoPlato=tipoPlato
    }
    func getTipoPlato() ->String{
        return tipoPlato
    }
}


