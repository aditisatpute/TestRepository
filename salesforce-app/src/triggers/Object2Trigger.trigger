/**
 * Add comment by other developer on child_existing brnach
 */
trigger Object2Trigger on Custom_Object_2__c (before insert) {
    for (Custom_Object_2__c  objectInstance : Trigger.new) {
        if (objectInstance.Account__c != null) {
            objectInstance.Date__c = System.today();
        }
    }

}
