#!/usr/bin/perl -w

sub trim($)
{
    my $string = shift;
    $string =~ s/^\s+//;
    $string =~ s/\s+$//;
    return $string;
}

# Usage: /AUTOZONE
  sub cmd_autozone {
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

      $witem->command("MSG ".$witem->{name}." \002GET IN THE ZONE!");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." \002 \002");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." GGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGG GGGGi                       GGGGGGGGGGGG");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." \0037.;;;;;;;;;;;;;;;; ;;;;; ;;;; ;;; ;; ;  ;  \003G  \0034ttt \003G                       \0034ttttttttt \003G");
      sleep 1;
      $witem->command("MSG ".$witem->{name}."  \0037;;;;;;;;;;;;;;;;;;;;; ;;;;,;;; ;; ;; ; ; \0034itttttt \003G      G     G  G    G\0034;tttttttt \003GG");
      sleep 1;
      $witem->command("MSG ".$witem->{name}."  \0037;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; ;; ;     ;\0034ttttttt         ttt ff    t   ttttttttt     \003G GGGGGGG G    G");
      sleep 1;
      $witem->command("MSG ".$witem->{name}."  \0037;;;;;;;;;;;;;;;;;;;; ;;;; ;;; ;; ;; ; ; \0034ttt  ttt ttt ttt ttttt ttttti\003G    \0034ttttt ttttt \003G \0034ttttt \003G \0034tttt \003G");
      sleep 1;
      $witem->command("MSG ".$witem->{name}."  \0037;;;;;;;;;;;;;;;;;;;;;;;;;;;;;:;; ; ;   \0034tttt tttittt ttt ttttt tttttt \003GGG \0034ttttt tttttt  ttttttt tttttt \003.");
      sleep 1;
      $witem->command("MSG ".$witem->{name}."  \0037;;;;;;;;;;;;; ;;;;; ;;;; ;;; ;; ;  ; ; \0034ttt  ttt ttt ttt,tttttttt ttt \003G  \0034ttttt tttlttt ttttttttttt ttt \003G");
      sleep 1;
      $witem->command("MSG ".$witem->{name}."  \0037;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;. ; ;   \0034tttttttt ttt ttt ttt \003G\0034ttt  ttt  ttttt t ttt ttt ttt ttttttl ttt\003GG");
      sleep 1;
      $witem->command("MSG ".$witem->{name}."  \0037;;;;;;;;;;;; ;;;;; ;;;; ;;; ;; ;  ,   \0034tttttttt ttt ttttttt; ttt ttt  ttttt \003G \0034ttt  tttttttltt.ttttttt \003G");
      sleep 1;
      $witem->command("MSG ".$witem->{name}."  \0037;;;;;;;;;;;;;;;;; ;;;; ;;; ;; ;; ; ; \0034tttttttt ttt ttt ttt ; tti ttt;ttttt    ttt ttt ttt ttt ttt ttt \003G");
      sleep 1;
      $witem->command("MSG ".$witem->{name}."  \0037;;;;;;;;;;;;;;;;;;;;;;;;;; ;; ;     \0034tttt ;ttt ttttttt tttt ttttttt ttttttttt tttttt ttt ttt itttttt \003G,");
      sleep 1;
      $witem->command("MSG ".$witem->{name}."  \0037;;;;;;;;;;;;;;;; ;;;; ;;; ;; ;; ; ; \0034ttt  ttt  tttttt  tttt  ttttt ttttttttt  tttttt ttt ttt  ttttt \003GG");
      sleep 1;
      $witem->command("MSG ".$witem->{name}."                                              \0034i\003G \0034ltt  \003GG    G  \0034tt;            \003G \0034ttt          \003G\0034i tti \003GG");
      sleep 1;
      $witem->command("MSG ".$witem->{name}." GGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGG GGGGGGG GGGGG GGGGGGGGGGGGGGGG.GGGGGGGGGGGGGGG GGGGGG");
      sleep 1;

    } else {
      Irssi::print("Nick not given, and no active channel/query in window");
    }
  }

  Irssi::command_bind('autozone', 'cmd_autozone');
