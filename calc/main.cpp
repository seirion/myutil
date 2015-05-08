// 월말 정산 계산기

#include <cstdio>
#include <iostream>
#include <cstring>
#include <string>
#include <vector>
#include <locale>
#include <numeric>

using namespace std;

const char *PART_SEPERATOR = "--";
const char *SEPERATOR = ":";

template<typename T>
class Seperator : public std::numpunct<T> {
public:
    virtual std::string do_grouping() const { return "\003"; }
};

class Part {
public:
    Part() {}
    bool parse(string s) {
        if (s.find(PART_SEPERATOR) != string::npos) return false; // finish
        cout << s;

        size_t index = s.find(SEPERATOR);
        if (index == string::npos) return false;

        int v = get_v(const_cast<char *>(s.c_str() + index + 2));
        if (v != 0) used.push_back(v);
        return true;
    }
    void print() {
        for (auto i : used) {
            cout << " + " << i;
        }
        cout << endl << " = " << total() << endl << endl;
    }
    int total() { return accumulate(used.begin(), used.end(), 0); }
private:
    vector<int> used;
    int get_v(char *in) {
        int v = 0;
        while (*in) {
            if (*in < '0' || *in > '9') {in++; continue;}
            v = v * 10 + (*in - '0');
            in++;
        }
        return v;
    }
};

int main() {
    std::cout.imbue(std::locale(std::cout.getloc(), new Seperator <char>()));

    char buffer[128];
    vector<int> all;
    while (true) {
        Part p;
        while (true) {
            fgets(buffer, 128, stdin);
            if (!p.parse(buffer)) {
                break;
            }
        }
        p.print();
        if (p.total() == 0) break;
        all.push_back(p.total());
    }
    cout << "==================================" << endl;
    cout << accumulate(all.begin(), all.end(), 0) << endl;
    return 0;
}

