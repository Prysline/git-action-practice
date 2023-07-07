import  requests

def test_home():
    response = requests.get('http://127.0.0.1:5001?a=2&b=1')
    assert response.status_code == 200