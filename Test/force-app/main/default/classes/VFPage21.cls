public class VFPage21 {
    public pageReference next(){
        pageReference p =new pageReference('/apex/VFpage22');
        return p;
    }
    public pageReference prev(){
        pageReference p =new pageReference('/apex/VFpage21');
        return p;
    }

}