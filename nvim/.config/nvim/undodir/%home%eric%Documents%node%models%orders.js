Vim�UnDo� ���1���~9��ԉ[�} ���D��R�      !module.exports = mongoose.model()             %       %   %   %    `,K�    _�                             ����                                                                                                                                                                                                                                                                                                                                                             `,J�     �                   �               5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `,J�     �                 const userSchema = new Schema({5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `,K     �                  const orderSchema = new Schema({5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `,K     �             �                 "const orderSchema = new Schema({})5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `,K     �               	product5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `,K     �      	   
    �      	   	    �      	         	products: [{}]5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `,K%     �                 5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                             `,K(     �      	   
    �      	   
      		productData: {type}5�_�      
           	   	       ����                                                                                                                                                                                                                                                                                                                                                             `,K/     �      
         		productData: {type: Object}5�_�   	              
   	   %    ����                                                                                                                                                                                                                                                                                                                                                             `,K5     �   	            		�   	          5�_�   
                 	   	    ����                                                                                                                                                                                                                                                                                                                                                             `,K<     �      
         '		productData: {type: Object, required}5�_�                    
   
    ����                                                                                                                                                                                                                                                                                                                                                             `,K>    �   	            
		quantity5�_�                    
       ����                                                                                                                                                                                                                                                                                                                                                             `,KU    �   	            		quantity: Number5�_�                    	   #    ����                                                                                                                                                                                                                                                                                                                                                             `,Kb     �      
         #		product: {type: Object, required}5�_�                    	   #    ����                                                                                                                                                                                                                                                                                                                                                             `,Kc     �      
         $		product: {type: Object, required},5�_�                    	   #    ����                                                                                                                                                                                                                                                                                                                                                             `,Ke    �                      %const mongoose = require("mongoose");       const Schema = mongoose.Schema;        const orderSchema = new Schema({   	products: [{       $		product: {type: Object, required},   $		quantity: {type: Number, required}   	}]   })5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `,Ki     �               	�             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `,Kn     �             �               		user: {}5�_�                       	    ����                                                                                                                                                                                                                                                                                                                                                             `,Kq     �             �               
		name: {}5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `,Kw     �               			type: String,5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `,Kz    �               	user: {   			name: {   			type: String, required   		}   	}5�_�                       
    ����                                                                                                                                                                                                                                                                                                                                                             `,K�     �               		�             5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `,K�     �             �               		userId: {}5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `,K�     �               			type: Schema.Object5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `,K�     �               			type: Schema.Types.ObjectId5�_�                          ����                                                                                                                                                                                                                                                                                                                               *          7       v   @    `,K�     �               			type: Schema.Types.ObjectId,5�_�                       (    ����                                                                                                                                                                                                                                                                                                                               *          7       v   @    `,K�     �               (			type: Schema.Types.ObjectId,required,5�_�                       .    ����                                                                                                                                                                                                                                                                                                                               *          7       v   @    `,K�    �               .			type: Schema.Types.ObjectId,required: true,5�_�                           ����                                                                                                                                                                                                                                                                                                                               *          7       v   @    `,K�     �               		}5�_�                            ����                                                                                                                                                                                                                                                                                                                               *          7       v   @    `,K�    �               		userId: {   8			type: Schema.Types.ObjectId,required: true,ref:'User'   		},5�_�      !                       ����                                                                                                                                                                                                                                                                                                                               *          7       v   @    `,K�     �               5�_�       "           !           ����                                                                                                                                                                                                                                                                                                                               *          7       v   @    `,K�     �                  5�_�   !   #           "           ����                                                                                                                                                                                                                                                                                                                               *          7       v   @    `,K�     �                 !module.exports = mongoose.model()5�_�   "   $           #      %    ����                                                                                                                                                                                                                                                                                                                               *          7       v   @    `,K�    �                 (module.exports = mongoose.model('Order')5�_�   #   %           $      '    ����                                                                                                                                                                                                                                                                                                                               *          7       v   @    `,K�     �                 )module.exports = mongoose.model("Order");5�_�   $               %      (    ����                                                                                                                                                                                                                                                                                                                               *          7       v   @    `,K�    �                 *module.exports = mongoose.model("Order",);5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             `,K�     �               W			type: Schema.Types.ObjectId, require(["#dependencies1"], function (#dependencies2) {   				return TARGET;   			});5��