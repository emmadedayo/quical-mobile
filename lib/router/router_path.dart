import 'package:quical/presentation/authentication/login/login_with_faceid.dart';
import 'package:quical/presentation/authentication/login/login_with_password.dart';
import 'package:quical/presentation/authentication/login/login_with_touchid.dart';
import 'package:quical/presentation/authentication/login/recover_account.dart';
import 'package:quical/presentation/authentication/login/reset_password.dart';
import 'package:quical/presentation/authentication/login/reset_successful.dart';
import 'package:quical/presentation/authentication/registration/create_account/business_account/business_choose_password.dart';
import 'package:quical/presentation/authentication/registration/create_account/business_account/business_phone_verified.dart';
import 'package:quical/presentation/authentication/registration/create_account/business_account/company_details.dart';
import 'package:quical/presentation/authentication/registration/create_account/business_account/verification_steps.dart';
import 'package:quical/presentation/authentication/registration/create_account/business_account/verify_business.dart';
import 'package:quical/presentation/authentication/registration/create_account/choose_password.dart';
import 'package:quical/presentation/authentication/registration/create_account/acct_type.dart';
import 'package:quical/presentation/authentication/registration/email/confirm_email.dart';
import 'package:quical/presentation/authentication/registration/email/register_email.dart';
import 'package:quical/presentation/authentication/registration/face_id/faceid_activated.dart';
import 'package:quical/presentation/authentication/registration/phone_number/confirm_phone.dart';
import 'package:quical/presentation/authentication/registration/phone_number/phone_registration.dart';
import 'package:quical/presentation/authentication/registration/phone_number/verify_phone.dart';
import 'package:quical/presentation/authentication/registration/register_name.dart';
import 'package:quical/presentation/authentication/registration/email/verify_email.dart';
import 'package:quical/presentation/authentication/registration/what_to_do/what_to_Do.dart';
import 'package:quical/presentation/convert/convert_review.dart';
import 'package:quical/presentation/convert/convert_screen.dart';
import 'package:quical/presentation/convert/convert_success_page.dart';
import 'package:quical/presentation/deposit/components/deposit_fiat/components/deposit_fiat_funds.dart';
import 'package:quical/presentation/home_page/components/invoice/add_new_invoice.dart';
import 'package:quical/presentation/home_page/components/invoice/add_new_invoice_contd.dart';
import 'package:quical/presentation/home_page/components/invoice/complete_invoice_screen.dart';
import 'package:quical/presentation/home_page/components/invoice/invoice_list_details.dart';
import 'package:quical/presentation/home_page/components/invoice/invoice_screen.dart';
import 'package:quical/presentation/home_page/components/invoice/reciept_screen.dart';
import 'package:quical/presentation/home_page/components/send_money/components/crypto/components/crypo_amount_screen.dart';
import 'package:quical/presentation/home_page/components/send_money/components/crypto/components/crypo_transaction_review.dart';
import 'package:quical/presentation/home_page/components/send_money/components/crypto/components/crypto_confirmation_screen.dart';
import 'package:quical/presentation/home_page/components/send_money/components/crypto/components/wallet_address_screen.dart';
import 'package:quical/presentation/home_page/components/send_money/components/fiat/components/enter_amount_to_send.dart';
import 'package:quical/presentation/home_page/components/send_money/components/fiat/components/recipient_bank_details.dart';
import 'package:quical/presentation/home_page/components/send_money/components/fiat/components/recipient_details_contd.dart';
import 'package:quical/presentation/home_page/components/send_money/components/fiat/components/review_recipient_details.dart';
import 'package:quical/presentation/home_page/components/send_money/components/fiat/components/select_payment_method.dart';
import 'package:quical/presentation/home_page/components/send_money/components/fiat/components/transfer_confirmation.dart';
import 'package:quical/presentation/home_page/components/send_money/send_money_screen.dart';
import 'package:quical/presentation/main_navigation/main_navigation_screen.dart';
import 'package:quical/presentation/settings/components/about/about_screen.dart';
import 'package:quical/presentation/settings/components/about/components/legal_screen.dart';
import 'package:quical/presentation/settings/components/account_information/account_info_screen.dart';
import 'package:quical/presentation/settings/components/account_information/components/limits/acct_limit_details.dart';
import 'package:quical/presentation/settings/components/account_information/components/limits/choose_acct_limits.dart';
import 'package:quical/presentation/settings/components/account_information/components/profile/profile_screen.dart';
import 'package:quical/presentation/settings/components/account_information/components/statements/acct_statement_screen.dart';
import 'package:quical/presentation/settings/components/help_support/components/contact_support.dart';
import 'package:quical/presentation/settings/components/help_support/components/help_center.dart';
import 'package:quical/presentation/settings/components/help_support/components/social_media.dart';
import 'package:quical/presentation/settings/components/help_support/help_and_support_screen.dart';
import 'package:quical/presentation/settings/components/login_Security/components/forget_trans_pin.dart';
import 'package:quical/presentation/settings/components/login_Security/components/password_reset.dart';
import 'package:quical/presentation/settings/components/login_Security/components/transaction_pin.dart';
import 'package:quical/presentation/settings/components/login_Security/components/transaction_pin_otp.dart';
import 'package:quical/presentation/settings/components/login_Security/components/transaction_pin_success.dart';
import 'package:quical/presentation/settings/components/login_Security/login_securirty.dart';
import 'package:quical/presentation/settings/components/manage_account/manage_account_screen.dart';
import 'package:quical/presentation/settings/settings_screen.dart';
import 'package:quical/presentation/splash_screen/splash_screen.dart';

import 'package:flutter/material.dart';
import 'package:quical/presentation/transaction/components/transaction_history_receipt.dart';
import 'package:quical/router/router.dart';

import '../presentation/authentication/registration/face_id/face_id.dart';
import '../presentation/home_page/components/invoice/create_and_send_invoice.dart';
import '../presentation/home_page/components/send_money/components/fiat/components/add_beneficiary_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  Map<String, dynamic>? arguments = settings.arguments as Map<String, dynamic>?;

  switch (settings.name) {
    case '/':
      return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
        return const SplashScreen();
      });

    case RoutePaths.splashScreen:
      return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
        return const SplashScreen();
      });

    // case RoutePaths.login:
    //   return MaterialPageRoute<dynamic>(
    //       settings: const RouteSettings(name: RoutePaths.login),
    //       builder: (BuildContext context) {
    //         return const LoginScreen();
    //       });

    case RoutePaths.registerName:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.registerName),
          builder: (BuildContext context) {
            return const RegisterNameScreen();
          });

    case RoutePaths.registerEmail:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.registerEmail),
          builder: (BuildContext context) {
            return const RegisterEmail();
          });

    case RoutePaths.verifyEmailScreen:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.verifyEmailScreen),
          builder: (BuildContext context) {
            return const VerifyEmailScreen();
          });

    case RoutePaths.confirmEmailScreen:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.confirmEmailScreen),
          builder: (BuildContext context) {
            return const ConfirmEmailScreen();
          });

    case RoutePaths.phoneNumberRegistration:
      return MaterialPageRoute<dynamic>(
          settings:
              const RouteSettings(name: RoutePaths.phoneNumberRegistration),
          builder: (BuildContext context) {
            return const PhoneNumberRegistration();
          });

    case RoutePaths.verifyPhoneRegistrationScreen:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(
              name: RoutePaths.verifyPhoneRegistrationScreen),
          builder: (BuildContext context) {
            return const VerifyPhoneGregistrationScreen();
          });

    case RoutePaths.phoneRegistrationConfirm:
      return MaterialPageRoute<dynamic>(
          settings:
              const RouteSettings(name: RoutePaths.phoneRegistrationConfirm),
          builder: (BuildContext context) {
            return const PhoneRegistrationConfirm();
          });

    case RoutePaths.createAccountType:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.createAccountType),
          builder: (BuildContext context) {
            return const CreateAccountType();
          });

    case RoutePaths.choosePasswordScreen:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.choosePasswordScreen),
          builder: (BuildContext context) {
            return const ChoosePasswordScreen();
          });

    case RoutePaths.whatToDoScreen:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.whatToDoScreen),
          builder: (BuildContext context) {
            return const WhatToDoScreen();
          });

    case RoutePaths.faceIDScreen:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.faceIDScreen),
          builder: (BuildContext context) {
            return const FaceIDScreen();
          });

    case RoutePaths.faceIDActivated:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.faceIDActivated),
          builder: (BuildContext context) {
            return const FaceIDActivated();
          });

    case RoutePaths.companyDetailScreen:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.companyDetailScreen),
          builder: (BuildContext context) {
            return const CompanyDetailScreen();
          });
    case RoutePaths.verifyBusinessScreen:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.verifyBusinessScreen),
          builder: (BuildContext context) {
            return const VerifyBusinessScreen();
          });

    case RoutePaths.businessVerificationSteps:
      return MaterialPageRoute<dynamic>(
          settings:
              const RouteSettings(name: RoutePaths.businessVerificationSteps),
          builder: (BuildContext context) {
            return const BusinessVerificationSteps();
          });

    case RoutePaths.businessChoosePasswordScreen:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(
              name: RoutePaths.businessChoosePasswordScreen),
          builder: (BuildContext context) {
            return const BusinessChoosePasswordScreen();
          });

    case RoutePaths.businessPhoneVerified:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.businessPhoneVerified),
          builder: (BuildContext context) {
            return const BusinessPhoneVerified();
          });

    case RoutePaths.loginWithFaceIDScreen:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.loginWithFaceIDScreen),
          builder: (BuildContext context) {
            return const LoginWithFaceIDScreen();
          });

    case RoutePaths.loginWithPasswordScreen:
      return MaterialPageRoute<dynamic>(
          settings:
              const RouteSettings(name: RoutePaths.loginWithPasswordScreen),
          builder: (BuildContext context) {
            return const LoginWithPasswordScreen();
          });
    case RoutePaths.loginWithTouchIDScreen:
      return MaterialPageRoute<dynamic>(
          settings:
              const RouteSettings(name: RoutePaths.loginWithTouchIDScreen),
          builder: (BuildContext context) {
            return const LoginWithTouchIDScreen();
          });
    case RoutePaths.recoverAccountScreen:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.recoverAccountScreen),
          builder: (BuildContext context) {
            return const RecoverAccountScreen();
          });
    case RoutePaths.resetPasswordScreen:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.resetPasswordScreen),
          builder: (BuildContext context) {
            return const ResetPasswordScreen();
          });

    case RoutePaths.passwordResetSuccessfulScreen:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(
              name: RoutePaths.passwordResetSuccessfulScreen),
          builder: (BuildContext context) {
            return const PasswordResetSuccessfulScreen();
          });

    case RoutePaths.mainNavigationScreen:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.mainNavigationScreen),
          builder: (BuildContext context) {
            return const MainNavigationScreen();
          });

    case RoutePaths.convertReviewScreen:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.convertReviewScreen),
          builder: (BuildContext context) {
            return const ConvertReviewScreen();
          });

    case RoutePaths.convertSuccessPage:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.convertSuccessPage),
          builder: (BuildContext context) {
            return const ConvertSuccessPage();
          });

    case RoutePaths.invoiceScreen:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.invoiceScreen),
          builder: (BuildContext context) {
            return const InvoiceScreen();
          });

    case RoutePaths.createAndSendInvoiceScreen:
      return MaterialPageRoute<dynamic>(
          settings:
              const RouteSettings(name: RoutePaths.createAndSendInvoiceScreen),
          builder: (BuildContext context) {
            return const CreateAndSendInvoiceScreen();
          });

    case RoutePaths.invoiceListDetails:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.invoiceListDetails),
          builder: (BuildContext context) {
            return const InvoiceListDetails();
          });

    case RoutePaths.invoiceScrenComplete:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.invoiceScrenComplete),
          builder: (BuildContext context) {
            return const InvoiceScrenComplete();
          });

    case RoutePaths.addNewInvoiceScreen:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.addNewInvoiceScreen),
          builder: (BuildContext context) {
            return const AddNewInvoiceScreen();
          });

    case RoutePaths.addNewInvoiceContd:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.addNewInvoiceContd),
          builder: (BuildContext context) {
            return const AddNewInvoiceContd();
          });

    case RoutePaths.convertScreen:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.convertScreen),
          builder: (BuildContext context) {
            return const ConvertScreen();
          });

    case RoutePaths.recieptScreen:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.recieptScreen),
          builder: (BuildContext context) {
            return const RecieptScreen();
          });

    case RoutePaths.sendMoneyScreen:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.sendMoneyScreen),
          builder: (BuildContext context) {
            return const SendMoneyScreen();
          });

    case RoutePaths.enterAmountToSendScreen:
      return MaterialPageRoute<dynamic>(
          settings:
              const RouteSettings(name: RoutePaths.enterAmountToSendScreen),
          builder: (BuildContext context) {
            return const EnterAmountToSendScreen();
          });

    case RoutePaths.addBeneficiaryScreen:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.addBeneficiaryScreen),
          builder: (BuildContext context) {
            return const AddBeneficiaryScreen();
          });

    case RoutePaths.selectPaymentMethodScreen:
      return MaterialPageRoute<dynamic>(
          settings:
              const RouteSettings(name: RoutePaths.selectPaymentMethodScreen),
          builder: (BuildContext context) {
            return const SelectPaymentMethodScreen();
          });

    case RoutePaths.recipientBankDetails:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.recipientBankDetails),
          builder: (BuildContext context) {
            return const RecipientBankDetails();
          });

    case RoutePaths.recipientDetailsContd:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.recipientDetailsContd),
          builder: (BuildContext context) {
            return const RecipientDetailsContd();
          });

    case RoutePaths.reviewRecipientDetails:
      return MaterialPageRoute<dynamic>(
          settings:
              const RouteSettings(name: RoutePaths.reviewRecipientDetails),
          builder: (BuildContext context) {
            return const ReviewRecipientDetails();
          });
    case RoutePaths.transferConfrimationPage:
      return MaterialPageRoute<dynamic>(
          settings:
              const RouteSettings(name: RoutePaths.transferConfrimationPage),
          builder: (BuildContext context) {
            return const TransferConfrimationPage();
          });

    case RoutePaths.crypoEnterAmountScreen:
      return MaterialPageRoute<dynamic>(
          settings:
              const RouteSettings(name: RoutePaths.crypoEnterAmountScreen),
          builder: (BuildContext context) {
            return const CrypoEnterAmountScreen();
          });

    case RoutePaths.walletAddressScreen:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.walletAddressScreen),
          builder: (BuildContext context) {
            return const WalletAddressScreen();
          });
    case RoutePaths.cryptoTransactionReviewScreen:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(
              name: RoutePaths.cryptoTransactionReviewScreen),
          builder: (BuildContext context) {
            return const CryptoTransactionReviewScreen();
          });

    case RoutePaths.cryptoConfirmationScreen:
      return MaterialPageRoute<dynamic>(
          settings:
              const RouteSettings(name: RoutePaths.cryptoConfirmationScreen),
          builder: (BuildContext context) {
            return const CryptoConfirmationScreen();
          });

    case RoutePaths.transactionHistoryReceipt:
      return MaterialPageRoute<dynamic>(
          settings:
              const RouteSettings(name: RoutePaths.transactionHistoryReceipt),
          builder: (BuildContext context) {
            return const TransactionHistoryReceipt();
          });

    case RoutePaths.settingsScreen:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.settingsScreen),
          builder: (BuildContext context) {
            return const SettingsScreen();
          });

    case RoutePaths.accountInformationScreen:
      return MaterialPageRoute<dynamic>(
          settings:
              const RouteSettings(name: RoutePaths.accountInformationScreen),
          builder: (BuildContext context) {
            return const AccountInformationScreen();
          });

    case RoutePaths.profileScreen:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.profileScreen),
          builder: (BuildContext context) {
            return const ProfileScreen();
          });

    case RoutePaths.chooseAccountLimits:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.chooseAccountLimits),
          builder: (BuildContext context) {
            return const ChooseAccountLimits();
          });

    case RoutePaths.accountLimitsDetails:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.accountLimitsDetails),
          builder: (BuildContext context) {
            return const AccountLimitsDetails();
          });

    case RoutePaths.accountStatementScreen:
      return MaterialPageRoute<dynamic>(
          settings:
              const RouteSettings(name: RoutePaths.accountStatementScreen),
          builder: (BuildContext context) {
            return const AccountStatementScreen();
          });

    case RoutePaths.helpAndSupportScreen:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.helpAndSupportScreen),
          builder: (BuildContext context) {
            return const HelpAndSupportScreen();
          });

    case RoutePaths.socialMediaScreen:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.socialMediaScreen),
          builder: (BuildContext context) {
            return const SocialMediaScreen();
          });

    case RoutePaths.helpCenter:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.helpCenter),
          builder: (BuildContext context) {
            return const HelpCenter();
          });

    case RoutePaths.contactSupportScreen:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.contactSupportScreen),
          builder: (BuildContext context) {
            return const ContactSupportScreen();
          });

    case RoutePaths.loginSecurityScreen:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.loginSecurityScreen),
          builder: (BuildContext context) {
            return const LoginSecurityScreen();
          });
    case RoutePaths.passwordResetScreen:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.passwordResetScreen),
          builder: (BuildContext context) {
            return const PasswordResetScreen();
          });

    case RoutePaths.manageTransactionPin:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.manageTransactionPin),
          builder: (BuildContext context) {
            return const ManageTransactionPin();
          });

    case RoutePaths.transactionPinOtp:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.transactionPinOtp),
          builder: (BuildContext context) {
            return const TransactionPinOtp();
          });

    case RoutePaths.transactionPinSuccessPage:
      return MaterialPageRoute<dynamic>(
          settings:
              const RouteSettings(name: RoutePaths.transactionPinSuccessPage),
          builder: (BuildContext context) {
            return const TransactionPinSuccessPage();
          });

    case RoutePaths.manageAccountScreen:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.manageAccountScreen),
          builder: (BuildContext context) {
            return const ManageAccountScreen();
          });

    case RoutePaths.aboutScreen:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.aboutScreen),
          builder: (BuildContext context) {
            return const AboutScreen();
          });

    case RoutePaths.legalScreen:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.legalScreen),
          builder: (BuildContext context) {
            return const LegalScreen();
          });

    case RoutePaths.depositFiatFundWallet:
      return MaterialPageRoute<dynamic>(
          settings: const RouteSettings(name: RoutePaths.depositFiatFundWallet),
          builder: (BuildContext context) {
            return const DepositFiatFundWallet();
          });

    case RoutePaths.forgetTransactionPinScreen:
      return MaterialPageRoute<dynamic>(
          settings:
              const RouteSettings(name: RoutePaths.forgetTransactionPinScreen),
          builder: (BuildContext context) {
            return const ForgetTransactionPinScreen();
          });

    default:
      return MaterialPageRoute<dynamic>(builder: (BuildContext context) {
        return Container();
      });
  }
}
