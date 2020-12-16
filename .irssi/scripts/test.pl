#!/usr/bin/perl -w

sub trim($)
{
    my $string = shift;
    $string =~ s/^\s+//;
    $string =~ s/\s+$//;
    return $string;
}

# Usage: /test [<nick>]
  sub cmd_test {
    # data - contains the parameters for /HELLO
    # server - the active server in window
    # witem - the active window item (eg. channel, query)
    #         or undef if the window is empty
    my ($data, $server, $witem) = @_;

    if (!$server || !$server->{connected}) {
      Irssi::print("Not connected to server");
      return;
    }

    if ($data && $witem && ($witem->{type} eq "CHANNEL")) {
      # there's channel active in window
      $data2 = split " ", $data;
      $data = trim($data);

      $witem->command("MSG ".$witem->{name}." $data2: \0034Hello");
      $witem->command("MSG ".$witem->{name}." $data: \0034Hello");

    } else {
      Irssi::print("Nick not given, and no active channel/query in window");
    }
  }

  Irssi::command_bind('test', 'cmd_test');
