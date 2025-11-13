import pytest
from app.main import now

def test_now():
    time_str = now()
    assert "T" in time_str  # Simple check to see if it's in ISO format

if __name__ == "__main__":
    test_now()
    print("All tests passed.") 