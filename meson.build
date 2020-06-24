project(
    'modseq',
    ['c', 'vala'],
    version: '0.1.0',
    meson_version: '>= 0.50.0',
    default_options: [
        'warning_level=3',
        'werror=true',
        'optimization=3',
    ],
)

gnome = import('gnome')
i18n = import('i18n')

valac = meson.get_compiler('vala')

vapi_dir = meson.current_source_dir() / 'vapi'

add_project_arguments(['--vapidir', vapi_dir], language: 'vala')
add_project_arguments('-Wno-overlength-strings', language: 'c')

subdir('data')
subdir('po')
subdir('src')

meson.add_install_script('build-aux/meson/postinstall.py')
