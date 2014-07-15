var accounts = {
  checking: {
    balance: 0,
    deposit: function (amount) {
      this.balance = this.balance + amount;
      return this.balance;
    },
    withdraw: function (amount) {
      if ((this.balance - amount) > 0) {
        this.balance = this.balance - amount;
      };
      return this.balance;
    }
  },
  savings: {
    balance: 0,
    deposit: function (amount) {
      this.balance = this.balance + amount;
      return this.balance;
    },
    withdraw: function (amount) {
      if ((this.balance - amount) > 0) {
        this.balance = this.balance - amount;
      };
      return this.balance;
    }
  }
};

var turnRed = function (account, object) {
  if (account > 0) {
    object.className = 'balance account';
  } else if (account === 0) {
    object.className = 'balance zero';
  }
};

var checkingDisplay = document.getElementById('balance1');
var checkingInput = document.getElementById('checkingAmount');
var cDepositButton = document.getElementById('checkingDeposit');
var cWithdrawButton = document.getElementById('checkingWithdraw');
var savingsDisplay = document.getElementById('balance2');
var savingsInput = document.getElementById('savingsAmount');
var sDepositButton = document.getElementById('savingsDeposit');
var sWithdrawButton = document.getElementById('savingsWithdraw');

var checkingInput = document.getElementById('checkingAmount');
var savingsInput = document.getElementById('savingsAmount');

var updateDisplay = function (object, newValue) {
  object.innerHTML = "$" + newValue;
};

var pushButton = function(e) {
  var button = e.target.id;
  var processInput = function (button) {    
    if (button === 'checkingDeposit') {
      var amount = parseInt(checkingInput.value);
      checkingInput.value = null;
      accounts.checking.deposit(amount);
      updateDisplay(checkingDisplay, accounts.checking.balance);
    } else if (button === 'checkingWithdraw') {
      var amount = parseInt(checkingInput.value);
      checkingInput.value = null;
      accounts.checking.withdraw(amount);
      updateDisplay(checkingDisplay, accounts.checking.balance);
    } else if (button === 'savingsDeposit') {
      var amount = parseInt(savingsInput.value);
      savingsInput.value = null;
      accounts.savings.deposit(amount);
      updateDisplay(savingsDisplay, accounts.savings.balance);
    } else if (button === 'savingsWithdraw') {
      var amount = parseInt(savingsInput.value);
      savingsInput.value = null;
      accounts.savings.withdraw(amount);
      updateDisplay(savingsDisplay, accounts.savings.balance);
    };
  };
  processInput(button);  
};

// tracking money

cDepositButton.addEventListener('click', pushButton);
cWithdrawButton.addEventListener('click', pushButton);
sDepositButton.addEventListener('click', pushButton);
sWithdrawButton.addEventListener('click', pushButton);

turnRed(accounts.checking.balance, checkingDisplay);
turnRed(accounts.savings.balance, savingsDisplay);