class Potluck
    attr_reader :date,
                :dishes

    def initialize(date)
        @date = date
        @dishes = []
    end

    def add_dish(dish)
        @dishes << dish
    end

    def get_all_from_category(category)
        @dishes.find_all { |dish| dish.category == category}
    end

    def menu
        menu = Hash.new{|hash,key| hash[key] = []}
        @dishes.each do |dish|
            key_plural = dish.category.to_s + 's'
            menu[key_plural.to_sym] << dish.name
            menu[key_plural.to_sym].sort!
        end
        menu
    end

    def ratio(category)

    end
end