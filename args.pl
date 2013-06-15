
sub parse_args {
  while ( @ARGV ) {
    if ( $ARGV[0] eq '-help' ) { 
      &usage();
    }
    if ( $ARGV[0] eq '-audit' || $ARGV[0] eq '-a' ) { 
      $audit = 1;
      shift @ARGV;
      next;
    }
    if ( $ARGV[0] eq '-titlebar' || $ARGV[0] eq '-t' ) {
      $titlebar = 1;
      shift @ARGV;
      next;
    }
    &usage();
  }
  if ( $audit ) {
    print STDERR "$$ INIT $0 " . join(' ',@ARGV), "\r\n";
  }
}

#------------------------------------------------------------------

sub usage {
  print "usage: vit [switches]\n";
  print "  -audit     print task commands to stderr\n";
  print "  -titlebar  sets the xterm titlebar to \"$version\"\n";
  exit 1;
}

return 1;

