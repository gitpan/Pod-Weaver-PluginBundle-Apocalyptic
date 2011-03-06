
use strict;
use warnings;

BEGIN { require 5.006; }

use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'Let the apocalypse generate your POD!',
  'AUTHOR' => 'Apocalypse <APOCAL@cpan.org>',
  'BUILD_REQUIRES' => {
    'File::Find' => '0',
    'File::Temp' => '0',
    'ExtUtils::MakeMaker' => '6.31',
    'Test::More' => '0.88'
  },
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.31'
  },
  'DISTNAME' => 'Pod-Weaver-PluginBundle-Apocalyptic',
  'EXE_FILES' => [],
  'LICENSE' => 'perl',
  'NAME' => 'Pod::Weaver::PluginBundle::Apocalyptic',
  'PREREQ_PM' => {
    'Pod::Elemental::Transformer::List' => '0.101620',
    'Pod::Weaver::Config::Assembler' => '3.101632',
    'Pod::Weaver::Plugin::Encoding' => '0.01',
    'Pod::Weaver::Plugin::EnsureUniqueSections' => '0.103531',
    'Pod::Weaver::Plugin::StopWords' => '1.001005',
    'Pod::Weaver::Section::SeeAlso' => '1.002',
    'Pod::Weaver::Section::Support' => '1.003',
    'Pod::Weaver::Section::WarrantyDisclaimer' => '0.103511'
  },
  'VERSION' => '0.002',
  'test' => {
    'TESTS' => 't/*.t'
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



