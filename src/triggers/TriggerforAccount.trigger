//Question 3:-clone the record done working fine
Trigger TriggerforAccount on Account (after insert) {
    TriggerforAccountHandler accobj = new TriggerforAccountHandler();
   if(Trigger.isAfter && Trigger.isInsert)
   {
       accobj.accountHandling(Trigger.new);
   }
}
//done