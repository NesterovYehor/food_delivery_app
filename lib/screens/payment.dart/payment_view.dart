import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:food_delivery_app/components/my_button.dart';
import 'package:food_delivery_app/screens/delivery_progress/delivery_progress_view.dart';

class PaymentView extends StatefulWidget {
  PaymentView({super.key});

  @override
  State<PaymentView> createState() => _PaymentViewState();
}

class _PaymentViewState extends State<PaymentView> {
  String cardNumber = "";
  String expiryDate = "";
  String cardHolderName = "";
  String cvvCode = "";
  bool showBackView = false;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void userTappedPay(){
    if (formKey.currentState!.validate()){
      showDialog(
        context: context, 
        builder: (context) => AlertDialog(
          title: const Text("Confirm payment"),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                Text("Card Number: $cardNumber"),
                Text("Expiry Date: $expiryDate"),
                Text("Card Number: $cardNumber"),
                Text("Card Number: $cardNumber"),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child:  Text("Cancel", style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),)
            ),
            TextButton(
              onPressed: (){
                Navigator.pop(context);
                Navigator.push(context,  MaterialPageRoute(builder: (context) => DeliveryProgressView()));

              }, 
              child: Text("Yes", style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary))
            )
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkout"),
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: Column(
        children: [
          CreditCardWidget(
            cardBgColor: Theme.of(context).colorScheme.inversePrimary,
            cardNumber: cardNumber,
            expiryDate: expiryDate,
            cardHolderName: cardHolderName,
            cvvCode: cvvCode,
            showBackView: showBackView, 
            onCreditCardWidgetChange: (CreditCardBrand brand) {}, 
          ),
          CreditCardForm(
            cardNumber: cardNumber, 
            expiryDate: expiryDate, 
            cardHolderName: cardHolderName, 
            cvvCode: cvvCode, 
            formKey: formKey,
            onCreditCardModelChange: (data) {
              setState(() {
                cardNumber = data.cardNumber;
                expiryDate = data.expiryDate;
                cardHolderName = data.cardHolderName;
                cvvCode = data.cvvCode;
              });
            }, 
          ),
          const Spacer(),
          MyButton(
            onTap: userTappedPay, 
            text: "Pay now"
          ),
          const SizedBox(height: 30)
        ],
      ),
    );
  }
}