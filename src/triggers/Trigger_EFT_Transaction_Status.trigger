//QUE5:-Address did Not Verify (SalesHeader and EFT Object)
Trigger Trigger_EFT_Transaction_Status on EFT_Transaction_Status__c (after insert,before update)
{
    Trigger_EFT_Transaction_Status_Handler eft = new Trigger_EFT_Transaction_Status_Handler();
    if(Trigger.isAfter && Trigger.isInsert)
    {
        eft.eftTransaction();
    }
    else if(Trigger.isbefore && Trigger.isUpdate)
    {
        eft.eftTransaction();
    }
} 
//done