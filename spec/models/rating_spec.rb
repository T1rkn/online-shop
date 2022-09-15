# == Schema Information
#
# Table name: ratings
#
#  id         :bigint           not null, primary key
#  rate       :integer          not null
#  user_id    :bigint
#  device_id  :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'rails_helper'

RSpec.describe Rating, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
