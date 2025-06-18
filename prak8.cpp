#include <iostream>
using namespace std;

class Madis {
public:
    void pilih();
    void permutasi();
    void kombinasi();

private:
    int fak(int n); // Fungsi faktorial
};

// Fungsi faktorial rekursif
int Madis::fak(int n) {
    if (n <= 1) return 1;
    return n * fak(n - 1);
}

// Menu pilihan
void Madis::pilih() {
    int n;
    cout << "\n=== MENU ===\n";
    cout << "1. Permutasi\n";
    cout << "2. Kombinasi\n";
    cout << "Pilihan Anda: ";
    cin >> n;

    if (n == 1) {
        permutasi();
    } else if (n == 2) {
        kombinasi();
    } else {
        cout << "\n*** Program selesai ***\n";
    }
}

// Fungsi permutasi: nPr = n! / (n - r)!
void Madis::permutasi() {
    int n, r;
    cout << "\nMasukkan nilai n: ";
    cin >> n;
    cout << "Masukkan nilai r: ";
    cin >> r;

    if (r > n) {
        cout << "Nilai r harus kurang dari atau sama dengan n.\n";
        permutasi();
        return;
    }

    int hasil = fak(n) / fak(n - r);
    cout << "Hasil permutasi (nPr): " << hasil << "\n\n";
    pilih(); // Kembali ke menu
}

// Fungsi kombinasi: nCr = n! / (r! * (n - r)!)
void Madis::kombinasi() {
    int n, r;
    cout << "\nMasukkan nilai n: ";
    cin >> n;
    cout << "Masukkan nilai r: ";
    cin >> r;

    if (r > n) {
        cout << "Nilai r harus kurang dari atau sama dengan n.\n";
        kombinasi();
        return;
    }

    int hasil = fak(n) / (fak(r) * fak(n - r));
    cout << "Hasil kombinasi (nCr): " << hasil << "\n\n";
    pilih(); // Kembali ke menu
}

// Fungsi utama
int main() {
    Madis z;
    z.pilih();
    return 0;
}

