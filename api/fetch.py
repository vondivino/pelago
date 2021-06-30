import os
from selenium import webdriver
from selenium.webdriver.chrome.options import Options
import model
import json
import io



chromedriver = "/usr/local/bin/chromedriver"
os.environ["webdriver.chrome.driver"] = chromedriver

options = Options()
options.add_argument('--headless')
options.add_argument('--disable-gpu')

# driver = webdriver.Chrome(chromedriver, chrome_options=options)
driver = webdriver.Chrome(chromedriver)


def load_links_from_file():
    with open('api-links.txt', 'r') as file:
        links = [link.rstrip() for link in file.readlines()]
    return links

LINKS = load_links_from_file()

# m = model.Model(title='Hello', category='asdfas', description='asdf')
data = []
try:
    for link in LINKS:
        category_code = link[0:2]
        driver.get(link[2:])
        title = driver.find_element_by_class_name('styles_productName__1H8Ls').text
        category = driver.find_element_by_class_name('styles_productCategory__24K84').text
        description = driver.find_element_by_class_name('styles_productDescription__15tp0').text
        image = driver.find_elements_by_class_name('styles_galleryItem__1WPzA')[0].find_element_by_tag_name('img').get_attribute('src')
        other= driver.find_elements_by_class_name('styles_productCallout__lpVIw')
        highlights= driver.find_elements_by_class_name('styles_richContentListItem__3GVsM')
        expectation= driver.find_element_by_class_name('styles_richContentParagraph__2qZLq').text
        m = model.Model()
        m.get_primary(title=title, category=category, description=description, image=image, category_code=category_code)
        m.get_other_details(other_details=other)
        m.get_highlights(highlights=highlights)
        m.get_expectation(expectation=expectation)
        data.append(m.raw_to_json())

except Exception as e:
    print(e)


try:
    to_unicode = unicode
except NameError:
    to_unicode = str

with io.open('api.json', 'w', encoding='utf8') as file:
    str_ = json.dumps(
        data,
        indent=4, 
        sort_keys=True,
        separators=(',', ': '), 
        ensure_ascii=False,
    )
    file.write(to_unicode(str_))

driver.quit()

