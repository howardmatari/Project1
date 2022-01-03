import { LightningElement } from 'lwc';
export default class HelloTutor extends LightningElement {
  greeting = 'Tutor';
  changeHandler(event) {
    this.greeting = event.target.value;
  }
}