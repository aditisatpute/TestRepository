@isTest
public class TestClass {
    static testMethod void testController() {
        Contact contactInsatnce = new Contact(LastName = 'Test');
        insert contactInsatnce;
        System.assertEquals(1, TestController.fetchContactList().size());
    }
    
    static testMethod void testObject2Trigger() {
        Account acc = new Account(Name = 'Test Account');
        insert acc;
        System.assert(acc.Id != null);
        
        Custom_Object_2__c instance = new Custom_Object_2__c (Name='test', Account__c = acc.Id);
        insert instance;
    } 

}