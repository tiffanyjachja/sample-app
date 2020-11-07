from app import app


class TestClass:
    def test_app_one(self):
        response = app.test_client().get('/')
        assert response.status_code == 200

    def test_app_two(self):
        response = app.test_client().get('/')
        json_response = response.get_json()
        assert json_response["message"] == "Automate all the things!"
