class ResumeController < PublicController

  def show
    @experiences = Experience.all
    respond_to do |format|
      format.html
      format.pdf do
        render pdf: "resume",
        type: 'application/pdf',
        page_size: 'Letter',
        template: "resume/show",
        layout: "pdf"
      end
    end
  end
end
