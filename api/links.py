import os
from selenium import webdriver
from selenium.webdriver.chrome.options import Options


chromedriver = "/usr/local/bin/chromedriver"
os.environ["webdriver.chrome.driver"] = chromedriver

# options = Options()
# options.add_argument('--headless')
# options.add_argument('--disable-gpu')

# driver = webdriver.Chrome(chromedriver, chrome_options=options)
driver = webdriver.Chrome(chromedriver)



def generate_attractions_webpage(num):
    url= f'AThttps://www.pelago.co/en-sg/city/singapore-activities/?page={num}&subcategories=subcat_landmarks%2Csubcat_theme_parks%2Csubcat_zoos_safaris_aquariums%2Csubcat_museums_galleries&bucket=attractions'
    return url

def generate_staycations_webpage(num):
    url= f'SThttps://www.pelago.co/en-sg/city/singapore-activities/?page={num}&subcategories=subcat_staycation&bucket=staycations'
    return url

def generate_adventures_webpage(num):
    url= f'ADhttps://www.pelago.co/en-sg/city/singapore-activities/?page={num}&subcategories=subcat_sports_adventure_land_sky%2Csubcat_water_activities%2Csubcat_cruises%2Csubcat_nature_wildlife&bucket=adventures'
    return url

def generate_foods_webpage(num):
    url= f'FDhttps://www.pelago.co/en-sg/city/singapore-activities/?page={num}&subcategories=subcat_food_drink_tour%2Csubcat_food_drink&bucket=food_and_drinks'
    return url

def generate_gems_webpage(num):
    url= f'GEhttps://www.pelago.co/en-sg/city/singapore-activities/?page={num}&characteristicTags=tag_hidden_gem&bucket=hidden_gems'
    return url

def generate_culture_webpage(num):
    url= f'CUhttps://www.pelago.co/en-sg/city/singapore-activities/?page={num}&subcategories=subcat_art_culture_history%2Csubcat_art_culture_history_tour&bucket=art_and_culture'
    return url


def generate_all_wepages():
    ATTRACTIONS = [generate_attractions_webpage(page) for page in list(range(1,5))]
    STAYCATIONS = [generate_staycations_webpage(page) for page in list(range(1,3))]
    ADVENTURES = [generate_adventures_webpage(page) for page in list(range(1,5))]
    FOODS = [generate_foods_webpage(page) for page in list(range(1,5))]
    GEMS = [generate_gems_webpage(page) for page in list(range(1,4))]
    CULTURE = [generate_culture_webpage(page) for page in list(range(1,6))]
    return ATTRACTIONS + STAYCATIONS + ADVENTURES + FOODS + GEMS + CULTURE


def generate_all_links():
    returned_links = []
    for webpage in generate_all_wepages():
        category_code = webpage[0:2]
        driver.get(webpage[2:])
        driver.implicitly_wait(5)
        links = driver.find_elements_by_class_name('s_link__HVNls')
        returned_links.extend([f"{category_code}{link.get_attribute('href')}" for link in links])
    # driver.close()
    return returned_links

def save_to_file():
    with open('api-links.txt', 'w') as file:
        for link in generate_all_links():
            file.write('%s\n' % link)
        driver.quit()

save_to_file()





