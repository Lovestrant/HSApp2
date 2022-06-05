import 'package:flutter/material.dart';
import 'package:hsapp2/Views/StatefulWidgets/Auth/BaseLogin.dart';
import 'package:hsapp2/Views/StatefulWidgets/Dashboard/Histories/Deposit/deposit.dart';
import 'package:hsapp2/Views/StatefulWidgets/Others/AppColors.dart';
import 'package:hsapp2/Views/StatelessWidgets/SplashScreen.dart';
import 'Views/StatefulWidgets/Auth/FinishSignUp.dart';
import 'Views/StatefulWidgets/Auth/Login.dart';
import 'Views/StatefulWidgets/Auth/OtpScreen.dart';
import 'Views/StatefulWidgets/Auth/PinScreen.dart';
import 'Views/StatefulWidgets/Auth/Register.dart';
import 'Views/StatefulWidgets/Auth/resetPassword.dart';
import 'Views/StatefulWidgets/Dashboard/Account/account.dart';
import 'Views/StatefulWidgets/Dashboard/Dashboard.dart';
import 'Views/StatefulWidgets/Dashboard/EDeposit/edeposit.dart';
import 'Views/StatefulWidgets/Dashboard/Histories/Investment/Investment.dart';
import 'Views/StatefulWidgets/Dashboard/Histories/Investment/SingleInvestment.dart';
import 'Views/StatefulWidgets/Dashboard/Histories/Loans/LoanHistory.dart';
import 'Views/StatefulWidgets/Dashboard/Histories/Loans/singleLoan.dart';
import 'Views/StatefulWidgets/Dashboard/Histories/Transactions/SingleTransaction.dart';
import 'Views/StatefulWidgets/Dashboard/Histories/Transactions/Transactions.dart';
import 'Views/StatefulWidgets/Dashboard/Invest/GoldInvestment.dart';
import 'Views/StatefulWidgets/Dashboard/Invest/PlatinumInvestment.dart';
import 'Views/StatefulWidgets/Dashboard/Invest/StandardInvestment.dart';
import 'Views/StatefulWidgets/Dashboard/Invest/investmentPackages.dart';
import 'Views/StatefulWidgets/Dashboard/Loans/AssetFinanceLoans.dart';
import 'Views/StatefulWidgets/Dashboard/Loans/BusinessLoans.dart';
import 'Views/StatefulWidgets/Dashboard/Loans/ChamaLoans.dart';
import 'Views/StatefulWidgets/Dashboard/Loans/Loans.dart';
import 'Views/StatefulWidgets/Dashboard/Loans/LogBookLoans.dart';
import 'Views/StatefulWidgets/Dashboard/Loans/PersonalLoans.dart';
import 'Views/StatefulWidgets/Dashboard/Transfers/PayBeneficiaries.dart';
import 'Views/StatefulWidgets/Dashboard/Transfers/Transfer.dart';
import 'Views/StatefulWidgets/Dashboard/Withdraw/withdraw.dart';
import 'Views/StatefulWidgets/Others/HomeWidget.dart';
import 'Views/StatelessWidgets/TermsAndConditions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'H&S Application',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        backgroundColor: AppColors.white
      ),
      home: const SplashScreen(title: 'Splash Screen'),

      //Routes throughout the Application
      routes: <String, WidgetBuilder> {
        '/splashScreen': (BuildContext context) => const SplashScreen(title: 'Splash Screen'),
        '/BaseLogin': (BuildContext context) => const BaseLogin(title: 'Base Login'),
        '/Login': (BuildContext context) => const Login(title: 'Login'),
        '/edeposit': (BuildContext context) => const Edeposit(title: 'Login'),
        '/FinishSignUp': (BuildContext context) => const FinishSignUp(title: 'FinishSignUp'),
        '/Register': (BuildContext context) => const Register(title: 'Register'),
        '/TermsAndConditions': (BuildContext context) => const TermsAndConditions(title: 'TermsAndConditions'),
        '/OtpScreen': (BuildContext context) => const OtpScreen(title: 'Otp Screen'),
        '/PinScreen': (BuildContext context) => const PinScreen(title: 'Otp Screen'),
        '/HomeWidget': (BuildContext context) => const HomeWidget(title: 'Nav Widget'),
        '/Dashboard': (BuildContext context) => const Dashboard(title: 'Dashboard'),
        '/Transactions': (BuildContext context) => const Transactions(title: 'Transactions'),
        '/SingleTransaction': (BuildContext context) => const SingleTransaction(title: 'SingleTransaction'),
        '/Investment': (BuildContext context) => const Investment(title: 'Investment'),
        '/SingleInvestment': (BuildContext context) => const SingleInvestment(title: 'SingleInvestment'),
        '/LoanHistory': (BuildContext context) => const LoanHistory(title: 'LoanHistory'),
        '/SingleLoan': (BuildContext context) => const SingleLoan(title: 'Investment'),
        '/Transfer': (BuildContext context) => const Transfer(title: 'Transfer'),
        '/Withdraw': (BuildContext context) => const Withdraw(title: 'Withdraw'),
        '/ResetPassword': (BuildContext context) => const ResetPassword(title: 'ResetPassword'),
        '/InvestmentPackages': (BuildContext context) => const InvestmentPackages(title: 'InvestmentPackages'),
        '/PayBeneficiaries': (BuildContext context) => const PayBeneficiaries(title: 'PayBeneficiaries'),
        '/StandardInvestment': (BuildContext context) => const StandardInvestment(title: 'StandardInvestment'),
        '/GoldInvestment': (BuildContext context) => const GoldInvestment(title: 'GoldInvestment'),
        '/PlatinumInvestment': (BuildContext context) => const PlatinumInvestment(title: 'PlatinumInvestment'),
        '/DepositHistory': (BuildContext context) => const Deposit(title: 'DepositHistory'),
        '/Loans': (BuildContext context) => const Loans(title: 'Loans'),
        '/ChamaLoans': (BuildContext context) => const ChamaLoans(title: 'Chama Loans'),
        '/Account': (BuildContext context) => const Account(title: 'Account'),
        '/LogBookLoans': (BuildContext context) => const LogBookLoans(title: 'LogBookLoans'),
        '/BusinessLoans': (BuildContext context) => const BusinessLoans(title: 'BusinessLoans'),
        '/AssetFinanceLoans': (BuildContext context) => const AssetFinanceLoans(title: 'AssetFinance Loans'),
        '/PersonalLoans': (BuildContext context) => const PersonalLoans(title: 'PersonalLoans'),

      },
    );
  }
}


