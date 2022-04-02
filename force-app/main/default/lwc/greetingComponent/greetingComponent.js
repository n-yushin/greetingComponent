import { LightningElement, track } from 'lwc';
import getGreetingMessage from '@salesforce/apex/GreetingComponentController.getGreetingMessage'

export default class GreetingComponent extends LightningElement {

    greetingMessage;
    connectedCallback() {
        getGreetingMessage().then((result) => {
            this.greetingMessage = result;
        })
    }
}