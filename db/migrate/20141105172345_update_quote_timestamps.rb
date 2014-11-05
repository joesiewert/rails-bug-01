class UpdateQuoteTimestamps < ActiveRecord::Migration
  def up
    Quote.find_each do |quote|
      if quote.created_at.nil?
        quote.created_at = DateTime.now
      end

      if quote.updated_at.nil?
        quote.updated_at = DateTime.now
      end
      quote.save!
    end
  end
end
