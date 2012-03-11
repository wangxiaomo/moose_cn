use warnings;
use strict 'vars';

use Pod::Simple::HTMLBatch;

my $batchcov = Pod::Simple::HTMLBatch->new;
$batchcov->verbose(3);
$batchcov->batch_convert($ARGV[0], $ARGV[1]);
