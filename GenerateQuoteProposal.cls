public with sharing class GenerateQuoteProposal {
/*
ExecuteAnonymous the following code in developer console
QuoteProposalModel model = new QuoteProposalModel();
model.quoteId = 'Add your quote ID'; //
model.templateId = 'Add your SBQQ QuoteTemplate ID';
GenerateQuoteProposal proposalGenerator = new GenerateQuoteProposal();
String jobId = proposalGenerator.save(model);
System.debug('This is jobID === ' + jobId);
*/
    public String save(QuoteProposalModel context) {
        return SBQQ.ServiceRouter.save('SBQQ.QuoteDocumentAPI.Save', JSON.serialize(context));
    }
}