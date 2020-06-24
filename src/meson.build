version_split = meson.project_version().split('.')
MAJOR_VERSION = version_split[0]
MINOR_VERSION = version_split[1]
MICRO_VERSION = version_split[2]

config_data = configuration_data()

config_data.set_quoted(
    'PACKAGE_ICONDIR',
    get_option('prefix') / get_option('datadir') / 'modseq' / 'icons')

config_data.set('MAJOR_VERSION', MAJOR_VERSION)

config_file = configure_file(
    output: 'config.h',
    configuration: config_data)

config_lib = valac.find_library(
    'config',
    dirs: meson.current_source_dir())

config_dep = declare_dependency(
    dependencies: config_lib,
    include_directories: include_directories('.'))

subdir('modseq')
