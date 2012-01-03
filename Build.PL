
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "File::Find" => 0,
    "File::Temp" => 0,
    "Module::Build" => "0.3601",
    "Test::More" => "0.88"
  },
  "configure_requires" => {
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Let the apocalypse generate your POD!",
  "dist_author" => [
    "Apocalypse <APOCAL\@cpan.org>"
  ],
  "dist_name" => "Pod-Weaver-PluginBundle-Apocalyptic",
  "dist_version" => "0.003",
  "license" => "perl",
  "module_name" => "Pod::Weaver::PluginBundle::Apocalyptic",
  "recommends" => {},
  "recursive_test_files" => 1,
  "requires" => {
    "Pod::Elemental::Transformer::List" => "0.101620",
    "Pod::Weaver::Config::Assembler" => "3.101634",
    "Pod::Weaver::Plugin::Encoding" => "0.01",
    "Pod::Weaver::Plugin::EnsureUniqueSections" => "0.103531",
    "Pod::Weaver::Plugin::StopWords" => "1.001005",
    "Pod::Weaver::Section::SeeAlso" => "1.002",
    "Pod::Weaver::Section::Support" => "1.003",
    "Pod::Weaver::Section::WarrantyDisclaimer" => "0.111290",
    "perl" => "5.006",
    "strict" => 0,
    "warnings" => 0
  },
  "script_files" => []
);


my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
