public class RoolupSummery {
    public static void performimgCRUD(list<account>acc){
        list<account> Ac=new list<account>();
        list<account>AcQuery=[select id, Name, (select id from contacts) from Account where id=:acc];
        for(account a:AcQuery){
            list<contact> cc =a.contacts;
            a.Total_Number_Of_Contacts__c = cc.size();
            
            Ac.add(a);
        }
       update Ac;  
    }

}