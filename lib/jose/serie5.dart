
class numbers {
    int n1;
    int n2;

    numbers({required this.n1, required this.n2});

    void fibonacci() {
        List<int> fibSeries = [n1, n2];

        int fib = n1 + n2;

        while (fib <= 100) {
            fibSeries.add(fib);
            n1 = n2;
            n2 = fib;
            fib = n1 + n2;
        }
        print('\nSerie de Fibonacci: $fibSeries\n');
    }
}

void main() {

    numbers fibonacciSeries = numbers(n1: 1, n2: 1);

    fibonacciSeries.fibonacci();

}
