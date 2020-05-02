class TitleValidator < ActiveModel::Validator
    def validate(record)
        unless record.title.present? && record.title.match?(/Won't Believe/ || /Secret/ || /Top/ || /Guess/)
            record.errors[:title] << "Title must be clickbait-y"
        end
    end
end
