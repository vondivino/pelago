
class Model:

    # def __init__(self, title, category, description, image):
    #     self.title = title
    #     self.category = category
    #     self.description = description
    #     self.image = image 

    def __repr__(self) -> str:
        return f"""
        Title: {self.title}
        Category: {self.category}
        Category Code: {self.category_code}
        Description: {self.description}
        Image URL: {self.image}
        Other: {self.other_details}
        Highlights: {self.highlights}
        Expectation: {self.expectation}
        \n
        """

    def get_primary(self, title, category, description, image, category_code):
        self.category_code = category_code
        self.title = title
        self.category = category
        self.description = description
        self.image = image 

    def get_other_details(self, other_details):
        _other_details = []
        for detail in other_details:
            _other_details.append(detail.text)
        self.other_details = _other_details
        


    def get_highlights(self, highlights):
        items = []
        for item in highlights:
            items.append(item.text)
        self.highlights = items

    def get_expectation(self, expectation):
        self.expectation = expectation

    def raw_to_json(self):
        data = {}
        data['title'] = self.title
        data['image'] = self.image
        data['category'] = self.category
        data['category_code'] = self.category_code
        data['description'] = self.description  
        data['other'] = self.other_details
        data['highlights'] = self.highlights
        data['expectation'] = self.expectation
        return data
