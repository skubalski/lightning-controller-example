/**
 * Created by sebastiankubalski on 11/07/2017.
 */

public with sharing class A17_ResponseWrapper {
    public Boolean isSuccess;
    public Object payload;
    public String errorMessage;
    public Datetime responseTime;

    public A17_ResponseWrapper(String errorMessage) {
        this.responseTime = Datetime.now();
        this.isSuccess = false;
        this.errorMessage = errorMessage;
    }

    public A17_ResponseWrapper(Object payload) {
        this.responseTime = Datetime.now();
        this.isSuccess = true;
        this.payload = payload;
    }
}