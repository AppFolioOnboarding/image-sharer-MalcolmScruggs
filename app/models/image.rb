class Image < ApplicationRecord
  validates :url,
            presence: true,
            format: { with: /\A(http(s?):)([\/|.|\w|\s|-])*\.(?:jpg|gif|png)\z/i,
                      messsage: 'Invalid image url'}
end
