Vim�UnDo� ��C�d}^��o�X<��:N����� ��J              private router: Router                             _�+�    _�                             ����                                                                                                                                                                                                                                                                                                                                                             _�+7     �                    private statusBar: StatusBar5�_�                       !    ����                                                                                                                                                                                                                                                                                                                                                             _�+8     �               !    private statusBar: StatusBar,5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _�+>     �             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _�+@    �                *import { Component } from '@angular/core';       *import { Platform } from '@ionic/angular';   ?import { SplashScreen } from '@ionic-native/splash-screen/ngx';   9import { StatusBar } from '@ionic-native/status-bar/ngx';   'import {Router} from '@angular/router';       @Component({     selector: 'app-root',   $  templateUrl: 'app.component.html',   #  styleUrls: ['app.component.scss']   })   export class AppComponent {     constructor(       private platform: Platform,   '    private splashScreen: SplashScreen,   !    private statusBar: StatusBar,       private router: Router     ) {       this.initializeApp();     }         initializeApp() {   &    this.platform.ready().then(() => {   $      this.statusBar.styleDefault();         this.splashScreen.hide();       });     }5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _�+�     �                       private router: Router5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             _�+�    �                       public  router: Router5��