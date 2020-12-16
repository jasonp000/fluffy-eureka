#!/usr/bin/perl -w

sub trim($)
{
    my $string = shift;
    $string =~ s/^\s+//;
    $string =~ s/\s+$//;
    return $string;
}

# Usage: /MK
  sub cmd_mk {
    # data - contains the parameters for /HELLO
    # server - the active server in window
    # witem - the active window item (eg. channel, query)
    #         or undef if the window is empty
    my ($data, $server, $witem) = @_;

    if (!$server || !$server->{connected}) {
      Irssi::print("Not connected to server");
      return;
    }

    if ($witem && ($witem->{type} eq "CHANNEL")) {
      # there's channel active in window
      $data = trim($data);

      $witem->command("MSG ".$witem->{name}." \$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$''\$o\$o\$o\$o\$o\$oo\$\$''\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." \$\$\$\$\$\$\$\$\$\$\$\$''o\$\$\$\$\$\$\$\$\$\$'\$'\$\$\$\$\$\$\$o\$'\$\$\$\$\$\$\$\$\$\$\$\$");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." \$\$\$\$\$\$\$\$\$'\$o\$\$\$\$''\$oo \$ ''      '''\$\$\$oo'\$\$\$\$\$\$\$\$\$");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." \$\$\$\$\$\$\$'o\$\$\$\$'   ''o  \$oo o o       ''\$\$\$o'\$\$\$\$\$\$\$");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." \$\$\$\$\$'o\$\$\$'       oo\$\$\$\$\$\$\$\$\$\$o        '\$\$\$o'\$\$\$\$\$");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." \$\$\$\$'o\$\$\$  \$  o\$\$\$\$\$\$\$\$\$\$\$\$\$\$'\$\$oo       '\$\$\$ \$\$\$\$");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." \$\$\$'\$\$\$'   '\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$o\$o\$\$\$'        \$\$\$o\$\$\$");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." \$\$ \$\$\$    o\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$o o   o  '\$\$o'\$");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." \$'\$\$\$'    o\$\$\$\$\$\$\$\$\$'\$\$\$\$\$\$'' '\$\$\$\$\$\$'\$\$\$\$\$  \$\$\$'\$");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." \$o\$\$'    o\$\$\$\$\$\$\$\$\$\$o''\$\$\$''''ooo'\$\$\$\$\$\$\$\$'   \$\$\$'");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." \$o\$\$'    o\$\$\$\$\$\$\$\$\$\$            ''oo'\$'\$o''   \$\$\$o");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." o\$\$\$     o\$\$\$\$\$\$\$\$\$\$                '''''\$    o\$\$o");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." o\$\$\$    o\$\$\$\$\$\$\$\$\$\$\$\$o                   'o 'oo\$\$o");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." o\$\$\$  oo\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$ooooooo\$\$\$\$\$oo    \$'\$ '\$\$o");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." o\$\$\$'  ''  \$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$o    ' \$\$\$'");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." \$ \$\$\$       '\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$o    o\$\$'\$");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." \$\$'\$\$o       '\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$o   \$\$\$o\$");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." \$\$o\$\$\$o       \$\$''\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$o  \$\$\$ \$\$");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." \$\$\$o'\$\$o    '\$''  '\$''\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$oo\$\$\$'\$\$\$");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." \$\$\$\$o'\$\$\$o        '     \$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$o\$\$'o\$\$\$\$");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." \$\$\$\$\$\$o'\$\$\$o         oo\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$'o\$\$\$\$\$");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." \$\$\$\$\$\$\$\$o'\$\$\$\$ooooo\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$'o\$\$\$\$\$\$\$");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." \$\$\$\$\$\$\$\$\$\$o''\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$'oo\$\$\$\$\$\$\$\$\$");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." \$\$\$\$\$\$\$\$\$\$\$\$\$o\$''\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$''oo\$\$\$\$\$\$\$\$\$\$\$\$");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." \$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$o\$o\$'\$'\$'\$'\$oo\$o\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$\$");
      sleep 1;

    } else {
      Irssi::print("Nick not given, and no active channel/query in window");
    }
  }

  Irssi::command_bind('mk', 'cmd_mk');
