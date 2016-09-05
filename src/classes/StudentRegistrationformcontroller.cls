public with sharing class StudentRegistrationformcontroller {
     public String currentLanguage {get; set;}
    public StudentRegistrationformcontroller(ApexPages.StandardController controller) {
    currentLanguage =  UserInfo.getLanguage();

    }
     public void changeLanguage() {
        //get current user
        
        String currentuserId = UserInfo.getUserId();
        User currentUserInfo = [select LanguageLocaleKey from User where Id = :UserInfo.getUserId()];
        currentUserInfo.LanguageLocaleKey = 'fr';
        update currentUserInfo;
    }
    

}