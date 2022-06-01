public class ContactTriggerHandler {
    public static void  ContactUpdateValidation1(list<Contact> cntTriggerNew,
    List<Contact> cntTriggerOld,
    Map<Id,Contact> cntTriggerNewMap,
    Map<Id,Contact> cntTriggerOldMap) {
        //.addError() is allowed in Trigger.NEW -- NOT in triger.old 
        for (contact eachContact : cntTriggerNew) {
           if (cntTriggerOldMap.get(eachContact.Id).LeadSource=='Partner Referral') {
               eachContact.addError('cannot update contact where lead source is Partner Referral');
           } 
        }
    }

    public static void ContactUpdateValidation2(list<Contact> cntTriggerNew,
    List<Contact> cntTriggerOld,
    Map<Id,Contact> cntTriggerNewMap,
    Map<Id,Contact> cntTriggerOldMap) {
        for (contact eachCnt : cntTriggerNew) {
            if (cntTriggerOldMap.get(eachCnt.Id).LeadSource!=eachCnt.LeadSource) {
                string customValidation=system.label.contactValidation2;
                eachCnt.LeadSource.addError(customValidation);
            }
            
        }
    }
}
