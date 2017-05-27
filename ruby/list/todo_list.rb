class TodoList

    def initialize(array)
        @items = array
    end

    def get_items
        @items
    end

    def add_item(string)
        @items << string
    end

    def delete_item(string)
        @items.delete(string)
    end

    def get_item(index)
        @items[index]
    end

end
