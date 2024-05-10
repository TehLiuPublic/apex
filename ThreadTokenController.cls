public class ThreadTokenController {
    public String threadToken{get;set;}

    public void setemailToken(String caseId) {        
    // Need to check for NULL otherwise email template will throw warning message when you view it in the browser  
        this.threadToken = caseId != NULL ? EmailMessages.getFormattedThreadingToken((Id)caseId) : NULL;
    }
    
    public String getemailToken() {
        return this.threadToken;
    }    
}
