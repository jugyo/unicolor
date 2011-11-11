require "unicolor/version"

module Unicolor
  class << self
    def theme(name = nil)
      name ? @theme = name : @theme
    end

    def themes
      @themes ||= {}
    end

    def define_theme(name, colors)
      themes[name] = colors
    end

    def colors
      themes[theme]
    end

    def colorize(str)
      "\e[#{color_for(str)}m#{str}\e[0m"
    end

    def color_for(str)
      result = colors[str.to_i(36) % colors.size]
      result = [result].flatten
      result.join(';')
    end
  end


  def unicolor
    Unicolor.colorize(self.to_s)
  end
  alias_method :uc, :unicolor
end

Object.send(:include, Unicolor)

Unicolor.define_theme :fg, (31..36).to_a + (91..96).to_a
Unicolor.define_theme :bg, (41..46).to_a + (101..106).to_a
Unicolor.define_theme :fg256, (1..255).map{|i| [38, 5, i]}
Unicolor.define_theme :bg256, (1..255).map{|i| [48, 5, i]}

Unicolor.theme :fg
