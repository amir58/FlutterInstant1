enum OrderStatus { requested, accepted, refused }

enum PaymentMethods { paypal, cash, visa, mastercard }
// paypal , PayPal
class Payment {
  PaymentMethods paymentMethod;

  Payment(this.paymentMethod);

  void setPaymentMethod({required PaymentMethods paymentMethod}){
    this.paymentMethod = paymentMethod;
  }

  void printPaymentMethod() {
    print(paymentMethod);
    print(paymentMethod.name);
    print(paymentMethod.index);
  }
}

main() {
  Payment payment = Payment(PaymentMethods.paypal);
  payment.printPaymentMethod();

  payment.setPaymentMethod(paymentMethod: PaymentMethods.visa);
  payment.printPaymentMethod();
}
