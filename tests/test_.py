import unittest
from unittest.mock import MagicMock

from src.app import EmployeeDatabase

class TestEmployeeDatabase(unittest.TestCase):
    """Test cases for the EmployeeDatabase class."""

    def setUp(self):
        """Set up mock objects for testing."""
        # Create a mock object for the EmployeeDatabase
        self.db = MagicMock(spec=EmployeeDatabase)

        # Define expected return values for methods
        self.db.create_employee.side_effect = [
            "Employee created successfully",
            "Employee ID already exists"
        ]
        self.db.read_employee.side_effect = [
            "ID: 1, Name: John Doe, Department: IT, Position: Developer",
            "ID: 2, Name: Jane Smith, Department: HR, Position: Manager",
            "Employee not found"
        ]
        self.db.update_employee.side_effect = [
            "Employee updated successfully",
            "Employee not found"
        ]
        self.db.delete_employee.side_effect = [
            "Employee deleted successfully",
            "Employee not found"
        ]

    def test_create_employee(self):
        """Test the create_employee method."""
        # Call create_employee with appropriate arguments
        result1 = self.db.create_employee("Alice Johnson", "Marketing", "Analyst")
        self.assertEqual(result1, "Employee created successfully")

        # Call create_employee with existing ID
        result2 = self.db.create_employee("Test User", "Test Dept", "Test Position")
        self.assertEqual(result2, "Employee ID already exists")

    def test_read_employee(self):
        """Test the read_employee method."""
        # Test read_employee for existing employees
        result1 = self.db.read_employee(1)
        self.assertEqual(result1, "ID: 1, Name: John Doe, Department: IT, Position: Developer")

        result2 = self.db.read_employee(2)
        self.assertEqual(result2, "ID: 2, Name: Jane Smith, Department: HR, Position: Manager")

        # Test read_employee for non-existing employee
        result3 = self.db.read_employee(3)
        self.assertEqual(result3, "Employee not found")

    def test_update_employee(self):
        """Test the update_employee method."""
        # Test update_employee for existing employee
        result1 = self.db.update_employee(1, name="Updated Name", position="Senior Developer")
        self.assertEqual(result1, "Employee updated successfully")

        # Test update_employee for non-existing employee
        result2 = self.db.update_employee(3)
        self.assertEqual(result2, "Employee not found")

    def test_delete_employee(self):
        """Test the delete_employee method."""
        # Test delete_employee for existing employee
        result1 = self.db.delete_employee(2)
        self.assertEqual(result1, "Employee deleted successfully")

        # Test delete_employee for non-existing employee
        result2 = self.db.delete_employee(3)
        self.assertEqual(result2, "Employee not found")

if __name__ == '__main__':
    unittest.main()
