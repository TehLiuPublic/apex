public with sharing class GenerateQuoteProposal {
/*
ExecuteAnonymous the following code in developer console
https://developer.salesforce.com/docs/atlas.en-us.cpq_dev_api.meta/cpq_dev_api/cpq_api_quoteproposal_model.htm
QuoteProposalModel model = new QuoteProposalModel();
model.quoteId = 'Add your quote ID'; 
model.quoteId = 'Add your quote ID'; 
model.outputFormat = 'Add pdf or word'; 
model.language = 'The language code. Defaults to en_US';

model.templateId = 'Add your SBQQ QuoteTemplate ID';
GenerateQuoteProposal proposalGenerator = new GenerateQuoteProposal();
String jobId = proposalGenerator.save(model);
System.debug('This is jobID === ' + jobId);
*/
    public String save(QuoteProposalModel context) {
        return SBQQ.ServiceRouter.save('SBQQ.QuoteDocumentAPI.Save', JSON.serialize(context));
    }
}
