public with sharing class Account_Details_Handler {

    //getter and setter for Attachment
 

   public Account_Details_Handler(ApexPages.StandardController controller) 
   {
        
   }
   public String IdChoosen{get; set;}

   public pageReference deleteLink()
     {
        Attachment AttachmenttoDel = new Attachment(id = IdChoosen);
        delete AttachmenttoDel;
        return null;
     }
  
   public PageReference dosubmit()
   {
        system.debug('test');
        PageReference pr = new PageReference('http://login.salesforce.com/apex/Account_Attachment'); 
        pr.setRedirect(true);
        return pr;
    }

}