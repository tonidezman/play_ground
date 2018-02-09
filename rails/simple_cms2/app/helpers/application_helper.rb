module ApplicationHelper

    def display_flash(css_class, msg)
        if css_class == "notice"
            css = "bg-success"
        elsif css_class == "error"
            css = "bg-danger"
        end
        "<p class='#{css}'>#{msg}</p>"
    end
end
