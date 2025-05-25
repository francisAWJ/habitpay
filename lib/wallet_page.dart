import 'package:flutter/material.dart';

class BasicBalanceCard extends StatelessWidget {
  final double balance;
  
  const BasicBalanceCard({
    super.key,
    required this.balance,  
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        margin: EdgeInsets.fromLTRB(24, 16, 24, 16),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: <Color>[
                Color.fromARGB(255, 71, 168, 248), 
                Color.fromARGB(255, 125, 220, 255)
              ]
            ),
            borderRadius: BorderRadius.circular(12),
          ),

          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // "Saldo Anda" text
                Text(
                  'Saldo Anda',
                  style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    color: Colors.white
                  ),
                ),

                // Balance
                Text(
                  'Rp. ${balance.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
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

class TransferTopupCard extends StatelessWidget {
  const TransferTopupCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        margin: EdgeInsets.fromLTRB(24, 0, 24, 16),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Transfer title
              Text(
                'Transfer',
                style: Theme.of(context).textTheme.headlineSmall
              ),

              // Spacing
              const SizedBox(height: 12),

              // Transfer buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Transfer to bank
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 2,
                      children: [
                        IconButton.filled(
                          onPressed: () {}, 
                          icon: const Icon(Icons.account_balance),
                          iconSize: 30,
                          style: IconButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 171, 205, 225)
                          ),
                        ),
                        Text(
                          'Ke Bank',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),

                  // Transfer to e-wallet
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 2,
                      children: [
                        IconButton.filled(
                          onPressed: () {}, 
                          icon: const Icon(Icons.wallet_sharp),
                          iconSize: 30,
                          style: IconButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 171, 205, 225)
                          ),
                        ),
                        Text(
                          'Ke E-Wallet',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),

              // Spacing
              const SizedBox(height: 12),

              // Spacing
              const SizedBox(height: 12),

              // Top up title
              Text(
                'Top Up',
                style: Theme.of(context).textTheme.headlineSmall
              ),

              // Spacing
              const SizedBox(height: 12),

              // Top up buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Top up from bank
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 2,
                      children: [
                        IconButton.filled(
                          onPressed: () {}, 
                          icon: const Icon(Icons.account_balance),
                          iconSize: 30,
                          style: IconButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 171, 205, 225)
                          ),
                        ),
                        Text(
                          'Dari Bank',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),

                  // Top up with cash
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 2,
                      children: [
                        IconButton.filled(
                          onPressed: () {}, 
                          icon: const Icon(Icons.attach_money),
                          iconSize: 30,
                          style: IconButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 171, 205, 225)
                          ),
                        ),
                        Text(
                          'Dengan Cash',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        )
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