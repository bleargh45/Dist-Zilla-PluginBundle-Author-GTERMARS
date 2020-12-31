# NAME

Dist::Zilla::PluginBundle::Author::GTERMARS - Plugin Bundle for distributions built by GTERMARS

# SYNOPSIS

In your `dist.ini`:

```
[@Author::GTERMARS]
```

# DESCRIPTION

This is the `Dist::Zilla` plugin bundle that GTERMARS uses to build his
distributions.

It is _roughly_ equivalent to the following:

```perl
; ==============================================================================
; Ensure we're using the correct Author Bundle
[PromptIfStale / Stale author bundle]
phase = build
module = Dist::Zilla::PluginBundle::Author::GTERMARS

; ==============================================================================
; Gather up all the files we need in our distribution
[GatherDir]
exclude_filename = dist.ini
[ExecDir]
[ShareDir]
[PruneCruft]

; ==============================================================================
; Auto-generate files as needed...
; ... Makefile.PL
[MakeMaker]
; ... MANIFEST
[Manifest]
; ... LICENSE
[License]
; ... README file(s)
[ReadmeAnyFromPod / ReadmeGfmInRoot]
[ReadmeAnyFromPod / ReadmeInDist]
; ... Dependencies
[Prereqs::FromCPANfile]
[Prereqs::AuthorDeps]
; ... META
[MetaYAML]
[MetaJSON]
[MetaNoIndex]
directory = examples
directory = inc
directory = local
directory = share
directory = t
directory = xt
; ... Tests
[MetaTests]
[Test::ReportPrereqs]
verify_prereqs = 1
[Test::NoTabs]
[Test::EOL]
[Test::EOF]
[Test::MinimumVersion]
[Test::Synopsis]
[PodSyntaxTests]
[PodCoverageTests]
[Test::PodSpelling]
[Test::NoBreakpoints]
[Test::CleanNamespaces]
[Test::DiagINC]
[Test::UnusedVars]
[Test::Kwalitee]
[Test::Compile]
xt_mode = 1
fake_home = 1
filename = xt/author/compile.t
fail_on_warning = author
bail_out_on_fail = 1

; ==============================================================================
; Additional Metadata
[GitHub::Meta]
[StaticInstall]
mode = auto

; ==============================================================================
; Munge existing files
[ExtraTests]
[NextRelease]
[RewriteVersion]

; ==============================================================================
; Release

; ... before release
[PromptIfStale / Stale modules, release]
phase = release
check_all_plugins = 1
check_all_prereqs = 1
skip = ExtUtils::MakeMaker
[Git::CheckFor::MergeConflicts]
[Git::CheckFor::CorrectBranch]
[EnsureChangesHasContent]
[Git::Check / initial check]
[TestRelease]
[Git::Check / after tests]

; ... do the release (unless "fake_release" is set)
[ConfirmRelease]
[UploadToCPAN]
[GitHub::Update]

; ... after release; commit Changes and Tag release
[Git::Commit / Commit Changes]
commit_msg = Release v%V
[Git::Tag]

; ... after release; save Release artifacts
[Git::CommitBuild]
branch =
release_branch = releases
release_message = Release - v%v

; ... after release; bump Version for next release
[BumpVersionAfterRelease]
[Git::Commit / Commit Version Bump]
allow_dirty_match = ^lib/
commit_msg = Version bump.
```

# CUSTOMIZATION

## Our Configuration Options

- fake\_release

    A boolean option, which when set, removes `[ConfirmRelease]`,
    `[UploadToCPAN]`, and `[GitHub::Update]`, replacing them with
    `[FakeRelease]`.

    Defaults to false, and can also be set with the `FAKE_RELEASE=1` environment
    variable.

## POD Coverage

Subroutines can be considered "covered" for POD Coverage checks, by adding a
directive to the POD itself, as described in [Pod::CoverageTrustPod](https://metacpan.org/pod/Pod%3A%3ACoverageTrustPod):

```
=for Pod::Coverage foo bar baz
```

## POD Spelling

Stopwords for POD Spelling checks can be added by adding a directive to the POD
itself, as described in [Pod::Spell](https://metacpan.org/pod/Pod%3A%3ASpell):

```
=for stopwords foo bar baz
```

## Providing Plugin Configuration

This plugin bundle uses `Dist::Zilla::Role::PluginBundle::Config::Slicer`,
which allows you to provide plugin-specific configuration like this:

```
[@Author::GTERMARS]
GatherDir.exclude_filename = cpanfile
```

## Removing Plugins

This plugin bundle uses `Dist::Zilla::Role::PluginBundle::Remover`, allowing
you to remove specific plugins like this:

```
[@Author::GTERMARS]
-remove = GitHub::Meta
-remove = ExtraTests
```

# AUTHOR

Graham TerMarsch (cpan@howlingfrog.com)

# COPYRIGHT

Copyright (C) 2020-, Graham TerMarsch.  All Rights Reserved.

This is free software; you can redistribute it and/or modify it under the same
license as Perl itself.

# SEE ALSO

- [Dist::Zilla](https://metacpan.org/pod/Dist%3A%3AZilla)
