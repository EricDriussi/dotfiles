Vim�UnDo� �<��!{]�?���|,\Ǣ��{<T��O���   8               .set(signin);   6                          _��    _�                             ����                                                                                                                                                                                                                                                                                                                                                             _�g    �       8   8   7   +import { Injectable } from '@angular/core';   =import { AngularFireDatabase } from '@angular/fire/database';   -import { UserService } from './user.service';       @Injectable({   	providedIn: 'root',   })   export class LogService {   	constructor(   #		public FBDB: AngularFireDatabase,   !		public userService: UserService   	) {}       	public addReg(signin) {   		let date: Date = new Date();   		signin.timeDate = date;   -		signin.user = this.userService.currentUser;   		this.FBDB.database   			.ref(   				'log/' +   					date.getDate() +   
					'-' +   					date.getMonth() +   
					'-' +   					date.getFullYear() +   
					'_' +   					date.getHours() +   
					':' +   					date.getMinutes() +   
					':' +   					date.getSeconds()   			)   			.set(signin);   	}   	public addErr(signin) {   		let date: Date = new Date();   		signin.timeDate = date;   -		signin.user = this.userService.currentUser;   		this.FBDB.database   			.ref(   				'err_log/' +   					date.getDate() +   
					'-' +   					date.getMonth() +   
					'-' +   					date.getFullYear() +   
					'_' +   					date.getHours() +   
					':' +   					date.getMinutes() +   
					':' +   					date.getSeconds()   			)   			.set(signin);   	}5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _��     �                    public addReg(signin) {5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _��     �         8              signin.timeDate = date;5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _��     �         8      3        signin.user = this.userService.currentUser;5�_�                    #       ����                                                                                                                                                                                                                                                                                                                                                             _��     �   "   $   8          public addErr(signin) {5�_�      	              %       ����                                                                                                                                                                                                                                                                                                                                                             _��     �   $   &   8              signin.timeDate = date;5�_�      
          	   &       ����                                                                                                                                                                                                                                                                                                                                                             _��    �   %   '   8      3        signin.user = this.userService.currentUser;5�_�   	              
   !       ����                                                                                                                                                                                                                                                                                                                                                             _��     �       "   8                  .set(signin);5�_�   
                  6       ����                                                                                                                                                                                                                                                                                                                                                             _��    �   5   7   8                  .set(signin);5�_�              	      &       ����                                                                                                                                                                                                                                                                                                                                                             _��     �   &   '   8      	�   &   (   9      	g5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             _��     �         8          public addReg(log) {5��