#include <algorithm>
#include <iomanip>
#include <iostream>
#include <map>
#include <string_view>
#include <vector>
using namespace std;
 
auto char_counts_of( const vector<string_view>& words )
    -> vector<char>
{
    map<char, int> char_counts;
    for( const auto& word: words ) {
        map<char, int> word_char_counts;
        for( const char ch: word ) { ++word_char_counts[ch]; }
        for( const auto [word_ch, word_ch_count]: word_char_counts ) {
            int& ch_count = char_counts[word_ch];
            ch_count = max( ch_count, word_ch_count );
        }
    }
    vector<char> result;
    for( const auto [ch, count]: char_counts ) {
        for( int i = 1; i <= count; ++i ) { result.push_back( ch ); }
    }
    return result;
}
 
void display( const vector<char>& chars )
{
    int count = 0;
    cout << "[";
    for( const char ch: chars ) {
        if( count++ > 0 ) { cout << ", "; }
        cout << quoted( string_view( &ch, 1 ) );
    }
    cout << "]" << endl;
}
 
auto main() -> int
{
    display( char_counts_of( {"your", "you", "or", "yo"} ) );
    display( char_counts_of( {"this", "that", "did", "deed", "them!", "a"} ) );
}
 
