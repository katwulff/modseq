modseq_sources = [
    resources,
    'app.vala',
    'main.vala',
    'ui/sequencer-row.vala',
    'ui/window.vala',
]

modseq_deps = [
    dependency('gio-2.0', version: '>= 2.50'),
    dependency('gtk+-3.0', version: '>= 3.22'),
    dependency('sndfile'),
    config_dep,
]

modseq = executable(
    'modseq',
    modseq_sources,
    vala_args: '--target-glib=2.50',
    dependencies: modseq_deps,
    install: true,
)
