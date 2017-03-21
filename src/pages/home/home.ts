import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';
import  * as template from './home.pug';

@Component({
  selector: 'page-home',
  template: template
})
export class HomePage {

  constructor(public navCtrl: NavController) {
  }

}
