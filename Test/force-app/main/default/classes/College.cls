public class College{
    public String name,branch;
    public integer fee,tax;
    public College(string colName, string colBranch){
        name=colName;
        branch=colBranch;
    }
    public void calculate(){
        if(branch=='cse'){
            fee=500;
            tax=100;
        }else{
            fee=1000;
            tax=200;
        }
        system.debug(fee);
        system.debug(tax);
        system.debug(name);

    }
    
}