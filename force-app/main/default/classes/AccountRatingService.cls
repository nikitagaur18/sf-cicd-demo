public with sharing class AccountRatingService {

    public static final Decimal HOT_THRESHOLD  = 10000000;
    public static final Decimal WARM_THRESHOLD = 1000000;

    public static String getRating(Decimal annualRevenue) {
        if (annualRevenue == null) {
            return 'Cold';
        }
        if (annualRevenue >= HOT_THRESHOLD) {
            return 'Hot';
        }
        if (annualRevenue >= WARM_THRESHOLD) {
            return 'Warm';
        }
        return 'Cold';
    }

    public static void rateAccounts(List<Account> accounts) {
        for (Account acc : accounts) {
            acc.Rating = getRating(acc.AnnualRevenue);
        }
    }
}