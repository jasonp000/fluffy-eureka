#!/usr/bin/perl -w

sub trim($)
{
    my $string = shift;
    $string =~ s/^\s+//;
    $string =~ s/\s+$//;
    return $string;
}

# Usage: /SERENADE [<nick>]
  sub cmd_serenade {
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
      $witem->command("MSG ".$witem->{name}." $data: I wrote this song for you");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Listen");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Everybody's looking for the fliest thing to say (fliest thing to say)");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: But I just want to fly (fly away with you, you, you, you)");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: I don't want to be the one to alienate, yeah (alienate)");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: You see, I'm trying to find an alien in you (you, you, if it's cool, cool)");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: We can't take an airplane");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Where we're going is way to high");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Going where the day sky turns into night");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: I got the windows special tinted for the stars that get too bright");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: And I saved you a seat, so let's ride");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Hop into my spaceship coupeeeeeeeeeeeeeeee");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: There's only room for twoooooooooooo (Me and you)");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: And with the top down");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: We'll cruise around");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Land and make love on the mooooooooooooooooooooon");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Would you like that?");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Hop into my spaceship coupe");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: There's only room for two (Me and you)");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: And with the top of you wrapped up");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: In my space lover cocoon.");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: And I love it when I hear you say");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Ooh, ooh, ooh, ooh, ooh");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Ooh, ooh, ooh, ooh, ooh");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Sing to me");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: I love it when I hear you say");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Ooh, ooh, ooh, ooh, ooh");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Ooh, ooh, ooh, ooh, ooh");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Sing to me");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Now everybody knows that you're from outer space (outer space)");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: But Honey, I just want to turn out this space with you (you, you, you, you)");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: So drive me to your galaxy where I could play, yeah (that milky way)");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: And sugar I'll take my time");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: And show you the backseat view, view, if it's cool, cool");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Now break it down");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Hey...");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: This is the part");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Where you and me and all of the stars collide tonight");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: This is the part");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: We take off");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: And then we fly far away, far away, far away");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Baby, can't you see all the stars?");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: They shine, they shine");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Just for you");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: I said oh, yeah, yeah");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Just hop into my spaceship coupe");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: I saved a seat for you");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Right here next to me");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: I'm going to take you to the moon");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: And I'm going to make you say");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Ooh, ooh, ooh, ooh, ooh");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Ooh, ooh, ooh, ooh, ooh");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: I love it when I hear you say");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Ooh, ooh, ooh, ooh, ooh");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Ooh, ooh, ooh, ooh, ooh");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: And you love it when I make you say");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Ooh, ooh, ooh, ooh, ooh");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Ooh, ooh, ooh, ooh, ooh");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Baby this is the part");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Where you and me and all of the stars collide tonight");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: This is the part");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: Where we take off");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." $data: And then we fly far away, far away, far away");
    } else {
      Irssi::print("Nick not given, and no active channel/query in window");
    }
  }

  Irssi::command_bind('serenade', 'cmd_serenade');


sub cmd_serenade2 {
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
	$witem->command("MSG ".$witem->{name}." $data: There is a game of love");
	sleep 1;
	$witem->command("MSG ".$witem->{name}." $data: There is a game of love");
	sleep 1;
	$witem->command("MSG ".$witem->{name}." $data: This is a game of love");
	sleep 1;
	$witem->command("MSG ".$witem->{name}." $data: This is a game of love");
	sleep 1;
	$witem->command("MSG ".$witem->{name}." $data: And it was you");
	sleep 1;
	$witem->command("MSG ".$witem->{name}." $data: And it was you the one that would be breaking my heart");
	sleep 1;
	$witem->command("MSG ".$witem->{name}." $data: When you decided to walk away");
	sleep 1;
	$witem->command("MSG ".$witem->{name}." $data: When you decided to walk away");
	sleep 1;
	$witem->command("MSG ".$witem->{name}." $data: The one that would be breaking my heart");
	sleep 1;
	$witem->command("MSG ".$witem->{name}." $data: When you decided to walk away");
	sleep 1;
	$witem->command("MSG ".$witem->{name}." $data: When you decided to walk away");
	sleep 1;
	$witem->command("MSG ".$witem->{name}." $data: There is a game of love");
	sleep 1;
	$witem->command("MSG ".$witem->{name}." $data: There is a game of love");
	sleep 1;
	$witem->command("MSG ".$witem->{name}." $data: This is a game of love");
	sleep 1;
	$witem->command("MSG ".$witem->{name}." $data: This is a game of love");
	sleep 1;
	$witem->command("MSG ".$witem->{name}." $data: And it was you");
	sleep 1;
	$witem->command("MSG ".$witem->{name}." $data: And it was you the one that would be breaking my heart");
	sleep 1;
	$witem->command("MSG ".$witem->{name}." $data: When you decided to walk away");
	sleep 1;
	$witem->command("MSG ".$witem->{name}." $data: When I wanted you to stay");
	sleep 1;
	$witem->command("MSG ".$witem->{name}." $data: And it was you");
	sleep 1;
	$witem->command("MSG ".$witem->{name}." $data: I just wanted you to stay");
	sleep 1;
	$witem->command("MSG ".$witem->{name}." $data: Me, I just wanted you to stay");
	sleep 1;
	$witem->command("MSG ".$witem->{name}." $data: Me, I just wanted you to stay");
    } else {
	Irssi::print("Nick not given, and no active channel/query in window");
    }
}

Irssi::command_bind('serenade2', 'cmd_serenade2');
