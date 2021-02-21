public class sizeoflist {
    
    private string ModelNumber;
    private integer NumberInStock;
    
    public sizeoflist(){
        ModelNumber='yryryr';
    }
    public void setModelNumber(string TheModelNumber){
        ModelNumber=TheModelNumber;
    }
    public void NumberInStock(integer NumberInStock){
        this.NumberInStock=NumberInStock;
    }
    public string getModelNumber(){ 
        return ModelNumber;
    }
    public integer getNumberInStock(){ 
        return NumberInStock;
    }
}