from django.shortcuts import render
import requests
from bs4 import BeautifulSoup


# Create your views here.

def newView(request):
    link_list = []
    img_list = []
    title_list = []
    url = "https://news.tvbs.com.tw/realtime"

    header = {
        "User-Agent": "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36"}
    data = requests.get(url, headers=header).text
    soup = BeautifulSoup(data, 'html.parser')

    newslist = soup.find('div', class_="news_list")
    list_news = newslist.find('div', class_="list")
    news = list_news.find_all('li')
    print(news)
    for article in news:
        a = article.find('a')
        if not (a == None):
            link = "https://news.tvbs.com.tw" + a.get('href')
            link_list.append(link)

            img = a.find('img').get('data-original')
            img_list.append(img)

            title = a.find('h2').text
            title_list.append(title)


    all_info = zip(link_list, img_list, title_list)

    return render(request, 'blog-crawler.html', locals())
