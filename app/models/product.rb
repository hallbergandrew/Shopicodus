class Product < ActiveRecord::Base
  validates :name, :presence => true

  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png",
                    :storage => :s3,
                    :s3_permissions => :private,
                    :s3_credentials => Proc.new{|a| a.instance.s3_credentials }

  def s3_credentials
    {:bucket => "shopepicodus", :access_key_id => "iiii", :secret_access_key => "iiii", :s3_endpoint => 'shopepicodus.s3-website-us-west-2.amazonaws.com'}
  end

  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
