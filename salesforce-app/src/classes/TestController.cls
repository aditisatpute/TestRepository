public with sharing class TestController {
    @RemoteAction
    public static List<Contact> fetchContactList() {
        return [
            SELECT
                Id,
                Name,
                Phone,
                RegistrationDate__c
            FROM
                Contact
        ];
    }
}