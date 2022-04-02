public with sharing class GreetingComponentController {
    
    @AuraEnabled(cacheable=true)
    public static String getGreetingMessage() {
        // 現在時刻を取得
        Datetime currentDatetime = Datetime.now();
        Integer currentHour = currentDatetime.hour();

        String greetings;
        if (5 <= currentHour && currentHour <= 11) {
            greetings = 'おはようございます！';
        } else if (12 <= currentHour && currentHour <= 17) {
            greetings = 'こんにちは！';
        } else {
            greetings = 'こんばんは！';
        }
        return greetings + ' ' + UserInfo.getLastName() + ' ' + UserInfo.getFirstName();
    }
}
