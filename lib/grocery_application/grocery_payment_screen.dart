import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class GroceryPaymentScreen extends StatefulWidget {
  const GroceryPaymentScreen({Key? key}) : super(key: key);

  @override
  _GroceryPaymentScreenState createState() => _GroceryPaymentScreenState();
}

class _GroceryPaymentScreenState extends State<GroceryPaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            title: Text('Payment')),
        body: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 16, right: 16, top: 8, bottom: 8),
                    child: Text(
                      'Payment Method',
                      style: TextStyle(
                          color: Colors.black54,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(16),
                    color: Colors.white,
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const GroceryCardScreen(),
                              ),
                            );
                          },
                          child: Row(
                            children: [
                              Image(
                                height: 50,
                                width: 50,
                                image: AssetImage('assets/images/visa.png'),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  child: Text(
                                'Credit or Debit Card',
                                style: TextStyle(
                                    fontWeight: FontWeight.w400, fontSize: 16),
                              )),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 18,
                                color: Color(0xFF5EB04E),
                              )
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Image(
                              height: 50,
                              width: 50,
                              image: AssetImage('assets/images/paypal.png'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Text(
                              'Paypal',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16),
                            )),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 18,
                              color: Color(0xFF5EB04E),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Image(
                              height: 50,
                              width: 50,
                              image: AssetImage('assets/images/money.png'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Text(
                              'Cash',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16),
                            )),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 18,
                              color: Color(0xFF5EB04E),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  right: 16, top: 8, bottom: 8),
                              child: Text(
                                'Voucher',
                                style: TextStyle(
                                    color: Colors.black54,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_forward,
                              size: 40,
                              color: Color(0xFF5EB04E),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Text(
                              'My Voucher',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16),
                            )),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 18,
                              color: Color(0xFF5EB04E),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            Icon(
                              Icons.arrow_forward,
                              size: 40,
                              color: Color(0xFF5EB04E),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Text(
                              'Gift Card',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 16),
                            )),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 18,
                              color: Color(0xFF5EB04E),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GroceryCardScreen extends StatefulWidget {
  const GroceryCardScreen({Key? key}) : super(key: key);

  @override
  _GroceryCardScreenState createState() => _GroceryCardScreenState();
}

class _GroceryCardScreenState extends State<GroceryCardScreen> {
  TextEditingController expController = TextEditingController();
  TextEditingController creditCardController = TextEditingController();
  TextEditingController cvvController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.black,
          title: Text('Add Card'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF5EB04E))),
                          hintText: "Card Number",
                          suffixIcon:
                              Icon(Icons.payment, color: Color(0xFF5EB04E)),
                        ),
                        controller: creditCardController,
                      ),
                      TextFormField(
                        controller: expController,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                          label: Text('Exp Date(MM/YY)'),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF5EB04E),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0xFF5EB04E),
                            ),
                          ),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF5EB04E))),
                          hintText: "CVV",
                        ),
                        controller: cvvController,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.06,
                  width: MediaQuery.of(context).size.width * 0.95,
                  child: ElevatedButton(
                    child: const Text(
                      'Save',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF5EB04E),
                      onPrimary: Colors.white,
                      shape: const BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(3),
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const GroceryPaymentScreen()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
