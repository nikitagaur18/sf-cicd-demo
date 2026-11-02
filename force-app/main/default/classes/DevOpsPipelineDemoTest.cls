@isTest 
private class DevOpsPipelineDemoTest { 

    @isTest 
    static void testGetMessage() { 

        System.assertEquals('Pipleine update test with no package', DevOpsPipelineDemo.getMessage()); 

    } 
}