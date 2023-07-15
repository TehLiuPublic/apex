public with sharing class GenerateQuoteProposal {
/*
ExecuteAnonymous the following code in developer console
https://developer.salesforce.com/docs/atlas.en-us.cpq_dev_api.meta/cpq_dev_api/cpq_api_quoteproposal_model.htm
QuoteProposalModel model = new QuoteProposalModel();
    model.quoteId = 'Add your quote ID';  // Required
    model.templateId = 'Add your SBQQ QuoteTemplate ID'; // Required

    model.outputFormat = 'Add pdf or MS Word'; // Optional. Accepted values are pdf or MS Word
    model.language = 'The language code. Defaults to en_US'; //Optional. Accepted values en_US, nl_NL, de_DE, da_DK, sv_SE, etc
    model.paperSize = 'Add your value here'; // Optional. Accepted values are Default, Letter, Legal, A4
    model.name = 'Give a name or take default value QuoteNumber-YYYYMMDD-XXXX'; // This field is optional
    
GenerateQuoteProposal proposalGenerator = new GenerateQuoteProposal();
String jobId = proposalGenerator.save(model);
*/
    public String save(QuoteProposalModel context) {
        return SBQQ.ServiceRouter.save('SBQQ.QuoteDocumentAPI.Save', JSON.serialize(context));
    }
}
