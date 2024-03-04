-------------------------------------------------
-- DT'S NEOVIM CONFIGURATION
-- Neovim website: https://neovim.io/
-- DT's dotfiles: https://gitlab.com/dwt1/dotfiles
-------------------------------------------------

local status, orgmode = pcall(require, "orgmode")
if not status then
    return
end

orgmode.setup({
    org_agenda_files = {
        '~/kDrive/Org/todo.org',
        '~/kDrive/Org/notes.org',
        '~/kDrive/Org/journal.org',
        '~/kDrive/Org/calendar.org',
        '~/kDrive/Org/archive.org',
        '~/kDrive/Org/attività.org',
    },
    org_default_notes_file = "~/kDrive/Org/notes.org",
    org_todo_keywords = {'TODO', 'WAITING', '|', 'DONE', 'DELEGATED'},
    org_todo_keyword_faces = {
        WAITING = ':foreground yellow :weight bold',
        DELEGATED = ':background #FFFFFF :slant italic :underline on',
        TODO = ':background #000000 :foreground red', -- overrides builtin color for `TODO` keyword
    },
    org_capture_templates = { 
        t = {
            description = 'Todo',
            template = '* TODO %?\n %u ',
            target = '~/kDrive/Org/todo.org',
            properties={
                empty_lines = {
                    before = 1,
                    after = 1,
                    properties={
                        empty_lines = {
                            before = 1,
                            after = 1,
                        },
                    },
                },
            },
        }, 
        n = {
            description = 'notes',
            template = '* %? \t:%^{Tags|DEFAULT|COMPLETION|PIPPO|PLUTO}:\n %u',
            target = '~/kDrive/Org/notes.org',
            tag = '',
            properties={
                empty_lines = {
                    before = 1,
                    after = 1,
                    properties={
                        empty_lines = {
                            before = 1,
                            after = 1,
                        },
                    },
                },
            },
        }, 
        j = {
            description = 'Journal',
            template = '\n*** %<%Y-%m-%d> %<%A>\n**** %U\n\n%?',
            target = '~/kDrive/Org/journal.org',
            properties={
                empty_lines = {
                    before = 1,
                    after = 1,
                },
            },
        },
        p = {
            description = 'Attività',
            subtemplates = {
                p = {
                    description = 'progetto',
                    template = '** %?\n %T',
                        target = '~/kDrive/Org/attività.org',
                    headline = 'Progetti',
                    properties={
                        empty_lines = {
                            before = 1,
                            after = 1,
                        },
                    },
                },
                i = {
                    description = 'idea',
                    template = '** %?\n %T',
                    target = '~/kDrive/Org/attività.org',
                    headline = 'Idee',
                    properties={
                        empty_lines = {
                            before = 1,
                            after = 1,
                        },
                    },
                },
            },
        },
        e = {
            description = 'Event',
            subtemplates = {
                r = {
                    description = 'recurring',
                    template = '** %?\n %T',
                        target = '~/kDrive/Org/calendar.org',
                    headline = 'recurring',
                    properties={
                        empty_lines = {
                            before = 1,
                            after = 1,
                        },
                    },
                },
                o = {
                    description = 'one-time',
                    template = '** %?\n %T',
                    target = '~/kDrive/Org/calendar.org',
                    headline = 'one-time',
                    properties={
                        empty_lines = {
                            before = 1,
                            after = 1,
                        },
                    },
                },
            },
        },
    },
    org_agenda_span = 14,
    calendar_week_start_day = 1,
    org_tags_column = 40,
    org_agenda_skip_scheduled_if_done = true,
    org_agenda_skip_deadline_if_done = true,
})

orgmode.setup_ts_grammar()

