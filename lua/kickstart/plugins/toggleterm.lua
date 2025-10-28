return {
  'akinsho/toggleterm.nvim',
  version = '*',
  opts = {
    --[[ things you want to change go here]]
    -- size can be a number or function which is passed the current terminal
    size = function(term)
      if term.direction == 'horizontal' then
        return 15
      elseif term.direction == 'vertical' then
        return vim.o.columns * 0.3
      end
    end,
    open_mapping = [[<C-\>]], -- or { [[<c-\>]], [[<c-¥>]] } if you also use a Japanese keyboard.
    direction = 'vertical',
  },
}
