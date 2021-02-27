Vim�UnDo� �e���byľ8�@�-����;DR��7�Aɻ   y                                  `2u    _�                     )       ����                                                                                                                                                                                                                                                                                                                                                             `2n�     �   )   +   }      		  �   )   +   |    5�_�                    *       ����                                                                                                                                                                                                                                                                                                                                                             `2n�    �   )   +   }      		csrfToken: req.csrfToken5�_�                    )   /    ����                                                                                                                                                                                                                                                                                                                                                             `2n�     �   (   *   }      /        isAuthenticated: req.session.isLoggedIn5�_�                    )   /    ����                                                                                                                                                                                                                                                                                                                                                             `2n�    �       �   }   |   -const Product = require('../models/product');   )const Order = require('../models/order');       +exports.getProducts = (req, res, next) => {     Product.find()       .then(products => {         console.log(products);   '      res.render('shop/product-list', {           prods: products,   "        pageTitle: 'All Products',           path: '/products',   /        isAuthenticated: req.session.isLoggedIn   	      });       })       .catch(err => {         console.log(err);       });   };       *exports.getProduct = (req, res, next) => {   &  const prodId = req.params.productId;     Product.findById(prodId)       .then(product => {   )      res.render('shop/product-detail', {           product: product,   !        pageTitle: product.title,           path: '/products',   /        isAuthenticated: req.session.isLoggedIn   	      });       })   $    .catch(err => console.log(err));   };       (exports.getIndex = (req, res, next) => {     Product.find()       .then(products => {          res.render('shop/index', {           prods: products,           pageTitle: 'Shop',           path: '/',   0        isAuthenticated: req.session.isLoggedIn,   		csrfToken: req.csrfToken()   	      });       })       .catch(err => {         console.log(err);       });   };       'exports.getCart = (req, res, next) => {   
  req.user   %    .populate('cart.items.productId')       .execPopulate()       .then(user => {   '      const products = user.cart.items;         res.render('shop/cart', {           path: '/cart',           pageTitle: 'Your Cart',           products: products,   /        isAuthenticated: req.session.isLoggedIn   	      });       })   $    .catch(err => console.log(err));   };       (exports.postCart = (req, res, next) => {   $  const prodId = req.body.productId;     Product.findById(prodId)       .then(product => {   )      return req.user.addToCart(product);       })       .then(result => {         console.log(result);         res.redirect('/cart');       });   };       5exports.postCartDeleteProduct = (req, res, next) => {   $  const prodId = req.body.productId;   
  req.user       .removeFromCart(prodId)       .then(result => {         res.redirect('/cart');       })   $    .catch(err => console.log(err));   };       )exports.postOrder = (req, res, next) => {   
  req.user   %    .populate('cart.items.productId')       .execPopulate()       .then(user => {   1      const products = user.cart.items.map(i => {   J        return { quantity: i.quantity, product: { ...i.productId._doc } };   	      });         const order = new Order({           user: {             name: req.user.name,             userId: req.user   
        },           products: products   	      });         return order.save();       })       .then(result => {   "      return req.user.clearCart();       })       .then(() => {         res.redirect('/orders');       })   $    .catch(err => console.log(err));   };       )exports.getOrders = (req, res, next) => {   -  Order.find({ 'user.userId': req.user._id })       .then(orders => {   !      res.render('shop/orders', {           path: '/orders',   !        pageTitle: 'Your Orders',           orders: orders,   /        isAuthenticated: req.session.isLoggedIn   	      });       })   $    .catch(err => console.log(err));5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             `2pZ    �                "            console.log(products);5�_�                    (   *    ����                                                                                                                                                                                                                                                                                                                                                             `2p�    �   '   (          8                isAuthenticated: req.session.isLoggedIn,   +                csrfToken: req.csrfToken(),5�_�      	             b       ����                                                                                                                                                                                                                                                                                                                                                             `2t'     �   a   c   }      (                    name: req.user.name,5�_�      
           	   b   $    ����                                                                                                                                                                                                                                                                                                                                                             `2t.    �   a   c   }      )                    email: req.user.name,5�_�   	              
          ����                                                                                                                                                                                                                                                                                                                                                             `2u     �   
             8                isAuthenticated: req.session.isLoggedIn,5�_�   
                        ����                                                                                                                                                                                                                                                                                                                                                             `2u     �                8                isAuthenticated: req.session.isLoggedIn,5�_�                    7       ����                                                                                                                                                                                                                                                                                                                                                             `2u     �   6   7          8                isAuthenticated: req.session.isLoggedIn,5�_�                     v       ����                                                                                                                                                                                                                                                                                                                                                             `2u    �   u   v          8                isAuthenticated: req.session.isLoggedIn,5�_�                    (       ����                                                                                                                                                                                                                                                                                                                                                             `2p�    �   '   )   }                  );5��