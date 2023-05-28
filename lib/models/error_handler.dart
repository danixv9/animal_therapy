class ErrorHandler extends StatelessWidget {
  final Widget child;
  final Function onError;

  ErrorHandler({required this.child, required this.onError});

  @override
  Widget build(BuildContext context) {
    return ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Oops! An error occurred.',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  onError();
                },
                child: Text('Retry'),
              ),
            ],
          ),
        ),
      );
    };
  }
}
