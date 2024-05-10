public class ThreadTokenController {
    public String threadToken{get;set;}

    public void setemailToken(String caseId) {        
        this.threadToken = caseId != NULL ? EmailMessages.getFormattedThreadingToken((Id)caseId) : NULL;
    }
    
    public String getemailToken() {
        return this.threadToken;
    }    
}