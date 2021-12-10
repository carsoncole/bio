class ResumeController < PublicController

  def generate
    format.pdf do
      render pdf: 'Things.pdf',
             locals: { things: @things },
             disposition: 'inline',
             template: 'layouts/application.html.haml',
             show_as_html: true,
             margin: { top: 10,
                       bottom: 10,
                       left: 0,
                       right: 0 }
    end
  end

end
