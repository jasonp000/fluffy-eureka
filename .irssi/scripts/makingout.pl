#!/usr/bin/perl -w

sub trim($)
{
    my $string = shift;
    $string =~ s/^\s+//;
    $string =~ s/\s+$//;
    return $string;
}

# Usage: /MAKINGOUT [<nick>]
  sub cmd_makingout {
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
      $data = trim($data);
      $witem->command("MSG ".$witem->{name}." $data: I'm on the second floor with a lock on my door");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: I'm looking at a picture of your face");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: The last time I looked you were looking really good");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: But somehow pictures fade");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Then we're on the phone and we're all alone");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: But that just ain't good enough");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: I go around the world to see your face");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: 'Cause this just ain't good enough");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: So I'm just kicking it");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: I'm counting the days");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: I hardly can wait");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: For us to hang out");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: I'm really missing it");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: In so many ways");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: I anticipate us making out");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: (Here comes another one)");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Sip my morning tea but you're not next to me");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Here goes another day");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: I'm driving in my car");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: I wonder how you are");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: When our favorite music plays");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: And the flowers arrive to my surprise");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: But that just ain't good enough");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: And I got the note");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: It gave me hope");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: But that just ain't good enough");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: So I'm just kicking it");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: I'm counting the days");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: I hardly can wait");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: For us to hang out");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: I'm really missing it in so many ways");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: I anticipate us making out");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Yeah...");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Ooh oohh");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Ooh oohh");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Ooh oohh");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Soon you'll be here with me (making out...)");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Soon you'll be right here with me");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: I'm with my friends 'till the night ends");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: But that just ain't good enough");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: And honestly you can trust me");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: But that just ain't good enough");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: So I'm just kicking it");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: I'm counting the days");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: I hardly can wait for us to hang out");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: I'm really missing it in so many ways");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: I anticipate us making out");
    } else {
      Irssi::print("Nick not given, and no active channel/query in window");
    }
  }

  Irssi::command_bind('makingout', 'cmd_makingout');
