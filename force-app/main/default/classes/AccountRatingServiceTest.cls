@IsTest
private class AccountRatingServiceTest {

    @IsTest
    static void ratesHotWarmAndCold() {
        Assert.areEqual('Hot',  AccountRatingService.getRating(25000000), 'Revenue >= 10M should be Hot');
        Assert.areEqual('Warm', AccountRatingService.getRating(5000000),  'Revenue >= 1M should be Warm');
        Assert.areEqual('Cold', AccountRatingService.getRating(50000),    'Revenue < 1M should be Cold');
        Assert.areEqual('Cold', AccountRatingService.getRating(null),     'No revenue should be Cold');
    }

    @IsTest
    static void ratesAListOfAccounts() {
        List<Account> accounts = new List<Account>{
            new Account(Name = 'Big Co',   AnnualRevenue = 20000000),
            new Account(Name = 'Mid Co',   AnnualRevenue = 2000000),
            new Account(Name = 'Small Co', AnnualRevenue = 10000)
        };

        Test.startTest();
        AccountRatingService.rateAccounts(accounts);
        Test.stopTest();

        Assert.areEqual('Hot',  accounts[0].Rating);
        Assert.areEqual('Warm', accounts[1].Rating);
        Assert.areEqual('Cold', accounts[2].Rating);
    }
}