local ts_repeatable_move = require('nvim-treesitter.textobjects.repeatable_move')

local M = {}

--- Repeat the last last demicolon jump forward
function M.forward()
  return ts_repeatable_move.repeat_last_move_next()
end

--- Repeat the last last demicolon jump backward
function M.backward()
  return ts_repeatable_move.repeat_last_move_previous()
end

--- Like `repeat_jump_forward`, but repeats based on the direction of the original jump.
function M.next()
  return ts_repeatable_move.repeat_last_move()
end

function M.prev()
  return ts_repeatable_move.repeat_last_move_opposite()
end

return M
