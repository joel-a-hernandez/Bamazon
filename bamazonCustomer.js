var mysql = require("mysql");
var inquirer = require("inquirer");
require("dotenv").config();

var connection = mysql.createConnection({
    host: "localhost",
  
    // Your port; if not 3306
    port: 3306,
  
    // Your username
    user: "root",
  
    // Your password
    password: process.env.DB_password,
    database: "bamazon"
  });

  connection.connect();

  start();

  function start (){
    connection.query('SELECT * FROM products', function (err, res) {
        if (err) throw err;
        // console.log(res);
        res.forEach(row => {
            console.log(`Id: ${row.id} Name: ${row.product_name} Price: ${row.price}\n` )
        });
        askQuestions();

        // connection.end();
    });
}

function askQuestions() {
    inquirer.prompt([
        {
            message: "Please type in the product id you would like to order.",
            type: "input",
            name: "prodId"
        },
        {
            message: "How many of this item would you like to purchase?",
            type: "input",
            name: "prodQty"
        }
    ]).then(function (ans) {
        var prodId = ans.prodId;
        var prodQty = ans.prodQty;
        withdrawProd(prodId, prodQty);
    });
}

function withdrawProd(prodId, prodQty) {
    connection.query('SELECT * FROM products', function (error, res) {
      if (error) throw error;
      var prod;
      // console.log(res);
      for(var i = 0; i < res.length; i++){
        if(res[i].id == prodId){
          prod = res[i]
        }
      }
      console.log(prod, "\nProduct was found!")
        if(prod.stock_quantity >= prodQty){
          orderComplete(prod, prodId, prodQty)
          connection.end();
        }else{
          console.log("Sorry the order has been canceled, there was insuffecient stock of this purchase.")
          connection.end()
        }
    })
  };

  function orderComplete (prodObj, prodId, prodQty) {
    var newQuantity = prodObj.stock_quantity - prodQty;
    var productSales = prodObj.price * prodQty;
    var queryOne = "UPDATE products SET stock_quantity = ? where ?";
    var queryTwo = "UPDATE products SET product_sales = ? where ?";
    console.log(`New Quanitity: ${newQuantity} \nYour total: ${productSales}`);
    
    connection.query(queryOne,[newQuantity, {id: prodId}], function (error, res) {
    })
    connection.query(queryTwo, [productSales, {id: prodId }], function (error, res) {
    })
  }