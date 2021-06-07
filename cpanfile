# This file is generated by Dist::Zilla::Plugin::CPANFile v6.017
# Do not edit this file directly. To change prereqs, edit the `dist.ini` file.

requires "Dist::Zilla" => "6.005";
requires "Dist::Zilla::Plugin::Bootstrap::lib" => "1.001002";
requires "Dist::Zilla::Plugin::BumpVersionAfterRelease" => "0";
requires "Dist::Zilla::Plugin::CopyFilesFromBuild" => "0";
requires "Dist::Zilla::Plugin::EnsureChangesHasContent" => "0";
requires "Dist::Zilla::Plugin::EnsureMinimumPerl" => "0";
requires "Dist::Zilla::Plugin::Git" => "2.046";
requires "Dist::Zilla::Plugin::GitHub" => "0.46";
requires "Dist::Zilla::Plugin::GitHub::RequireGreenBuild" => "0";
requires "Dist::Zilla::Plugin::Prereqs::AuthorDeps" => "0.006";
requires "Dist::Zilla::Plugin::Prereqs::FromCPANfile" => "0.08";
requires "Dist::Zilla::Plugin::PromptIfStale" => "0.057";
requires "Dist::Zilla::Plugin::ReadmeAnyFromPod" => "0.163250";
requires "Dist::Zilla::Plugin::RunExtraTests" => "0.028";
requires "Dist::Zilla::Plugin::StaticInstall" => "0.012";
requires "Dist::Zilla::Plugin::Test::CleanNamespaces" => "0";
requires "Dist::Zilla::Plugin::Test::Compile" => "0";
requires "Dist::Zilla::Plugin::Test::DiagINC" => "0";
requires "Dist::Zilla::Plugin::Test::EOF" => "0.0600";
requires "Dist::Zilla::Plugin::Test::EOL" => "0.19";
requires "Dist::Zilla::Plugin::Test::Kwalitee" => "2.12";
requires "Dist::Zilla::Plugin::Test::MinimumVersion" => "2.000010";
requires "Dist::Zilla::Plugin::Test::NoBreakpoints" => "v0.0.2";
requires "Dist::Zilla::Plugin::Test::NoTabs" => "0.15";
requires "Dist::Zilla::Plugin::Test::PodSpelling" => "2.007005";
requires "Dist::Zilla::Plugin::Test::ReportPrereqs" => "0.027";
requires "Dist::Zilla::Plugin::Test::Synopsis" => "2.000007";
requires "Dist::Zilla::Plugin::Test::UnusedVars" => "2.000007";
requires "Dist::Zilla::PluginBundle::Git::CheckFor" => "0.014";
requires "Dist::Zilla::Role::PluginBundle::Config::Slicer" => "0";
requires "Dist::Zilla::Role::PluginBundle::PluginRemover" => "0";
requires "namespace::autoclean" => "0";
requires "perl" => "5.020";

on 'test' => sub {
  requires "ExtUtils::MakeMaker" => "0";
  requires "File::Spec" => "0";
  requires "File::Temp" => "0";
  requires "IO::Handle" => "0";
  requires "IPC::Open3" => "0";
  requires "Test::DiagINC" => "0.002";
  requires "Test::More" => "0.94";
};

on 'test' => sub {
  recommends "CPAN::Meta" => "2.120900";
};

on 'configure' => sub {
  requires "ExtUtils::MakeMaker" => "0";
};

on 'develop' => sub {
  requires "Test::CPAN::Meta" => "0";
  requires "Test::CleanNamespaces" => "0.15";
  requires "Test::EOF" => "0";
  requires "Test::EOL" => "0";
  requires "Test::Kwalitee" => "1.21";
  requires "Test::MinimumVersion" => "0";
  requires "Test::More" => "0.88";
  requires "Test::NoBreakpoints" => "0.15";
  requires "Test::NoTabs" => "0";
  requires "Test::Pod" => "1.41";
  requires "Test::Spelling" => "0.12";
  requires "Test::Synopsis" => "0";
};
