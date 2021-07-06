from main import square


def test_square():
    assert square(2) == 4
    assert square(4) == 16
    assert square(0) == 0
    assert square(-1) == 1
