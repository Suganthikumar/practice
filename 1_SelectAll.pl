use DBI;
$dbh = DBI->connect( "dbi:ODBC:beemail") || die "Cannot connect:     $DBI::errstr";
my $sth = $dbh->prepare("SELECT * from users;");
$sth->execute() or die $DBI::errstr;
while (my @row = $sth->fetchrow_array()) {
   my ($mail, $pwd ) = @row;
   print "Mail = $mail, Password = $pwd\n";
}
$sth->finish();

