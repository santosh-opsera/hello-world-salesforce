@isTest
private class HelloWorldTest {
    @isTest
    static void testCustomFieldsExist() {
        Account acc = new Account(Name = 'Test Account');
        insert acc;

        Account result = [
            SELECT Id, Name, Hello_World_Greeting__c, Test_2__c
            FROM Account
            WHERE Id = :acc.Id
        ];

        System.assertNotEquals(null, result, 'Account should be created');
        System.assertEquals('Test Account', result.Name, 'Name should match');
    }
}
