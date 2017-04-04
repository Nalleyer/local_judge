use v6;

my $m = 1000000000;

for [6..8] {
    my $a = (-$m..$m).pick;
    my $b = (-$m..$m).pick;
    my $fi = open "test_{$_}.in", :w;
    $fi.print("$a\n$b\n");
    $fi.close;
    my $fo = open "test_{$_}.o", :w;
    $fo.print("{$a+$b}\n");
    $fo.close;
}
