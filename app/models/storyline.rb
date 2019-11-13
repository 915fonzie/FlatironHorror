class Storyline < ApplicationRecord
    belongs_to :campaign

    def render_option_1
        Storyline.find(id: self.option_1_id)
    end

    def render_option_2
        Storyline.find(id: self.option_2_id)
    end
end
