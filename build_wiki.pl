
use warnings;
use strict 'vars';
use vars qw/$in $out/;


use Carp qw/croak/;
use File::Basename;

#-----------------------------------------------------

sub build_wiki_file {
    my $pod  = shift;
    my ($name, $dir) = fileparse($pod);
    $name =~ s/(.*)\.(.*)/$1/;

    my $wiki     = $out . substr($dir, length($in)) . $name . ".html";
    my $wiki_dir = dirname $wiki;
    my $cmd  = "mkdir -p $wiki_dir && pod2wiki $pod $wiki";
    `$cmd`;
}

sub build_wiki {
    my $root = shift;
    opendir IN, $root or croak;
    my @dirs = map { $root . "/" . $_ } 
                 grep { $_ ne "." and $_ ne ".." } readdir IN;

    foreach my $file (@dirs) {
        if (-d $file) {
            build_wiki($file);
        } elsif (-f $file) {
            next if $file =~ /(pm|pod|pl)^/;
            build_wiki_file($file);
        } else {
            warn "$file is not a standard pod file\n";
        }
    }
}

#-------------------------------------------------------

($in, $out) = map { basename $_ } @ARGV;
build_wiki($in);
