import 'package:flutter/material.dart';

class BalanceCard extends StatelessWidget {
  final double balance;

  const BalanceCard({
    Key? key,
    required this.balance,
  }) : super(key: key);

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

                // Spacing
                const SizedBox(height: 16),

                // Buttons for Top up, Transfer, Riwayat
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Top up button
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
                            'Top up',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Transfer button
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 2,
                        children: [
                          IconButton.filled(
                            onPressed: () {}, 
                            icon: const Icon(Icons.compare_arrows),
                            iconSize: 30,
                            style: IconButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 171, 205, 225)
                            ),
                          ),
                          Text(
                            'Transfer',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Riwayat button
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 2,
                        children: [
                          IconButton.filled(
                            onPressed: () {}, 
                            icon: const Icon(Icons.history),
                            iconSize: 30,
                            style: IconButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 171, 205, 225)
                            ),
                          ),
                          Text(
                            'Riwayat',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
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
      ),
    );
  }
}

class ServicesCard extends StatelessWidget {
  const ServicesCard({super.key});

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
              // Title
              Text(
                'Layanan',
                style: Theme.of(context).textTheme.headlineSmall
              ),

              // Spacing
              const SizedBox(height: 12),

              // Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Milestones button
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 2,
                      children: [
                        IconButton.filled(
                          onPressed: () {}, 
                          icon: Icon(Icons.emoji_events),
                          iconSize: 30,
                          style: IconButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 114, 201, 255)
                          ),
                        ),
                        Text(
                          'Milestones',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),

                  // Budgeting button
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 2,
                      children: [
                        IconButton.filled(
                          onPressed: () {}, 
                          icon: Icon(Icons.currency_exchange),
                          iconSize: 30,
                          style: IconButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 93, 219, 77)
                          ),
                        ),
                        Text(
                          'Budgeting',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),

                  // Investasi button
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 2,
                      children: [
                        IconButton.filled(
                          onPressed: () {}, 
                          icon: Icon(Icons.rocket),
                          iconSize: 30,
                          style: IconButton.styleFrom(
                            backgroundColor: Color.fromARGB(255, 255, 114, 116)
                          ),
                        ),
                        Text(
                          'Investasi',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          )
        )
      ),
    );
  }
}

class StatusCard extends StatelessWidget {
  const StatusCard({super.key});

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
              // Title
              Text(
                'Status Anda',
                style: Theme.of(context).textTheme.headlineSmall
              ),
            ],
          ),
        ),
      ),
    );
  }
}