class Size < ApplicationRecord
    has_many :details

    before_create :create_code

    def create_code
        self.code_size = "#{prefix}#{Time.now.to_i.to_s(16)}#{SecureRandom.hex(2)}"
    end

    def prefix
        "SI"
    end
end
