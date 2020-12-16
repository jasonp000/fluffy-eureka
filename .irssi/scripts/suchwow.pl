#!/usr/bin/perl -w

sub trim($)
{
    my $string = shift;
    $string =~ s/^\s+//;
    $string =~ s/\s+$//;
    return $string;
}

# Usage: /SUCHWOW [<nick>]
  sub cmd_suchwow {
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
      $witem->command("MSG ".$witem->{name}." ░░░░░░░░░▄░░░░░░░░░░░░░░▄░░░░");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." ░░░░░░░░▌▒█░░░░░░░░░░░▄▀▒▌░░░");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." ░░░░░░░░▌▒▒█░░░░░░░░▄▀▒▒▒▐░░░");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." ░░░░░░░▐▄▀▒▒▀▀▀▀▄▄▄▀▒▒▒▒▒▐░░░");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." ░░░░░▄▄▀▒░▒▒▒▒▒▒▒▒▒█▒▒▄█▒▐░░░");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." ░░░▄▀▒▒▒░░░▒▒▒░░░▒▒▒▀██▀▒▌░░░");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." ░░▐▒▒▒▄▄▒▒▒▒░░░▒▒▒▒▒▒▒▀▄▒▒▌░░");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." ░░▌░░▌█▀▒▒▒▒▒▄▀█▄▒▒▒▒▒▒▒█▒▐░░");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." ░▐░░░▒▒▒▒▒▒▒▒▌██▀▒▒░░░▒▒▒▀▄▌░");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." ░▌░▒▄██▄▒▒▒▒▒▒▒▒▒░░░░░░▒▒▒▒▌░");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." ▀▒▀▐▄█▄█▌▄░▀▒▒░░░░░░░░░░▒▒▒▐░");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." ▐▒▒▐▀▐▀▒░▄▄▒▄▒▒▒▒▒▒░▒░▒░▒▒▒▒▌");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." ▐▒▒▒▀▀▄▄▒▒▒▄▒▒▒▒▒▒▒▒░▒░▒░▒▒▐░");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." ░▌▒▒▒▒▒▒▀▀▀▒▒▒▒▒▒░▒░▒░▒░▒▒▒▌░");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." ░▐▒▒▒▒▒▒▒▒▒▒▒▒▒▒░▒░▒░▒▒▄▒▒▐░░");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." ░▀▄▒▒▒▒▒▒▒▒▒▒▒░▒░▒░▒▄▒▒▒▒▌░░░");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." ░░░░▀▄▒▒▒▒▒▒▒▒▒▒▄▄▄▀▒▒▒▒▄▀░░░");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." ░░░░░░▀▄▄▄▄▄▄▀▀▀▒▒▒▒▒▄▄▀░░░░░");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." ░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▀▀░░░░░░░░");
    } else {
      Irssi::print("Nick not given, and no active channel/query in window");
    }
  }

  Irssi::command_bind('suchwow', 'cmd_suchwow');
