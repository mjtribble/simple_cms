class AddIndex < ActiveRecord::Migration[5.1]
  def change
    add_index("pages", "subject_id") # add on all foreign keys and anything used often
    add_index("pages", "permalink") # add on all foreign keys and anything used often
    add_index("sections", "page_id") # add on all foreign keys and anything used often
  end
end
