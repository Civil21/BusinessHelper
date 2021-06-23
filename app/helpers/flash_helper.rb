module FlashHelper
  def current_flash(flash_type = :flash_block)
    @current_flash ||= session[flash_type] || []
  end

  def flash_block(text, type = 'success', flash_type = :flash_block)
    session[flash_type] = (current_flash(flash_type) << { type: type, text: text })
  end

  def get_flash
    if current_flash.count > 0
      current_flash.shift
    else
      false
    end
  end
end
