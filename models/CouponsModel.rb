
# inheretance from ActiveRecord which is geting table from pg
class CouponsModel < ActiveRecord::Base
  self.table_name = 'coupons'
end
