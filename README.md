# Arduino status for lualine

Display the arduino state in your status line. Following is the info displayed in the status line.

- **g:arduino_board** - the currently selected board
- **g:arduino_programmer** - the currently selected programmer
- **g:arduino_serial_baud** - the baud rate that will be used for Serial commands
- **arduino#GetPort()** - returns the port that will be used for communication

## Screenshot

![screenshot](https://github.com/PrajvalBadiger/lualine-arduino-status/assets/47316750/4fc0e72d-c385-43dc-a7e7-d674a796ce01)

## Requirements

- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [vim-arduino](https://github.com/stevearc/vim-arduino)

## Installation

Using packer.nvim

```lua
    use {'PrajvalBadiger/lualine-arduino-status'}
```

## Usage

In your lualine config under sections, you can add `lualine_x = {'arduino_status'},`

```lua
sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'branch', 'diff', 'diagnostics' },
    lualine_c = { 'filename' },
    lualine_x = {'arduino_status'},
    lualine_y = { 'filetype' },
    lualine_z = { 'progress' }
},

```
