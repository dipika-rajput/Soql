//Association between Contact and Account(Best Practice)
Trigger AssociationContactTri on Contact (before insert) {
    AssociationContactTriggerHandler conacc = new AssociationContactTriggerHandler();
   if(Trigger.isbefore )
   {
       if(Trigger.isinsert)
       {
        conacc.conaccAssociation(Trigger.new);
       }
   }
}