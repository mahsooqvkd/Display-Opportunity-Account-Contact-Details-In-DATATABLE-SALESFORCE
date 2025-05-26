public with sharing class OpportunityDataController {
     @AuraEnabled(cacheable=true)
//add some start comments
    public static List<Opportunity> ShowOpportunityFields() {
        return [SELECT Id, Name , Description, CloseDate,  Account_Name__c, Recent_Contact_Name__c, Recent_Contact_Email__c, Recent_Contact_No__c FROM Opportunity WHERE CreatedDate = TODAY LIMIT 5];
    }

//adding some end comments

