@isTest(seeAllData = False)
private class ThreadTokenControllerTest {

    @isTest static void testSetToken() {
        Id caseRecordId = TestUtility.getFakeId(Case.SObjectType);        
        ThreadTokenController tokenObj = new ThreadTokenController();
        tokenObj.setemailToken((String)caseRecordId);
        String token = tokenObj.getemailToken();
        System.assert(token.startsWithIgnoreCase('thread::'));
    }
}