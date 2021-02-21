public class Apex_SOQl2 {
    public list<account> acc {set;get;}
    public void getData(){
      acc=[Select Name,Industry,Rating,Phone From Account Where CreatedDate=This_Month];
        }

}