Vim�UnDo� [�����Ҷ{?�d�f���b!-�c0�G�   :           userService   %         >       >   >   >    `:6�    _�                     7        ����                                                                                                                                                                                                                                                                                                                                                             _�    �       7   7   6   =import { Component, ViewChild, OnInit } from '@angular/core';   )import { Router } from '@angular/router';   =import { IonSegment, ToastController } from '@ionic/angular';   &import { User } from '../models/user';   7import { UserService } from '../services/user.service';       @Component({   	selector: 'app-listaUsuarios',   *	templateUrl: './listaUsuarios.page.html',   *	styleUrls: ['./listaUsuarios.page.scss'],   })   export class userListPage {   	users = [];   
	rol = '';   	user = new User();   ,	@ViewChild(IonSegment) segment: IonSegment;       	constructor(   		private router: Router,   "		public userService: UserService,   $		private toastCtrl: ToastController   	) {   8		//Suscribirse a la lista de users mediante el servicio   		userService   			.getUsers()   			.valueChanges()   			.subscribe((u) => {   				this.users = u;   			});   	}       	logout() {   "		this.router.navigate(['login']);   	}   	public crearUsuario() {   -		this.router.navigate(['detalleUsuario/0']);   	}        	public goToDetalleUsuario(id) {   1		this.router.navigate(['detalleUsuario/' + id]);   	}       	public goToSearch() {   '		this.router.navigate(['searchbar/']);   	}       	removeUser(id) {   		this.user.id = id;   )		this.userService.removeUser(this.user);   	}       	segmentChanged(event) {    		this.rol = event.detail.value;   	}5�_�                             ����                                                                                                                                                                                                                                                                                                                                       "          V       _�Z�     �   !   #              }�       "          (        this.router.navigate(["login"]);�      !              logout() {5�_�                             ����                                                                                                                                                                                                                                                                                                                                       "          V       _�Z�    �       "   7      *        //this.router.navigate(["login"]);5�_�                             ����                                                                                                                                                                                                                                                                                                                                       "          V       _�Z�    �                     //logout() {   &    //this.router.navigate(["login"]);       //}5�_�                    ,       ����                                                                                                                                                                                                                                                                                                                                                  V       _�[     �   ,   /   4    �   ,   -   4    5�_�                    -   "    ����                                                                                                                                                                                                                                                                                                                                                  V       _�[     �   ,   .   6      ,        this.reg.action = "REMOVE:paciente";5�_�                       *    ����                                                                                                                                                                                                                                                                                                                                                  V       _�[(     �         6      *        private toastCtrl: ToastController5�_�      	                 *    ����                                                                                                                                                                                                                                                                                                                                                  V       _�[*     �         6    �         6    5�_�      
           	      &    ����                                                                                                                                                                                                                                                                                                                            !          !          V       _�[,     �         7    �         7      &        private logService: LogService5�_�   	              
      %    ����                                                                                                                                                                                                                                                                                                                            "          "          V       _�[.    �         8      3import {LogService} from '../services/log.service';5�_�   
                        ����                                                                                                                                                                                                                                                                                                                            "          "          V       _�[?    �         8    �         8    5�_�                           ����                                                                                                                                                                                                                                                                                                                            #          #          V       _�[G     �         9    �         9          reg = new RegistroLog();5�_�                           ����                                                                                                                                                                                                                                                                                                                            $          $          V       _�[I    �         :      2import {RegistroLog} from '../models/registroLog';5�_�                    ,       ����                                                                                                                                                                                                                                                                                                                            $          $          V       _�[[    �   ,   /   :    �   ,   -   :    5�_�                    )       ����                                                                                                                                                                                                                                                                                                                            $          $          V       _�[l     �   (   +   <    �   )   *   <    5�_�                    )        ����                                                                                                                                                                                                                                                                                                                            $          $          V       _�[u    �   (   *   >      1        this.reg.action = "GOTO:detallePaciente";5�_�                            ����                                                                                                                                                                                                                                                                                                                                      +   3       V   3    `-o     �       "   ?      		�       "   >    5�_�                    !       ����                                                                                                                                                                                                                                                                                                                                      ,   3       V   3    `-w     �       "   ?      		this.users.forEach5�_�                    !       ����                                                                                                                                                                                                                                                                                                                            !          !          v   ,    `-{     �       "   ?       		this.users.forEach(callbackfn)5�_�                    !       ����                                                                                                                                                                                                                                                                                                                            !          !          v   ,    `-|     �       "   ?      		this.users.forEach(())5�_�                    !       ����                                                                                                                                                                                                                                                                                                                            !          !          v   ,    `-~     �       "   ?      		this.users.forEach((us))5�_�                    !   '    ����                                                                                                                                                                                                                                                                                                                            !          !          v   ,    `-�     �       "   ?      )		this.users.forEach((us)=>{console.log})5�_�                    !   (    ����                                                                                                                                                                                                                                                                                                                            !          !          v   ,    `-�     �       "   ?      +		this.users.forEach((us)=>{console.log()})5�_�                    !   )    ����                                                                                                                                                                                                                                                                                                                            !          !          v   ,    `-�   	 �       $   ?      -		this.users.forEach((us)=>{console.log(us)})5�_�                    !       ����                                                                                                                                                                                                                                                                                                                            #          !          V       `-�     �       !          ,                this.users.forEach((us) => {   $                    console.log(us);                   });5�_�                    (   "    ����                                                                                                                                                                                                                                                                                                                            !          !          V       `-�     �   (   *   ?      	    �   (   *   >    5�_�                    )       ����                                                                                                                                                                                                                                                                                                                            !          !          V       `-�     �   (   *   ?      	    console.log("yes"5�_�                    )       ����                                                                                                                                                                                                                                                                                                                            !          !          V       `-�   
 �   (   *   ?      	    console.log("yes")5�_�                    )       ����                                                                                                                                                                                                                                                                                                                            !          !          V       `-�    �   (   )                  console.log("yes");5�_�                    $        ����                                                                                                                                                                                                                                                                                                                            $          &          V       `��     �   %   '              }�   $   &          3        this.router.navigate(["detalleUsuario/0"]);�   #   %              public crearUsuario() {5�_�                     &       ����                                                                                                                                                                                                                                                                                                                            $          &          V       `��    �   $   &   >      5        //this.router.navigate(["detalleUsuario/0"]);5�_�      !               $       ����                                                                                                                                                                                                                                                                                                                                                             `W     �   #   $              //public crearUsuario() {5�_�       "           !   $       ����                                                                                                                                                                                                                                                                                                                                                             `W     �   #   $          1    //this.router.navigate(["detalleUsuario/0"]);5�_�   !   #           "   $       ����                                                                                                                                                                                                                                                                                                                                                             `W     �   #   $              //}5�_�   "   $           #   $        ����                                                                                                                                                                                                                                                                                                                                                             `W     �   #   $           5�_�   #   %           $   $       ����                                                                                                                                                                                                                                                                                                                                                             `W%     �   #   $          #    public goToDetalleUsuario(id) {   0        this.reg.action = "GOTO:detalleUsuario";   )        this.logService.addReg(this.reg);   7        this.router.navigate(["detalleUsuario/" + id]);       }5�_�   $   &           %           ����                                                                                                                                                                                                                                                                                                                                                             `WK    �   #   $   5       5�_�   %   '           &   $        ����                                                                                                                                                                                                                                                                                                                                                             `WP     �   #   $              public goToSearch() {   +        this.reg.action = "GOTO:searchbar";   )        this.logService.addReg(this.reg);   -        this.router.navigate(["searchbar/"]);       }5�_�   &   (           '   $        ����                                                                                                                                                                                                                                                                                                                                                             `WR    �   #   $           5�_�   '   )           (      &    ����                                                                                                                                                                                                                                                                                                                                                             `Wc     �         .      &        private logService: LogService5�_�   (   *           )      '    ����                                                                                                                                                                                                                                                                                                                                                             `Wc     �         .      '        private logService: LogService,5�_�   )   +           *          ����                                                                                                                                                                                                                                                                                                                                                             `Wj     �      	   /    5�_�   *   ,           +          ����                                                                                                                                                                                                                                                                                                                                                             `Wl    �         0      ?import {NavigatorService} from '../services/navigator.service';       @Component({   "    selector: "app-listaUsuarios",   -    templateUrl: "./listaUsuarios.page.html",   -    styleUrls: ["./listaUsuarios.page.scss"],   })   export class userListPage {       users = [];       rol = "";       user = new User();       reg = new RegistroLog();   /    @ViewChild(IonSegment) segment: IonSegment;           constructor(           private router: Router,   (        public userService: UserService,   +        private toastCtrl: ToastController,   '        private logService: LogService,   		public nav: NavigatorService5�_�   +   -           ,          ����                                                                                                                                                                                                                                                                                                                                                             `W�     �                        private router: Router,5�_�   ,   .           -          ����                                                                                                                                                                                                                                                                                                                                                             `W�    �                +        private toastCtrl: ToastController,5�_�   -   /           .   !       ����                                                                                                                                                                                                                                                                                                                                                             `��     �   !   #   /      			�   !   #   .    5�_�   .   0           /           ����                                                                                                                                                                                                                                                                                                                                                             `��     �       "   0      				�       "   /    5�_�   /   1           0   !       ����                                                                                                                                                                                                                                                                                                                            !          !          v   #    `��     �       "   0      				u.forEach(callbackfn)5�_�   0   2           1   !       ����                                                                                                                                                                                                                                                                                                                            !          !          v   #    `��     �   !   #   1    �       #   0      				u.forEach(user=>{})5�_�   1   3           2   "       ����                                                                                                                                                                                                                                                                                                                            !          !          v   #    `��     �   !   #   2      					if(user.nombre === 'test')5�_�   2   4           3   "   +    ����                                                                                                                                                                                                                                                                                                                            !          !          v   #    `��     �   !   #   2      +					if(user.nombre === 'test') console.log5�_�   3   5           4   "   ,    ����                                                                                                                                                                                                                                                                                                                            !          !          v   #    `��     �   !   #   2      -					if(user.nombre === 'test') console.log()5�_�   4   6           5   "       ����                                                                                                                                                                                                                                                                                                                                       "          V       ` 5     �   !   #   2      5					if(user.nombre === 'test') console.log(user.rol)5�_�   5   7           6   "       ����                                                                                                                                                                                                                                                                                                                                       "          V       ` :     �   !   #   2      					console.log5�_�   6   8           7   "       ����                                                                                                                                                                                                                                                                                                                                       "          V       ` ;     �   !   #   2      					console.log()5�_�   7   9           8   "       ����                                                                                                                                                                                                                                                                                                                                       "          V       ` ?     �   !   #   2      					console.log(u)5�_�   8   :           9   "       ����                                                                                                                                                                                                                                                                                                                                       "          V       ` A    �       %   2      				u.forEach(user=>{   					console.log(user)   				})               });   			5�_�   9   ;           :   !        ����                                                                                                                                                                                                                                                                                                                            !          #          V       `
�    �       !          %                u.forEach((user) => {   &                    console.log(user);                   });5�_�   :   <           ;   #        ����                                                                                                                                                                                                                                                                                                                                                             `:6�     �   #   /   .    �   #   $   .    5�_�   ;   =           <   .       ����                                                                                                                                                                                                                                                                                                                                                             `:6�     �   .   0   9    5�_�   <   >           =   %        ����                                                                                                                                                                                                                                                                                                                            %          *          V       `:6�     �   $   +   4    �   %   &   4    �   $   %                  this.contactService               .getMessages()               .valueChanges()               .subscribe((m) => {   "                this.messages = m;               });5�_�   =               >   %       ����                                                                                                                                                                                                                                                                                                                            %           *          V       `:6�    �   $   &   :              userService5��