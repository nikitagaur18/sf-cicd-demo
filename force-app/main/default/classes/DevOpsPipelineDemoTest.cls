@isTest 
private class DevOpsPipelineDemoTest { 

    @isTest 
    static void testGetMessage() { 

        System.assertEquals('Updated workflow trigger', DevOpsPipelineDemo.getMessage()); 

    } 
}